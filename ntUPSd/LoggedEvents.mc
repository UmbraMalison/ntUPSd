;#ifndef __LOGGED_EVENTS_H__
;#define __LOGGED_EVENTS_H__
;

MessageIdTypedef = HRESULT

LanguageNames = (
	Symbol		= 0x0000:MSG0000
	English		= 0x0409:MSG0409
)

SeverityNames = (
	SrvSuccess	= 0x0
	SrvError	= 0x2
)

FacilityNames = (
	ntUPSd		= 0x1:FACILITY_NUT
	UPS			= 0x2:FACILITY_UPS
)

;// ///////////////////////////////////////////////////////////////////////////////////////////////
;// # The Basics

MessageId		= 1
SymbolicName	= NUT_EVENT_INFO
Severity        = Success
Language        = English
Information event
.

MessageId		= +1
SymbolicName	= NUT_EVENT_ERROR
Severity        = Error
Language        = English
Error event
.

;// ///////////////////////////////////////////////////////////////////////////////////////////////
;// Events
;//
;

MessageId		= +1
SymbolicName	= NUT_EVENT_STARTING_SERVICE
Severity        = Success
Language        = English
Starting Network UPS Service
.

;// ///////////////////////////////////////////////////////////////////////////////////////////////
;// Server Response Errors
;//
;

MessageId		= 0x0001
SymbolicName	= NUT_E_UNREPORTABLE
Severity        = SrvError
Facility		= ntUPSd
Language        = English
An error occurred that has no known NUT error message.
.
Language		= Symbol
UNKNOWN-ERROR
.

MessageId		= 0x0002
SymbolicName	= NUT_E_UNKNOWNCMD
Severity        = SrvError
Facility		= ntUPSd
Language        = English
The server does not recognize the requested command.
.
Language		= Symbol
UNKNOWN-COMMAND
.

MessageId		= 0x0003
SymbolicName	= NUT_E_NOTSUPPORTED
Severity        = SrvError
Facility		= ntUPSd
Language        = English
The server does not support the requested feature.
.
Language		= Symbol
FEATURE-NOT-SUPPORTED
.

MessageId		= 0x0004
SymbolicName	= NUT_E_ACCESSDENIED
Severity        = SrvError
Facility		= ntUPSd
Language        = English
The client's host or authentication details are not sufficient to execute the requested command.
.
Language		= Symbol
ACCESS-DENIED
.

MessageId		= 0x0005
SymbolicName	= NUT_E_INVALIDARG
Severity        = SrvError
Facility		= ntUPSd
Language        = English
The client sent an argument to a command which is not recognized or is otherwise invalid in this context.
.
Language		= Symbol
INVALID-ARGUMENT
.

MessageId		= 0x0006
SymbolicName	= NUT_E_UNKNOWN_UPS
Severity        = SrvError
Facility		= ntUPSd
Language        = English
The specified UPS is not known to the server.
.
Language		= Symbol
UNKNOWN-UPS
.

MessageId		= 0x0007
SymbolicName	= NUT_E_VARNOTSUPPORTED
Severity        = SrvError
Facility		= ntUPSd
Language        = English
The specified UPS doesn’t support the variable in the request.
.
Language		= Symbol
VAR-NOT-SUPPORTED
.

MessageId		= 0x0008
SymbolicName	= NUT_E_CMDNOTSUPPORTED
Severity        = SrvError
Facility		= ntUPSd
Language        = English
The specified UPS doesn’t support the instant command in the request.
.
Language		= Symbol
CMD-NOT-SUPPORTED
.

MessageId		= 0x0009
SymbolicName	= NUT_E_CMDFAILED
Severity        = SrvError
Facility		= ntUPSd
Language        = English
The server failed to deliver the instant command request to the driver.
.
Language		= Symbol
INSTCMD-FAILED
.

MessageId		= 0x000A
SymbolicName	= NUT_E_SETFAILED
Severity        = SrvError
Facility		= ntUPSd
Language        = English
The server failed to deliver the set request to the driver.
.
Language		= Symbol
SET-FAILED
.

MessageId		= 0x000B
SymbolicName	= NUT_E_READONLY
Severity        = SrvError
Facility		= ntUPSd
Language        = English
The requested variable in a SET command is not writable.
.
Language		= Symbol
READONLY
.

MessageId		= 0x000C
SymbolicName	= NUT_E_TOOLONG
Severity        = SrvError
Facility		= ntUPSd
Language        = English
The requested value in a SET command is too long.
.
Language		= Symbol
TOO-LONG
.

MessageId		= 0x000D
SymbolicName	= NUT_E_NOTCONFIGURED
Severity        = SrvError
Facility		= ntUPSd
Language        = English
The server hasn’t been configured properly to allow the requested feature to operate.
.
Language		= Symbol
FEATURE-NOT-CONFIGURED
.

MessageId		= 0x000E
SymbolicName	= NUT_E_NODRIVER
Severity        = SrvError
Facility		= ntUPSd
Language        = English
The server can’t perform the requested command, since the driver for that UPS is not connected.
.
Language		= Symbol
DRIVER-NOT-CONNECTED
.

MessageId		= 0x000F
SymbolicName	= NUT_E_STALEDATA
Severity        = SrvError
Facility		= ntUPSd
Language        = English
The server is connected to the driver for the UPS, but that driver isn’t providing regular updates or has specifically marked the data as stale.
.
Language		= Symbol
DATA-STALE
.

MessageId		= 0x0010
SymbolicName	= NUT_E_ALREADY_LOGGED_IN
Severity        = SrvError
Facility		= ntUPSd
Language        = English
The client already sent LOGIN for a UPS and can’t do it again.
.
Language		= Symbol
ALREADY-LOGGED-IN
.

MessageId		= 0x0011
SymbolicName	= NUT_E_USERNAME_SET
Severity        = SrvError
Facility		= ntUPSd
Language        = English
The client has already set a USERNAME, and can’t set another.
.
Language		= Symbol
ALREADY-SET-USERNAME
.

MessageId		= 0x0012
SymbolicName	= NUT_E_PASSWORD_SET
Severity        = SrvError
Facility		= ntUPSd
Language        = English
The client has already set a PASSWORD and can’t set another.
.
Language		= Symbol
ALREADY-SET-PASSWORD
.

MessageId		= 0x0013
SymbolicName	= NUT_E_INVALID_USERNAME
Severity        = SrvError
Facility		= ntUPSd
Language        = English
The client sent an invalid USERNAME.
.
Language		= Symbol
INVALID-USERNAME
.

MessageId		= 0x0014
SymbolicName	= NUT_E_INVALID_PASSWORD
Severity        = SrvError
Facility		= ntUPSd
Language        = English
The client sent an invalid PASSWORD.
.
Language		= Symbol
INVALID-PASSWORD
.

MessageId		= 0x0020
SymbolicName	= NUT_E_ALREADYTLS
Severity        = SrvError
Facility		= ntUPSd
Language        = English
The connection is already in TLS mode.
.
Language		= Symbol
ALREADY-SSL-MODE
.

MessageId		= 0x0021
SymbolicName	= NUT_E_INVALID_VALUE
Severity        = SrvError
Facility		= ntUPSd
Language        = English
The value specified in the request is not valid.
.
Language		= Symbol
INVALID-VALUE
.

;// ///////////////////////////////////////////////////////////////////////////////////////////////
;// Internal Errors
;//
;

MessageId		= 0x0001
SymbolicName	= NUT_E_NO_UPS
Severity        = SrvError
Facility		= UPS
Language        = English
No UPS, PDU, or battery hardware is attached to the system.
.

;#endif//__LOGGED_EVENTS_H__
