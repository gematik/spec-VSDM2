Profile: VSDMContactPointTIMessenger
Parent: ContactPoint
Id: vsdm-contactpoint-timessenger
* value 1..1 MS
* value obeys mxid-1
* system MS
* system = #url

Invariant: mxid-1
Description: "TI-Messenger MXID starts with @, length UserID <255"
* severity = #error
* expression = "matches('matrix:@[A-Za-z0-9._=-]{1,253}:[A-Za-z0-9.-]+')"

// samples
Instance: ContactPointAOKMXID
InstanceOf: VSDMContactPointTIMessenger
Usage: #inline
* system = #url
* value = "matrix:@T024791905:aok-nord.de"

Instance: ContactPointTKMXID
InstanceOf: VSDMContactPointTIMessenger
Usage: #inline
* system = #url
* value = "matrix:@Y234567890:tk-matrix-homeserver.de"

Instance: ContactPointMXIDinvalid
InstanceOf: VSDMContactPointTIMessenger
Usage: #inline
* system = #url
* value = "matrix:Y234567890:invaliduserid.de"