/*
 *  Copyright 2025 gematik GmbH
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package de.gematik.smartcards.usecases.icc.examples;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
import java.util.stream.IntStream;
import java.util.zip.GZIPInputStream;
import javax.smartcardio.Card;
import javax.smartcardio.CardChannel;
import javax.smartcardio.CardException;
import javax.smartcardio.CardTerminal;
import javax.smartcardio.CardTerminals;
import javax.smartcardio.CommandAPDU;
import javax.smartcardio.ResponseAPDU;
import javax.smartcardio.TerminalFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * This class reads patient data from an eHC.
 *
 * <p>The implementation here uses only functionality from JRE.
 *
 * @author <a href="mailto:smartcards@gematik.de">smartcards / gematik</a>
 */
public final class ReadPatientDataPojo {
  /** Name of action this class provides as an example. */
  public static final String ACTION = "ReadPatientDataPojo"; // */

  /** Logger. */
  private static final Logger LOGGER = LoggerFactory.getLogger(ReadPatientDataPojo.class); // */

  /** Date and time formatter. */
  public static final DateTimeFormatter FORMATTER = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");

  /**
   * Method executing an example.
   *
   * <p>This method performs the following steps:
   *
   * <ol>
   *   <li>connect to the first PC/SC reader with an inserted card
   * </ol>
   */
  public void execute() {
    final String unexpected = "unexpected status word";

    try {
      // --- get a TerminalFactory
      final TerminalFactory terminalFactory = TerminalFactory.getDefault();

      // --- get list of Card Terminals where an ICC is inserted
      final List<CardTerminal> ifds =
          terminalFactory.terminals().list(CardTerminals.State.CARD_PRESENT);

      if (ifds.isEmpty()) {
        LOGGER.atError().log("no smart card reader present where a card is inserted");

        return;
      } // end if
      // ... at least one smart card is present
      //     => use the smart card from the first reader
      final CardTerminal ifd = ifds.getFirst();
      final Card icc = ifd.connect("T=1"); // connect with protocol T=1
      final CardChannel cc = icc.getBasicChannel(); // get a communication channel
      // ... now we can start using functionality from the smart card

      CommandAPDU cmd;
      ResponseAPDU rsp;

      LOGGER.atInfo().log("select DF.HCA");
      // https://gemspec.gematik.de/docs/gemSpec/gemSpec_eGK_ObjSys_G2_1/latest/#5.4
      // (N042.700), https://gemspec.gematik.de/docs/gemSpec/gemSpec_COS/latest/#A_16008
      cmd = new CommandAPDU(0, 0xa4, 4, 0xc, new byte[] {(byte) 0xD2, 0x76, 0, 0, 1, 2});
      rsp = send(cc, cmd);
      if (0x9000 != rsp.getSW()) { // NOPMD literal in conditional statement
        LOGGER.atError().log(unexpected);

        return;
      } // end if

      LOGGER.atInfo().log("read RF.StatusVD");
      // https://gemspec.gematik.de/docs/gemSpec/gemSpec_eGK_ObjSys_G2_1/latest/#5.4.7
      // (N051.500), https://gemspec.gematik.de/docs/gemSpec/gemSpec_COS/latest/#A_16124
      cmd = new CommandAPDU(0, 0xb0, 0x8c, 0, 0x100);
      rsp = send(cc, cmd);
      if (!Set.of(0x9000, 0x6281).contains(rsp.getSW())) {
        LOGGER.atError().log(unexpected);

        return;
      } // end if
      showStatusVd(rsp.getData());

      LOGGER.atInfo().log("read EF.PD");
      // https://gemspec.gematik.de/docs/gemSpec/gemSpec_eGK_ObjSys_G2_1/latest/#5.4.4
      // (N051.500), https://gemspec.gematik.de/docs/gemSpec/gemSpec_COS/latest/#A_16124
      cmd = new CommandAPDU(0, 0xb0, 0x81, 0, 0x10000);
      rsp = send(cc, cmd);
      if (!Set.of(0x9000, 0x6281).contains(rsp.getSW())) {
        LOGGER.atError().log(unexpected);

        return;
      } // end if
      showPd(rsp.getData());

      LOGGER.atInfo().log("read EF.VD");
      // https://gemspec.gematik.de/docs/gemSpec/gemSpec_eGK_ObjSys_G2_1/latest/#5.4.8
      // (N051.500), https://gemspec.gematik.de/docs/gemSpec/gemSpec_COS/latest/#A_16124
      cmd = new CommandAPDU(0, 0xb0, 0x82, 0, 0x10000);
      rsp = send(cc, cmd);
      if (!Set.of(0x9000, 0x6281).contains(rsp.getSW())) {
        LOGGER.atError().log(unexpected);

        return;
      } // end if
      showVd(rsp.getData());
    } catch (CardException | RuntimeException e) { // NOPMD generic exception
      LOGGER.atError().log("UNEXPECTED", e);
    } // end Catch (...)
  } // end method */

