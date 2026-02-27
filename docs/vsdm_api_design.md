# Design-Rationale und FHIR-Konformität

Die VSDService-API verwendet einen von Standard-FHIR abweichenden Endpunkt-Ansatz:

## Standard FHIR REST Pattern
* `GET /fhir/Bundle/{id}` (Zugriff mit expliziter ID)
* `GET /fhir/Bundle?identifier=...` (Suche nach Identifier)

## VSDM2 Pattern
* `GET /vsdservice/v1/vsdmbundle` (Fester Endpunkt ohne ID)

## Begründung für diese Abweichung

1. **Sicherheit:** Die KVNR erscheint nicht in der URL und wird daher nicht in Server-Logs oder Monitoring-Systemen erfasst.
2. **Versorgungskontext-basiert:** Der Zugriff ist an den im PoPP-Token manifestierten Versorgungskontext gebunden. Die Identifikation erfolgt über die im PoPP-Token enthaltene KVNR.
3. **Singleton-Semantik:** Pro authentifiziertem Versicherten existiert genau ein aktuelles VSDMBundle. Eine ID-basierte Adressierung ist nicht erforderlich.
4. **Vereinfachung:** Clients müssen keine Resource-IDs konstruieren oder verwalten. Der Versorgungskontext bestimmt eindeutig, welches VSDMBundle zurückgegeben wird.

Trotz dieser Abweichung vom Standard-FHIR-Pattern handelt es sich bei `/vsdservice/v1/vsdmbundle` um eine FHIR Resource (`VSDMBundle`) mit Standard-Resource-Semantik (ETag, If-None-Match, HTTP 304, etc.).
