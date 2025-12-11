Instance: VSDMDEUEVAnlage8ISO3166
InstanceOf: ConceptMap
Title: "DEÜV Anlage 8 zu ISO 3166-1 (erweitert)"
Description: "Ermittlung des (temporären) Ländercodes nach ISO 3166-1 aus dem Ländercode nach DEÜV Anlage 8"
Usage: #definition

* insert Meta-Inst
* purpose = """
    Diese ConceptMap ordnet den Ländercodes aus der DEÜV Anlage 8 die korrespondierenden Ländercodes nach ISO 3166-1 zu.
    Wo keine offiziellen Ländercodes verfügbar sind, werden temporäre Codes aus einem lokalen CodeSystem verwendet.
  """

* sourceUri = $vsAnlage8Laenderkennzeichen
* targetUri = $vsCountryCodeISO3166
* group[+]
  * source = $csAnlage8Laenderkennzeichen
  * target = $csCountryCodeISO3166

  * element[+]
    * code = #AFG 
    * display = "Afghanistan"
    * target[+]
      * code = #AF
      * display = "Afghanistan"
      * equivalence = #equal

  * element[+]
    * code = #ET 
    * display = "Ägypten"
    * target[+]
      * code = #EG
      * display = "Egypt"
      * equivalence = #equal

  * element[+]
    * code = #AX 
    * display = "Åland"
    * target[+]
      * code = #AX
      * display = "Eland Islands"
      * equivalence = #equal

  * element[+]
    * code = #AL 
    * display = "Albanien"
    * target[+]
      * code = #AL
      * display = "Albania"
      * equivalence = #equal

  * element[+]
    * code = #DZ 
    * display = "Algerien"
    * target[+]
      * code = #DZ
      * display = "Algeria"
      * equivalence = #equal

  * element[+]
    * code = #AJ 
    * display = "Amerik.-Jungferninseln"
    * target[+]
      * code = #VI
      * display = "Virgin Islands,"
      * equivalence = #equal

  * element[+]
    * code = #AS 
    * display = "Amerikanisch-Samoa"
    * target[+]
      * code = #AS
      * display = "American Samoa"
      * equivalence = #equal

  * element[+]
    * code = #AND 
    * display = "Andorra"
    * target[+]
      * code = #AD
      * display = "Andorra"
      * equivalence = #equal

  * element[+]
    * code = #AGO 
    * display = "Angola"
    * target[+]
      * code = #AO
      * display = "Angola"
      * equivalence = #equal

  * element[+]
    * code = #ANG 
    * display = "Anguilla"
    * target[+]
      * code = #AI
      * display = "Anguilla"
      * equivalence = #equal

  * element[+]
    * code = #ANT 
    * display = "Antigua und Barbuda"
    * target[+]
      * code = #AG
      * display = "Antigua and Barbuda"
      * equivalence = #equal

  * element[+]
    * code = #AQU 
    * display = "Äquatorialguinea"
    * target[+]
      * code = #GQ
      * display = "Equatorial Guinea"
      * equivalence = #equal

  * element[+]
    * code = #RA 
    * display = "Argentinien"
    * target[+]
      * code = #AR
      * display = "Argentina"
      * equivalence = #equal

  * element[+]
    * code = #AQ 
    * display = "Argentinische Antarktis"
    * target[+]
      * code = #AQ
      * display = "Antarctica"
      * equivalence = #equal

  * element[+]
    * code = #ARM 
    * display = "Armenien"
    * target[+]
      * code = #AM
      * display = "Armenia"
      * equivalence = #equal

  * element[+]
    * code = #AW 
    * display = "Aruba"
    * target[+]
      * code = #AW
      * display = "Aruba"
      * equivalence = #equal

  * element[+]
    * code = #HEL 
    * display = "Ascension"
    * target[+]
      * code = #SH
      * display = "Saint Helena, Ascension and Tristan da Cunha"
      * equivalence = #equal

  * element[+]
    * code = #ASE 
    * display = "Aserbaidschan"
    * target[+]
      * code = #AZ
      * display = "Azerbaijan"
      * equivalence = #equal

  * element[+]
    * code = #ETH 
    * display = "Äthiopien"
    * target[+]
      * code = #ET
      * display = "Ethiopia"
      * equivalence = #equal

  * element[+]
    * code = #AUS 
    * display = "Australien"
    * target[+]
      * code = #AU
      * display = "Australia"
      * equivalence = #equal

  * element[+]
    * code = #BS 
    * display = "Bahamas"
    * target[+]
      * code = #BS
      * display = "Bahamas"
      * equivalence = #equal

  * element[+]
    * code = #BRN 
    * display = "Bahrain"
    * target[+]
      * code = #BH
      * display = "Bahrain"
      * equivalence = #equal

  * element[+]
    * code = #BD 
    * display = "Bangladesch"
    * target[+]
      * code = #BD
      * display = "Bangladesh"
      * equivalence = #equal

  * element[+]
    * code = #BDS 
    * display = "Barbados"
    * target[+]
      * code = #BB
      * display = "Barbados"
      * equivalence = #equal

  * element[+]
    * code = #BY 
    * display = "Belarus"
    * target[+]
      * code = #BY
      * display = "Belarus"
      * equivalence = #equal

  * element[+]
    * code = #B 
    * display = "Belgien"
    * target[+]
      * code = #BE
      * display = "Belgium"
      * equivalence = #equal

  * element[+]
    * code = #BH 
    * display = "Belize"
    * target[+]
      * code = #BZ
      * display = "Belize"
      * equivalence = #equal

  * element[+]
    * code = #DY 
    * display = "Benin"
    * target[+]
      * code = #BJ
      * display = "Benin"
      * equivalence = #equal

  * element[+]
    * code = #BER 
    * display = "Bermuda"
    * target[+]
      * code = #BM
      * display = "Bermuda"
      * equivalence = #equal

  * element[+]
    * code = #BHT 
    * display = "Bhutan"
    * target[+]
      * code = #BT
      * display = "Bhutan"
      * equivalence = #equal

  * element[+]
    * code = #BOL 
    * display = "Bolivien"
    * target[+]
      * code = #BO
      * display = "Bolivia, Plurinational State of"
      * equivalence = #equal

  * element[+]
    * code = #BQ 
    * display = "Bonaire, Saba, St. Eustatius"
    * target[+]
      * code = #BQ
      * display = "Bonaire, Sint Eustatius and Saba"
      * equivalence = #equal

  * element[+]
    * code = #BIH 
    * display = "Bosnien und Herzegowina"
    * target[+]
      * code = #BA
      * display = "Bosnia and Herzegovina"
      * equivalence = #equal

  * element[+]
    * code = #RB 
    * display = "Botsuana"
    * target[+]
      * code = #BW
      * display = "Botswana"
      * equivalence = #equal

  * element[+]
    * code = #BV 
    * display = "Bouvetinsel"
    * target[+]
      * code = #BV
      * display = "Bouvet Island"
      * equivalence = #equal

  * element[+]
    * code = #BR 
    * display = "Brasilien"
    * target[+]
      * code = #BR
      * display = "Brazil"
      * equivalence = #equal

  * element[+]
    * code = #BJ 
    * display = "Britische Jungferninseln"
    * target[+]
      * code = #VG
      * display = "Virgin Islands, British"
      * equivalence = #equal

  * element[+]
    * code = #IO 
    * display = "Britisches Territorium im Indischen Ozean"
    * target[+]
      * code = #IO
      * display = "British Indian Ocean Territory"
      * equivalence = #equal

  * element[+]
    * code = #BRU 
    * display = "Brunei Darussalam"
    * target[+]
      * code = #BN
      * display = "Brunei Darussalam"
      * equivalence = #equal

  * element[+]
    * code = #BG 
    * display = "Bulgarien"
    * target[+]
      * code = #BG
      * display = "Bulgaria"
      * equivalence = #equal

  * element[+]
    * code = #HV 
    * display = "Burkina Faso"
    * target[+]
      * code = #BF
      * display = "Burkina Faso"
      * equivalence = #equal

  * element[+]
    * code = #RU 
    * display = "Burundi"
    * target[+]
      * code = #BI
      * display = "Burundi"
      * equivalence = #equal

  * element[+]
    * code = #RCH 
    * display = "Chile"
    * target[+]
      * code = #CL
      * display = "Chile"
      * equivalence = #equal

  * element[+]
    * code = #COI 
    * display = "Cookinseln"
    * target[+]
      * code = #CK
      * display = "Cook Islands"
      * equivalence = #equal

  * element[+]
    * code = #CR 
    * display = "Costa Rica"
    * target[+]
      * code = #CR
      * display = "Costa Rica"
      * equivalence = #equal

  * element[+]
    * code = #CI 
    * display = "Cote d`Ivoire"
    * target[+]
      * code = #CI
      * display = "Ctte d'Ivoire"
      * equivalence = #equal

  * element[+]
    * code = #CW 
    * display = "Curaçao"
    * target[+]
      * code = #CW
      * display = "Curagao"
      * equivalence = #equal

  * element[+]
    * code = #DK 
    * display = "Dänemark"
    * target[+]
      * code = #DK
      * display = "Denmark"
      * equivalence = #equal

  * element[+]
    * code = #D 
    * display = "Deutschland"
    * target[+]
      * code = #DE
      * display = "Germany"
      * equivalence = #equal

  * element[+]
    * code = #WD 
    * display = "Dominica"
    * target[+]
      * code = #DM
      * display = "Dominica"
      * equivalence = #equal

  * element[+]
    * code = #DOM 
    * display = "Dominikanische Republik"
    * target[+]
      * code = #DO
      * display = "Dominican Republic"
      * equivalence = #equal

  * element[+]
    * code = #DSC 
    * display = "Dschibuti"
    * target[+]
      * code = #DJ
      * display = "Djibouti"
      * equivalence = #equal

  * element[+]
    * code = #EC 
    * display = "Ecuador"
    * target[+]
      * code = #EC
      * display = "Ecuador"
      * equivalence = #equal

  * element[+]
    * code = #ES 
    * display = "El Salvador"
    * target[+]
      * code = #SV
      * display = "El Salvador"
      * equivalence = #equal

  * element[+]
    * code = #ERI 
    * display = "Eritrea"
    * target[+]
      * code = #ER
      * display = "Eritrea"
      * equivalence = #equal

  * element[+]
    * code = #EST 
    * display = "Estland"
    * target[+]
      * code = #EE
      * display = "Estonia"
      * equivalence = #equal

  * element[+]
    * code = #SWZ 
    * display = "Eswatini"
    * target[+]
      * code = #SZ
      * display = "Swaziland"
      * equivalence = #equal

  * element[+]
    * code = #FAL 
    * display = "Falklandinseln"
    * target[+]
      * code = #FK
      * display = "Falkland Islands (Malvinas)"
      * equivalence = #equal

  * element[+]
    * code = #FR 
    * display = "Färöer"
    * target[+]
      * code = #FO
      * display = "Faroe Islands"
      * equivalence = #equal

  * element[+]
    * code = #FJI 
    * display = "Fidschi"
    * target[+]
      * code = #FJ
      * display = "Fiji"
      * equivalence = #equal

  * element[+]
    * code = #FIN 
    * display = "Finnland"
    * target[+]
      * code = #FI
      * display = "Finland"
      * equivalence = #equal

  * element[+]
    * code = #F 
    * display = "Frankreich"
    * target[+]
      * code = #FR
      * display = "France"
      * equivalence = #equal

  * element[+]
    * code = #TF 
    * display = "Französische Süd- und Antarktisgebiete"
    * target[+]
      * code = #TF
      * display = "French Southern Territories"
      * equivalence = #equal

  * element[+]
    * code = #FG 
    * display = "Franz.-Guayana"
    * target[+]
      * code = #GF
      * display = "French Guiana"
      * equivalence = #equal

  * element[+]
    * code = #FP 
    * display = "Franz.-Polynesien"
    * target[+]
      * code = #PF
      * display = "French Polynesia"
      * equivalence = #equal

  * element[+]
    * code = #GAB 
    * display = "Gabun"
    * target[+]
      * code = #GA
      * display = "Gabon"
      * equivalence = #equal

  * element[+]
    * code = #WAG 
    * display = "Gambia"
    * target[+]
      * code = #GM
      * display = "Gambia"
      * equivalence = #equal

  * element[+]
    * code = #GEO 
    * display = "Georgien"
    * target[+]
      * code = #GE
      * display = "Georgia"
      * equivalence = #equal

  * element[+]
    * code = #GH 
    * display = "Ghana"
    * target[+]
      * code = #GH
      * display = "Ghana"
      * equivalence = #equal

  * element[+]
    * code = #GIB 
    * display = "Gibraltar"
    * target[+]
      * code = #GI
      * display = "Gibraltar"
      * equivalence = #equal

  * element[+]
    * code = #WG 
    * display = "Grenada"
    * target[+]
      * code = #GD
      * display = "Grenada"
      * equivalence = #equal

  * element[+]
    * code = #GR 
    * display = "Griechenland"
    * target[+]
      * code = #GR
      * display = "Greece"
      * equivalence = #equal

  * element[+]
    * code = #GRO 
    * display = "Grönland"
    * target[+]
      * code = #GL
      * display = "Greenland"
      * equivalence = #equal

  * element[+]
    * code = #GUA 
    * display = "Guadeloupe"
    * target[+]
      * code = #GP
      * display = "Guadeloupe"
      * equivalence = #equal

  * element[+]
    * code = #GUM 
    * display = "Guam"
    * target[+]
      * code = #GU
      * display = "Guam"
      * equivalence = #equal

  * element[+]
    * code = #GCA 
    * display = "Guatemala"
    * target[+]
      * code = #GT
      * display = "Guatemala"
      * equivalence = #equal

  * element[+]
    * code = #GG 
    * display = "Guernsey"
    * target[+]
      * code = #GG
      * display = "Guernsey"
      * equivalence = #equal

  * element[+]
    * code = #RG 
    * display = "Guinea"
    * target[+]
      * code = #GN
      * display = "Guinea"
      * equivalence = #equal

  * element[+]
    * code = #GUB 
    * display = "Guinea-Bissau"
    * target[+]
      * code = #GW
      * display = "Guinea-Bissau"
      * equivalence = #equal

  * element[+]
    * code = #GUY 
    * display = "Guyana"
    * target[+]
      * code = #GY
      * display = "Guyana"
      * equivalence = #equal

  * element[+]
    * code = #RH 
    * display = "Haiti"
    * target[+]
      * code = #HT
      * display = "Haiti"
      * equivalence = #equal

  * element[+]
    * code = #HM 
    * display = "Heard und McDonaldinseln"
    * target[+]
      * code = #HM
      * display = "Heard Island and McDonald Islands"
      * equivalence = #equal

  * element[+]
    * code = #HCA 
    * display = "Honduras"
    * target[+]
      * code = #HN
      * display = "Honduras"
      * equivalence = #equal

  * element[+]
    * code = #HKG 
    * display = "Hongkong"
    * target[+]
      * code = #HK
      * display = "Hong Kong"
      * equivalence = #equal

  * element[+]
    * code = #IND 
    * display = "Indien"
    * target[+]
      * code = #IN
      * display = "India"
      * equivalence = #equal

  * element[+]
    * code = #RI 
    * display = "Indonesien"
    * target[+]
      * code = #ID
      * display = "Indonesia"
      * equivalence = #equal

  * element[+]
    * code = #MAN 
    * display = "Insel Man"
    * target[+]
      * code = #IM
      * display = "Isle of Man"
      * equivalence = #equal

  * element[+]
    * code = #IRQ 
    * display = "Irak"
    * target[+]
      * code = #IQ
      * display = "Iraq"
      * equivalence = #equal

  * element[+]
    * code = #IR 
    * display = "Iran"
    * target[+]
      * code = #IR
      * display = "Iran, Islamic Republic of"
      * equivalence = #equal

  * element[+]
    * code = #IRL 
    * display = "Irland"
    * target[+]
      * code = #IE
      * display = "Ireland"
      * equivalence = #equal

  * element[+]
    * code = #IS 
    * display = "Island"
    * target[+]
      * code = #IS
      * display = "Iceland"
      * equivalence = #equal

  * element[+]
    * code = #IL 
    * display = "Israel"
    * target[+]
      * code = #IL
      * display = "Israel"
      * equivalence = #equal

  * element[+]
    * code = #I 
    * display = "Italien"
    * target[+]
      * code = #IT
      * display = "Italy"
      * equivalence = #equal

  * element[+]
    * code = #JA 
    * display = "Jamaika"
    * target[+]
      * code = #JM
      * display = "Jamaica"
      * equivalence = #equal

  * element[+]
    * code = #J 
    * display = "Japan"
    * target[+]
      * code = #JP
      * display = "Japan"
      * equivalence = #equal

  * element[+]
    * code = #YEM 
    * display = "Jemen"
    * target[+]
      * code = #YE
      * display = "Yemen"
      * equivalence = #equal

  * element[+]
    * code = #JE 
    * display = "Jersey"
    * target[+]
      * code = #JE
      * display = "Jersey"
      * equivalence = #equal

  * element[+]
    * code = #JOR 
    * display = "Jordanien"
    * target[+]
      * code = #JO
      * display = "Jordan"
      * equivalence = #equal

  * element[+]
    * code = #KAI 
    * display = "Kaimaninseln"
    * target[+]
      * code = #KY
      * display = "Cayman Islands"
      * equivalence = #equal

  * element[+]
    * code = #K 
    * display = "Kambodscha"
    * target[+]
      * code = #KH
      * display = "Cambodia"
      * equivalence = #equal

  * element[+]
    * code = #CAM 
    * display = "Kamerun"
    * target[+]
      * code = #CM
      * display = "Cameroon"
      * equivalence = #equal

  * element[+]
    * code = #CDN 
    * display = "Kanada"
    * target[+]
      * code = #CA
      * display = "Canada"
      * equivalence = #equal

  * element[+]
    * code = #CV 
    * display = "Cabo Verde"
    * target[+]
      * code = #CV
      * display = "Cabo Verde"
      * equivalence = #equal

  * element[+]
    * code = #KAS 
    * display = "Kasachstan"
    * target[+]
      * code = #KZ
      * display = "Kazakhstan"
      * equivalence = #equal

  * element[+]
    * code = #QAT 
    * display = "Katar"
    * target[+]
      * code = #QA
      * display = "Qatar"
      * equivalence = #equal

  * element[+]
    * code = #EAK 
    * display = "Kenia"
    * target[+]
      * code = #KE
      * display = "Kenya"
      * equivalence = #equal

  * element[+]
    * code = #KIS 
    * display = "Kirgisistan"
    * target[+]
      * code = #KG
      * display = "Kyrgyzstan"
      * equivalence = #equal

  * element[+]
    * code = #KIB 
    * display = "Kiribati"
    * target[+]
      * code = #KI
      * display = "Kiribati"
      * equivalence = #equal

  * element[+]
    * code = #CC 
    * display = "Kokosinseln"
    * target[+]
      * code = #CC
      * display = "Cocos (Keeling) Islands"
      * equivalence = #equal

  * element[+]
    * code = #CO 
    * display = "Kolumbien"
    * target[+]
      * code = #CO
      * display = "Colombia"
      * equivalence = #equal

  * element[+]
    * code = #KOM 
    * display = "Komoren"
    * target[+]
      * code = #KM
      * display = "Comoros"
      * equivalence = #equal

  * element[+]
    * code = #RCB 
    * display = "Kongo(-Brazzaville), Republik"
    * target[+]
      * code = #CG
      * display = "Congo"
      * equivalence = #equal

  * element[+]
    * code = #ZRE 
    * display = "Kongo, Demokratische Republik (ehem. Zaire)"
    * target[+]
      * code = #CD
      * display = "Congo, the Democratic Republic of the"
      * equivalence = #equal

  * element[+]
    * code = #KOR 
    * display = "Korea, Demokratische Volksrepublik (Nordkorea)"
    * target[+]
      * code = #KP
      * display = "Korea, Democratic People's Republic of"
      * equivalence = #equal

  * element[+]
    * code = #ROK 
    * display = "Korea, Republik (Südkorea)"
    * target[+]
      * code = #KR
      * display = "Korea, Republic of"
      * equivalence = #equal

  * element[+]
    * code = #HR 
    * display = "Kroatien"
    * target[+]
      * code = #HR
      * display = "Croatia"
      * equivalence = #equal

  * element[+]
    * code = #C 
    * display = "Kuba"
    * target[+]
      * code = #CU
      * display = "Cuba"
      * equivalence = #equal

  * element[+]
    * code = #KWT 
    * display = "Kuwait"
    * target[+]
      * code = #KW
      * display = "Kuwait"
      * equivalence = #equal

  * element[+]
    * code = #LAO 
    * display = "Laos"
    * target[+]
      * code = #LA
      * display = "Lao People's Democratic Republic"
      * equivalence = #equal

  * element[+]
    * code = #LS 
    * display = "Lesotho"
    * target[+]
      * code = #LS
      * display = "Lesotho"
      * equivalence = #equal

  * element[+]
    * code = #LV 
    * display = "Lettland"
    * target[+]
      * code = #LV
      * display = "Latvia"
      * equivalence = #equal

  * element[+]
    * code = #RL 
    * display = "Libanon"
    * target[+]
      * code = #LB
      * display = "Lebanon"
      * equivalence = #equal

  * element[+]
    * code = #LB 
    * display = "Liberia"
    * target[+]
      * code = #LR
      * display = "Liberia"
      * equivalence = #equal

  * element[+]
    * code = #LAR 
    * display = "Libyen"
    * target[+]
      * code = #LY
      * display = "Libya"
      * equivalence = #equal

  * element[+]
    * code = #FL 
    * display = "Liechtenstein"
    * target[+]
      * code = #LI
      * display = "Liechtenstein"
      * equivalence = #equal

  * element[+]
    * code = #LT 
    * display = "Litauen"
    * target[+]
      * code = #LT
      * display = "Lithuania"
      * equivalence = #equal

  * element[+]
    * code = #L 
    * display = "Luxemburg"
    * target[+]
      * code = #LU
      * display = "Luxembourg"
      * equivalence = #equal

  * element[+]
    * code = #MAC 
    * display = "Macau"
    * target[+]
      * code = #MO
      * display = "Macao"
      * equivalence = #equal

  * element[+]
    * code = #RM 
    * display = "Madagaskar"
    * target[+]
      * code = #MG
      * display = "Madagascar"
      * equivalence = #equal

  * element[+]
    * code = #MW 
    * display = "Malawi"
    * target[+]
      * code = #MW
      * display = "Malawi"
      * equivalence = #equal

  * element[+]
    * code = #MAL 
    * display = "Malaysia"
    * target[+]
      * code = #MY
      * display = "Malaysia"
      * equivalence = #equal

  * element[+]
    * code = #BIO 
    * display = "Malediven"
    * target[+]
      * code = #MV
      * display = "Maldives"
      * equivalence = #equal

  * element[+]
    * code = #RMM 
    * display = "Mali"
    * target[+]
      * code = #ML
      * display = "Mali"
      * equivalence = #equal

  * element[+]
    * code = #M 
    * display = "Malta"
    * target[+]
      * code = #MT
      * display = "Malta"
      * equivalence = #equal

  * element[+]
    * code = #MA 
    * display = "Marokko"
    * target[+]
      * code = #MA
      * display = "Morocco"
      * equivalence = #equal

  * element[+]
    * code = #MAR 
    * display = "Marshallinseln"
    * target[+]
      * code = #MH
      * display = "Marshall Islands"
      * equivalence = #equal

  * element[+]
    * code = #MAT 
    * display = "Martinique"
    * target[+]
      * code = #MQ
      * display = "Martinique"
      * equivalence = #equal

  * element[+]
    * code = #RIM 
    * display = "Mauretanien"
    * target[+]
      * code = #MR
      * display = "Mauritania"
      * equivalence = #equal

  * element[+]
    * code = #MS 
    * display = "Mauritius"
    * target[+]
      * code = #MU
      * display = "Mauritius"
      * equivalence = #equal

  * element[+]
    * code = #MAY 
    * display = "Mayotte"
    * target[+]
      * code = #YT
      * display = "Mayotte"
      * equivalence = #equal

  * element[+]
    * code = #MEX 
    * display = "Mexiko"
    * target[+]
      * code = #MX
      * display = "Mexico"
      * equivalence = #equal

  * element[+]
    * code = #MIK 
    * display = "Mikronesien"
    * target[+]
      * code = #FM
      * display = "Micronesia, Federated States of"
      * equivalence = #equal

  * element[+]
    * code = #MD 
    * display = "Moldau"
    * target[+]
      * code = #MD
      * display = "Moldova, Republic of"
      * equivalence = #equal

  * element[+]
    * code = #MC 
    * display = "Monaco"
    * target[+]
      * code = #MC
      * display = "Monaco"
      * equivalence = #equal

  * element[+]
    * code = #MON 
    * display = "Mongolei"
    * target[+]
      * code = #MN
      * display = "Mongolia"
      * equivalence = #equal

  * element[+]
    * code = #MNE 
    * display = "Montenegro"
    * target[+]
      * code = #ME
      * display = "Montenegro"
      * equivalence = #equal

  * element[+]
    * code = #MOT 
    * display = "Montserrat"
    * target[+]
      * code = #MS
      * display = "Montserrat"
      * equivalence = #equal

  * element[+]
    * code = #MOZ 
    * display = "Mosambik"
    * target[+]
      * code = #MZ
      * display = "Mozambique"
      * equivalence = #equal

  * element[+]
    * code = #MYA 
    * display = "Myanmar"
    * target[+]
      * code = #MM
      * display = "Myanmar"
      * equivalence = #equal

  * element[+]
    * code = #SWA 
    * display = "Namibia"
    * target[+]
      * code = #NA
      * display = "Namibia"
      * equivalence = #equal

  * element[+]
    * code = #NAU 
    * display = "Nauru"
    * target[+]
      * code = #NR
      * display = "Nauru"
      * equivalence = #equal

  * element[+]
    * code = #UM 
    * display = "Navassa"
    * target[+]
      * code = #UM
      * display = "United States Minor Outlying Islands"
      * equivalence = #equal

  * element[+]
    * code = #NEP 
    * display = "Nepal"
    * target[+]
      * code = #NP
      * display = "Nepal"
      * equivalence = #equal

  * element[+]
    * code = #NKA 
    * display = "Neukaledonien"
    * target[+]
      * code = #NC
      * display = "New Caledonia"
      * equivalence = #equal

  * element[+]
    * code = #NZ 
    * display = "Neuseeland"
    * target[+]
      * code = #NZ
      * display = "New Zealand"
      * equivalence = #equal

  * element[+]
    * code = #NIC 
    * display = "Nicaragua"
    * target[+]
      * code = #NI
      * display = "Nicaragua"
      * equivalence = #equal

  * element[+]
    * code = #NL 
    * display = "Niederlande"
    * target[+]
      * code = #NL
      * display = "Netherlands"
      * equivalence = #equal

  * element[+]
    * code = #RN 
    * display = "Niger"
    * target[+]
      * code = #NE
      * display = "Niger"
      * equivalence = #equal

  * element[+]
    * code = #WAN 
    * display = "Nigeria"
    * target[+]
      * code = #NG
      * display = "Nigeria"
      * equivalence = #equal

  * element[+]
    * code = #NIU 
    * display = "Niue"
    * target[+]
      * code = #NU
      * display = "Niue"
      * equivalence = #equal

  * element[+]
    * code = #MK 
    * display = "Nordmazedonien"
    * target[+]
      * code = #MK
      * display = "Macedonia, the former Yugoslav Republic of"
      * equivalence = #equal

  * element[+]
    * code = #NMA 
    * display = "Nördliche Marianen"
    * target[+]
      * code = #MP
      * display = "Northern Mariana Islands"
      * equivalence = #equal

  * element[+]
    * code = #NF 
    * display = "Norfolkinsel"
    * target[+]
      * code = #NF
      * display = "Norfolk Island"
      * equivalence = #equal

  * element[+]
    * code = #N 
    * display = "Norwegen"
    * target[+]
      * code = #NO
      * display = "Norway"
      * equivalence = #equal

  * element[+]
    * code = #MAO 
    * display = "Oman"
    * target[+]
      * code = #OM
      * display = "Oman"
      * equivalence = #equal

  * element[+]
    * code = #A 
    * display = "Österreich"
    * target[+]
      * code = #AT
      * display = "Austria"
      * equivalence = #equal

  * element[+]
    * code = #PK 
    * display = "Pakistan"
    * target[+]
      * code = #PK
      * display = "Pakistan"
      * equivalence = #equal

  * element[+]
    * code = #PSE 
    * display = "Palästinensische Gebiete"
    * target[+]
      * code = #PS
      * display = "Palestine, State of"
      * equivalence = #equal

  * element[+]
    * code = #PAL 
    * display = "Palau"
    * target[+]
      * code = #PW
      * display = "Palau"
      * equivalence = #equal

  * element[+]
    * code = #PA 
    * display = "Panama"
    * target[+]
      * code = #PA
      * display = "Panama"
      * equivalence = #equal

  * element[+]
    * code = #PNG 
    * display = "Papua-Neugiunea"
    * target[+]
      * code = #PG
      * display = "Papua New Guinea"
      * equivalence = #equal

  * element[+]
    * code = #PY 
    * display = "Paraguay"
    * target[+]
      * code = #PY
      * display = "Paraguay"
      * equivalence = #equal

  * element[+]
    * code = #PE 
    * display = "Peru"
    * target[+]
      * code = #PE
      * display = "Peru"
      * equivalence = #equal

  * element[+]
    * code = #RP 
    * display = "Philippinen"
    * target[+]
      * code = #PH
      * display = "Philippines"
      * equivalence = #equal

  * element[+]
    * code = #PIT 
    * display = "Pitcairninseln"
    * target[+]
      * code = #PN
      * display = "Pitcairn"
      * equivalence = #equal

  * element[+]
    * code = #PL 
    * display = "Polen"
    * target[+]
      * code = #PL
      * display = "Poland"
      * equivalence = #equal

  * element[+]
    * code = #P 
    * display = "Portugal"
    * target[+]
      * code = #PT
      * display = "Portugal"
      * equivalence = #equal

  * element[+]
    * code = #PRI 
    * display = "Puerto Rico"
    * target[+]
      * code = #PR
      * display = "Puerto Rico"
      * equivalence = #equal

  * element[+]
    * code = #REU 
    * display = "Réunion"
    * target[+]
      * code = #RE
      * display = "Riunion"
      * equivalence = #equal

  * element[+]
    * code = #RWA 
    * display = "Ruanda"
    * target[+]
      * code = #RW
      * display = "Rwanda"
      * equivalence = #equal

  * element[+]
    * code = #RO 
    * display = "Rumänien"
    * target[+]
      * code = #RO
      * display = "Romania"
      * equivalence = #equal

  * element[+]
    * code = #RUS 
    * display = "Russische Föderation"
    * target[+]
      * code = #RU
      * display = "Russian Federation"
      * equivalence = #equal

  * element[+]
    * code = #PIE 
    * display = "Saint Pierre und Miquelon"
    * target[+]
      * code = #PM
      * display = "Saint Pierre and Miquelon"
      * equivalence = #equal

  * element[+]
    * code = #SOL 
    * display = "Salomonen"
    * target[+]
      * code = #SB
      * display = "Solomon Islands"
      * equivalence = #equal

  * element[+]
    * code = #Z 
    * display = "Sambia"
    * target[+]
      * code = #ZM
      * display = "Zambia"
      * equivalence = #equal

  * element[+]
    * code = #WS 
    * display = "Samoa"
    * target[+]
      * code = #WS
      * display = "Samoa"
      * equivalence = #equal

  * element[+]
    * code = #RSM 
    * display = "San Marino"
    * target[+]
      * code = #SM
      * display = "San Marino"
      * equivalence = #equal

  * element[+]
    * code = #STP 
    * display = "Sao Tomé und Principe"
    * target[+]
      * code = #ST
      * display = "Sao Tome and Principe"
      * equivalence = #equal

  * element[+]
    * code = #SAU 
    * display = "Saudi-Arabien"
    * target[+]
      * code = #SA
      * display = "Saudi Arabia"
      * equivalence = #equal

  * element[+]
    * code = #S 
    * display = "Schweden"
    * target[+]
      * code = #SE
      * display = "Sweden"
      * equivalence = #equal

  * element[+]
    * code = #CH 
    * display = "Schweiz"
    * target[+]
      * code = #CH
      * display = "Switzerland"
      * equivalence = #equal

  * element[+]
    * code = #SN 
    * display = "Senegal"
    * target[+]
      * code = #SN
      * display = "Senegal"
      * equivalence = #equal

  * element[+]
    * code = #SRB 
    * display = "Serbien"
    * target[+]
      * code = #RS
      * display = "Serbia"
      * equivalence = #equal

  * element[+]
    * code = #SY 
    * display = "Seychellen"
    * target[+]
      * code = #SC
      * display = "Seychelles"
      * equivalence = #equal

  * element[+]
    * code = #WAL 
    * display = "Sierra Leone"
    * target[+]
      * code = #SL
      * display = "Sierra Leone"
      * equivalence = #equal

  * element[+]
    * code = #ZW 
    * display = "Simbabwe"
    * target[+]
      * code = #ZW
      * display = "Zimbabwe"
      * equivalence = #equal

  * element[+]
    * code = #SGP 
    * display = "Singapur"
    * target[+]
      * code = #SG
      * display = "Singapore"
      * equivalence = #equal

  * element[+]
    * code = #SK 
    * display = "Slowakei"
    * target[+]
      * code = #SK
      * display = "Slovakia"
      * equivalence = #equal

  * element[+]
    * code = #SLO 
    * display = "Slowenien"
    * target[+]
      * code = #SI
      * display = "Slovenia"
      * equivalence = #equal

  * element[+]
    * code = #SP 
    * display = "Somalia"
    * target[+]
      * code = #SO
      * display = "Somalia"
      * equivalence = #equal

  * element[+]
    * code = #E 
    * display = "Spanien"
    * target[+]
      * code = #ES
      * display = "Spain"
      * equivalence = #equal

  * element[+]
    * code = #CL 
    * display = "Sri Lanka"
    * target[+]
      * code = #LK
      * display = "Sri Lanka"
      * equivalence = #equal

  * element[+]
    * code = #BL 
    * display = "St. Barthélemy"
    * target[+]
      * code = #BL
      * display = "Saint Barthilemy"
      * equivalence = #equal

  * element[+]
    * code = #SCN 
    * display = "St. Kitts und Nevis"
    * target[+]
      * code = #KN
      * display = "Saint Kitts and Nevis"
      * equivalence = #equal

  * element[+]
    * code = #WL 
    * display = "St. Lucia"
    * target[+]
      * code = #LC
      * display = "Saint Lucia"
      * equivalence = #equal

  * element[+]
    * code = #MF 
    * display = "St. Martin (französischer Teil)"
    * target[+]
      * code = #MF
      * display = "Saint Martin (French part)"
      * equivalence = #equal

  * element[+]
    * code = #SX 
    * display = "St. Martin (niederländischer Teil)"
    * target[+]
      * code = #SX
      * display = "Sint Maarten (Dutch part)"
      * equivalence = #equal

  * element[+]
    * code = #WV 
    * display = "St. Vincent und die Grenadinen"
    * target[+]
      * code = #VC
      * display = "Saint Vincent and the Grenadines"
      * equivalence = #equal

  * element[+]
    * code = #ZA 
    * display = "Südafrika"
    * target[+]
      * code = #ZA
      * display = "South Africa"
      * equivalence = #equal

  * element[+]
    * code = #SDN 
    * display = "Sudan"
    * target[+]
      * code = #SD
      * display = "Sudan"
      * equivalence = #equal

  * element[+]
    * code = #GS 
    * display = "Südgeorgien und die südlichen Sandwichinseln"
    * target[+]
      * code = #GS
      * display = "South Georgia and the South Sandwich Islands"
      * equivalence = #equal

  * element[+]
    * code = #SSD 
    * display = "Südsudan"
    * target[+]
      * code = #SS
      * display = "South Sudan"
      * equivalence = #equal

  * element[+]
    * code = #SME 
    * display = "Suriname"
    * target[+]
      * code = #SR
      * display = "Suriname"
      * equivalence = #equal

  * element[+]
    * code = #SJ 
    * display = "Svalbard und Jan Mayen"
    * target[+]
      * code = #SJ
      * display = "Svalbard and Jan Mayen"
      * equivalence = #equal

  * element[+]
    * code = #SYR 
    * display = "Syrien"
    * target[+]
      * code = #SY
      * display = "Syrian Arab Republic"
      * equivalence = #equal

  * element[+]
    * code = #TAD 
    * display = "Tadschikistan"
    * target[+]
      * code = #TJ
      * display = "Tajikistan"
      * equivalence = #equal

  * element[+]
    * code = #TWN 
    * display = "Taiwan"
    * target[+]
      * code = #TW
      * display = "Taiwan, Province of China"
      * equivalence = #equal

  * element[+]
    * code = #EAT 
    * display = "Tansania"
    * target[+]
      * code = #TZ
      * display = "Tanzania, United Republic of"
      * equivalence = #equal

  * element[+]
    * code = #T 
    * display = "Thailand"
    * target[+]
      * code = #TH
      * display = "Thailand"
      * equivalence = #equal

  * element[+]
    * code = #TJ 
    * display = "China"
    * target[+]
      * code = #CN
      * display = "China"
      * equivalence = #equal

  * element[+]
    * code = #OTI 
    * display = "Timor-Leste"
    * target[+]
      * code = #TL
      * display = "Timor-Leste"
      * equivalence = #equal

  * element[+]
    * code = #TG 
    * display = "Togo"
    * target[+]
      * code = #TG
      * display = "Togo"
      * equivalence = #equal

  * element[+]
    * code = #TOK 
    * display = "Tokelau"
    * target[+]
      * code = #TK
      * display = "Tokelau"
      * equivalence = #equal

  * element[+]
    * code = #TON 
    * display = "Tonga"
    * target[+]
      * code = #TO
      * display = "Tonga"
      * equivalence = #equal

  * element[+]
    * code = #TT 
    * display = "Trinidad und Tobago"
    * target[+]
      * code = #TT
      * display = "Trinidad and Tobago"
      * equivalence = #equal

  * element[+]
    * code = #CHD 
    * display = "Tschad"
    * target[+]
      * code = #TD
      * display = "Chad"
      * equivalence = #equal

  * element[+]
    * code = #CZ 
    * display = "Tschechien"
    * target[+]
      * code = #CZ
      * display = "Czechia"
      * equivalence = #equal

  * element[+]
    * code = #TN 
    * display = "Tunesien"
    * target[+]
      * code = #TN
      * display = "Tunisia"
      * equivalence = #equal

  * element[+]
    * code = #TR 
    * display = "Türkei"
    * target[+]
      * code = #TR
      * display = "Turkey"
      * equivalence = #equal

  * element[+]
    * code = #TUR 
    * display = "Turkmenistan"
    * target[+]
      * code = #TM
      * display = "Turkmenistan"
      * equivalence = #equal

  * element[+]
    * code = #TUC 
    * display = "Turks- und Caicosinseln"
    * target[+]
      * code = #TC
      * display = "Turks and Caicos Islands"
      * equivalence = #equal

  * element[+]
    * code = #TUV 
    * display = "Tuvalu"
    * target[+]
      * code = #TV
      * display = "Tuvalu"
      * equivalence = #equal

  * element[+]
    * code = #EAU 
    * display = "Uganda"
    * target[+]
      * code = #UG
      * display = "Uganda"
      * equivalence = #equal

  * element[+]
    * code = #UA 
    * display = "Ukraine"
    * target[+]
      * code = #UA
      * display = "Ukraine"
      * equivalence = #equal

  * element[+]
    * code = #H 
    * display = "Ungarn"
    * target[+]
      * code = #HU
      * display = "Hungary"
      * equivalence = #equal

  * element[+]
    * code = #ROU 
    * display = "Uruguay"
    * target[+]
      * code = #UY
      * display = "Uruguay"
      * equivalence = #equal

  * element[+]
    * code = #USB 
    * display = "Usbekistan"
    * target[+]
      * code = #UZ
      * display = "Uzbekistan"
      * equivalence = #equal

  * element[+]
    * code = #VAN 
    * display = "Vanuatu"
    * target[+]
      * code = #VU
      * display = "Vanuatu"
      * equivalence = #equal

  * element[+]
    * code = #V 
    * display = "Vatikanstadt"
    * target[+]
      * code = #VA
      * display = "Holy See"
      * equivalence = #equal

  * element[+]
    * code = #YV 
    * display = "Venezuela"
    * target[+]
      * code = #VE
      * display = "Venezuela, Bolivarian Republic of"
      * equivalence = #equal

  * element[+]
    * code = #UAE 
    * display = "Vereinigte Arabische Emirate"
    * target[+]
      * code = #AE
      * display = "United Arab Emirates"
      * equivalence = #equal

  * element[+]
    * code = #USA 
    * display = "Vereinigte Staaten"
    * target[+]
      * code = #US
      * display = "United States of America"
      * equivalence = #equal

  * element[+]
    * code = #GB 
    * display = "Vereinigtes Königreich"
    * target[+]
      * code = #GB
      * display = "United Kingdom of Great Britain and Northern Ireland"
      * equivalence = #equal

  * element[+]
    * code = #VN 
    * display = "Vietnam"
    * target[+]
      * code = #VN
      * display = "Viet Nam"
      * equivalence = #equal

  * element[+]
    * code = #WF 
    * display = "Wallis und Futuna"
    * target[+]
      * code = #WF
      * display = "Wallis and Futuna"
      * equivalence = #equal

  * element[+]
    * code = #CX 
    * display = "Weihnachtsinsel"
    * target[+]
      * code = #CX
      * display = "Christmas Island"
      * equivalence = #equal

  * element[+]
    * code = #EH 
    * display = "Westsahara"
    * target[+]
      * code = #EH
      * display = "Western Sahara"
      * equivalence = #equal

  * element[+]
    * code = #RCA 
    * display = "Zentralafrikanische Republik"
    * target[+]
      * code = #CF
      * display = "Central African Republic"
      * equivalence = #equal

  * element[+]
    * code = #CY 
    * display = "Zypern"
    * target[+]
      * code = #CY
      * display = "Cyprus"
      * equivalence = #equal

* sourceUri = $vsAnlage8Laenderkennzeichen
* targetUri = Canonical(VSDMISO3166ErgaenzungVS)
* group[+]
  * source = $csAnlage8Laenderkennzeichen
  * target = Canonical(VSDMISO3166ErgaenzungCS)

  * element[+]
    * code = #KOS
    * display = "Kosovo"
    * target[+]
      * code = #XK
      * display = "Kosovo, Republic of"
      * equivalence = #equal

  * element[+]
    * code = #CP
    * display = "Clipperton"
    * target[+]
      * code = #CP
      * display = "Clipperton"
      * equivalence = #equal