  /**
   * Show content of EF.PD.
   *
   * <p>The content is described in <a
   * href="https://gemspec.gematik.de/docs/gemSpec/gemSpec_eGK_Fach_VSDM/latest/#2.4">EF.PD</a>
   *
   * @param data raw content of EF.PD
   */
  /* package */ void showPd(final byte[] data) {
    LOGGER.atInfo().log("EF.PD, raw data: {}", toHexDigits(data));
    final var length = ((data[0] & 0xff) << 8) + (data[1] & 0xff);
    final var gzip = Arrays.copyOfRange(data, 2, 2 + length);
    final var xml = unzip(gzip);

    LOGGER.atInfo().log("EF.PD: LÃ¤nge PD = {}", length);
    LOGGER.atInfo().log("EF.PD: raw gzip = '{}'", toHexDigits(gzip));
    LOGGER.atInfo().log("EF.PD: XML: {}", xml);
  } // end method */

  /**
   * Show content of EF.StatusVD.
   *
   * <p>The content is described in <a
   * href="https://gemspec.gematik.de/docs/gemSpec/gemSpec_eGK_Fach_VSDM/latest/#2.5">EF.PV</a>
   *
   * @param data raw content of EF.StatusVD
   */
  /* package */ void showStatusVd(final byte[] data) {
    LOGGER.atInfo().log("EF.StatusVD, raw data: {}", toHexDigits(data));
    final var status = new String(data, 0, 1, StandardCharsets.US_ASCII);
    final var timeStampRaw = new String(data, 1, 14, StandardCharsets.US_ASCII);
    final var timeStamp = LocalDateTime.parse(timeStampRaw, FORMATTER);
    final var versionXml = extractVersion(data, 15);
    final var versionSpeicherstruktur = extractVersion(data, 20);

    // spotless:off
    final var statusMeaning = switch(status) {
      case "0" -> "keine Transaktion offen";
      case "1" -> "Transaktion offen";
      default -> "ERROR: not (yet) defined";
    }; // end Switch (status)
    // spotless:on

    LOGGER.atInfo().log("EF.StatusVD: Statuts                 =\"{}\"={}", status, statusMeaning);
    LOGGER.atInfo().log("EF.StatusVD: TimeStamp               =\"{}\"={}", timeStampRaw, timeStamp);
    LOGGER.atInfo().log("EF.StatusVD: Version_XML             =\"{}\"", versionXml);
    LOGGER.atInfo().log("EF.StatusVD: Version_Speicherstruktur=\"{}\"", versionSpeicherstruktur);
  } // end method */

  /**
   * Show content of EF.VD.
   *
   * <p>The content is described in <a
   * href="https://gemspec.gematik.de/docs/gemSpec/gemSpec_eGK_Fach_VSDM/latest/#2.2">EF.PV</a>
   *
   * @param data raw content of EF.VD
   */
  /* package */ void showVd(final byte[] data) {
    LOGGER.atInfo().log("EF.VD, raw data: {}", toHexDigits(data));
    final var buffer = ByteBuffer.wrap(data);
    final var offsetStartVd = buffer.getShort() & 0xffff;
    final var offsetEndVd = buffer.getShort() & 0xffff;
    final var offsetStartGvd = buffer.getShort() & 0xffff;
    final var offsetEndGvd = buffer.getShort() & 0xffff;
    final var gzipVd = Arrays.copyOfRange(data, offsetStartVd, offsetEndVd + 1);
    final var gzipGvd = Arrays.copyOfRange(data, offsetStartGvd, offsetEndGvd + 1);
    final var xmlVd = unzip(gzipVd);
    final var xmlGvd = unzip(gzipGvd);

    LOGGER.atInfo().log("EF.VD: Offset Start VD  ={}", String.format("%4d", offsetStartVd));
    LOGGER.atInfo().log("EF.VD: Offset Ende  VD  ={}", String.format("%4d", offsetEndVd));
    LOGGER.atInfo().log("EF.VD: Offset Start GVD ={}", String.format("%4d", offsetStartGvd));
    LOGGER.atInfo().log("EF.VD: Offset Ende  GVD ={}", String.format("%4d", offsetEndGvd));
    LOGGER.atInfo().log("EF.VD: raw gzip VD : '{}'", toHexDigits(gzipVd));
    LOGGER.atInfo().log("EF.VD: raw gzip GVD: '{}'", toHexDigits(gzipGvd));
    LOGGER.atInfo().log("EF.VD: VD-XML : {}", xmlVd);
    LOGGER.atInfo().log("EF.VD: GVD-XML: {}", xmlGvd);
  } // end method */

  /**
   * Extract a five octet BCD encoded version number, XXXYYYZZZ.
   *
   * @param data from which the version number is extracted
   * @param offset to the first octet of the version number
   * @return array with three numbers
   */
  /* package */ String extractVersion(final byte[] data, final int offset) {
    final var raw = toHexDigits(Arrays.copyOfRange(data, offset, offset + 5));
    final var major = Integer.parseInt(raw.substring(0, 3));
    final var minor = Integer.parseInt(raw.substring(3, 6));
    final var patch = Integer.parseInt(raw.substring(6));

    return String.format("%d.%d.%d", major, minor, patch);
  } // end method */

  /**
   * Method responsible for sending and receiving APDU.
   *
   * @param cc communication channel
   * @param cmd command to be sent
   * @return corresponding response APDU
   * @throws CardException if the card operation failed
   */
  /* package */ static ResponseAPDU send(final CardChannel cc, final CommandAPDU cmd)
      throws CardException {
    LOGGER.atDebug().log(
        "cmd, '{}': {} {} {}{}{}{}",
        toHexDigits(cmd.getBytes()),
        String.format("CLA=%02x", cmd.getCLA()),
        String.format("INS=%02x", cmd.getINS()),
        String.format("P1=%02x", cmd.getP1()),
        String.format("P2=%02x", cmd.getP2()),
        (0 == cmd.getNc()) ? "" : " Data=" + toHexDigits(cmd.getData()),
        " Ne=" + (0 == cmd.getNe() ? "absent" : Integer.toString(cmd.getNe())));

    final ResponseAPDU result = cc.transmit(cmd);

    LOGGER.atDebug().log(
        "rsp: {} {}",
        "Data=" + ((0 == result.getNr()) ? "absent" : "'" + toHexDigits(result.getData()) + "'"),
        String.format("SW='%04x'", result.getSW()));

    return result;
  } // end method */

  /**
   * This function takes (part of) a byte-array and converts it to a string of hex-digits.
   *
   * <p>Each relevant byte in the array is converted to two characters containing the high- and low
   * nibble of the byte.
   *
   * <p><b>Notes:</b>
   *
   * <ol>
   *   <li>This method is NOT thread-safe, because the input array might change after calling this
   *       method.
   *   <li>Object sharing is not a problem here, because the input parameters are only read or
   *       primitive and otherwise not used and the return value is immutable.
   * </ol>
   *
   * @param input byte-array to be converted
   * @return {@link String} containing lower-case hex-digits (i.e.: 0..9, a..f)
   * @throws ArrayIndexOutOfBoundsException if offset and/or length are such that elements outside
   *     input-array are addressed
   */
  /* package */ static String toHexDigits(final byte[] input) {
    final int offset = 0;
    final int length = input.length;
    final char[] result = new char[length << 1];

    IntStream.range(offset, offset + length)
        .forEach(
            i -> {
              final int byteValue = input[i];
              final int high = (byteValue >> 4) & 0xf; // high-nibble
              final int low = byteValue & 0xf; // low-nibble
              int pos = (i - offset) << 1;
              result[pos++] = (char) (high + ((high > 9) ? 87 : 48)); // NOPMD avoid reassigning
              result[pos] = (char) (low + ((low > 9) ? 87 : 48));
            }); // end forEach(i -> ...)

    return new String(result);
  } // end method */

  /**
   * Unzip.
   *
   * @param bytes gunzip compressed data
   * @return uncompressed data as {@link String}
   */
  /* package */ static String unzip(final byte[] bytes) {
    try (final GZIPInputStream ungzip = new GZIPInputStream(new ByteArrayInputStream(bytes))) {
      final ByteArrayOutputStream out = new ByteArrayOutputStream();
      final byte[] data = new byte[16384];
      int nRead;
      while ((nRead = ungzip.read(data)) != -1) {
        out.write(data, 0, nRead);
      }

      return out.toString(StandardCharsets.ISO_8859_1);
    } catch (IOException e) {
      LOGGER.atError().log("UNEXPECTED", e);

      return "UNZIP-ERROR";
    } // end Catch (...)
  } // end method */
} // end class
