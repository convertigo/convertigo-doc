---
title: Manual Appendixes
keywords: pages, authoring, exclusion, frontmatter
last_updated: 21/03/2019
summary: "This chapter contains all appendixes related to the Reference Manual"
sidebar: c8o_sidebar
permalink: /reference-manual/appendixes/
---
## Keycodes table

This appendix contains the list of keycodes Convertigo can send to any HTML object through a Key statement.

Table A - 1: Keycode table

Key Pressed | Javascript KeyCode
--- | ---
backspace | 8
tab | 9
enter | 13
shift | 16
ctrl | 17
alt | 18
pause/break | 19
caps lock | 20
escape | 27
page up | 33
page down | 34
end | 35
home | 36
left arrow | 37
up arrow | 38
right arrow | 39
down arrow | 40
insert | 45
delete | 46
0 | 48
1 | 49
2 | 50
3 | 51
4 | 52
5 | 53
6 | 54
7 | 55
8 | 56
9 | 57
a | 65
b | 66
c | 67
d | 68
e | 69
f | 70
g | 71
h | 72
i | 73
j | 74
k | 75
l | 76
m | 77
n | 78
o | 79
p | 80
q | 81
r | 82
s | 83
t | 84
u | 85
v | 86
w | 87
x | 88
y | 89
z | 90
left window key | 91
right window key | 92
select key | 93
numpad 0 | 96
numpad 1 | 97
numpad 2 | 98
numpad 3 | 99
numpad 4 | 100
numpad 5 | 101
numpad 6 | 102
numpad 7 | 103
numpad 8 | 104
numpad 9 | 105
multiply | 106
add | 107
subtract | 109
decimal point | 110
divide | 111
f1 | 112
f2 | 113
f3 | 114
f4 | 115
f5 | 116
f6 | 117
f7 | 118
f8 | 119
f9 | 120
f10 | 121
f11 | 122
f12 | 123
num lock | 144
scroll lock | 145
semi-colon | 186
equal sign | 187
comma | 188
dash | 189
period | 190
forward slash | 191
grave accent | 192
open bracket | 219
back slash | 220
close bracket | 221
single quote | 222

## Date format - Usable symbols

This appendix contains the list of usable symbols for formatting dates.

Date and time formats are specified by date and time pattern strings. Within date and time pattern strings, unquoted letters from 'A' to 'Z' and from 'a' to 'z' are interpreted as pattern letters representing the components of a date or time string.

Text can be quoted using single quotes (') to avoid interpretation. "''" represents a single quote. All other characters are not interpreted; they're simply copied into the output string during formatting or matched against the input string during parsing.

The following pattern letters are defined (all other characters from 'A' to 'Z' and from 'a' to 'z' are reserved):

Table A - 2: Date format - Usable Symbols

G | Era designator | Text | AD
--- | --- | --- | ---
y | Year | Year | 1996 & 96
M | Month in year | Month | July & Jul & 07
w | Week in year | Number | 27
W | Week in month | Number | 2
D | Day in year | Number | 189
d | Day in month | Number | 10
F | Day of week in month | Number | 2
E | Day in week | Text | Tuesday & Tue
a | Am/pm marker | Text | PM
H | Hour in day (0-23) | Number | 0
k | Hour in day (1-24) | Number | 24
K | Hour in am/pm (0-11) | Number | 0
h | Hour in am/pm (1-12) | Number | 12
m | Minute in hour | Number | 30
s | Second in minute | Number | 55
S | Millisecond | Number | 978
z | Time zone | General time zone | Pacific Standard Time & PST & GMT-08:00
Z | Time zone | RFC 822 time zone | -0800

## Convertigo paths variables - Usable symbols

This appendix contains the list of Convertigo paths variables available in Site Clipper objects using **replacement strings**.
In replacement string properties, you can use specific symbols, that will allow you to compute in runtime some well known paths.

The following symbols are available:

Table A - 3: Convertigo paths variables - Usable Symbols

Variable name | Retreived value
--- | ---
project_path | retrieves the path to your current project
siteclipper_path | retrieves the Site Clipper path
host_path | retrieves the Site Clipper path and the target host path (without the resource path)
tail_path | retrieves the Site Clipper path, the target host path and the resource path (without the resource)

In order to use such symbols, just add $< symbol >$ into your replacement string value. You can use as many symbols as you want and at any location.
All symbols are computed accordingly to the current project/connector/context.
You can use them in order to make the objects using replacement strings more maintainable and simplier. This is also useful because you do not have to deal with project name (it can change for instance between a development environment and a production one). This makes your string replacements dynamic.

### Examples

Let's say Convertigo receives the following Site Clipper request:
{% include image.html file="man_img/Usable-symbol.jpg" url="images/man_img/Usable-symbol.jpg" alt="Uable symbols" caption="Usable symbols" %}
The previously described variables are computed with the following values:
- $project_path$ = "/convertigo/projects/my_project"
- $siteclipper_path$ = "/convertigo/projects/my_project/connector=my_connector,context=my_context.siteclipper"
- $host_path$ = "/convertigo/projects/my_project/connector=my_connector,context=my_context.siteclipper/http/remote_host,18080"
- $tail_path$ = "/convertigo/projects/my_project/connector=my_connector,context=my_context.siteclipper/http/remote_host,18080/remote/path" 

{{site.data.alerts.note}}
All these symbols don't contain the convertigo host ("my_server:8080") and never contain trailing slash.
{{site.data.alerts.end}}

## Legacy emulator actions table

An action is a special keystroke that an emulator can execute as *ENTER* or *SOMMAIRE*. This appendix contains the list of the valid emulator actions Convertigo can send to Javelin emulator, depending on the emulator type.

Table A - 4: Videotex emulator - Actions table

Description | Code
--- | ---
Suite | KSuite
Sommaire | KSommaire
Guide | KGuide
Répétition | KRepetition
Annulation | KAnnulation
Correction | KCorrection
Retour | KRetour
Envoi | KEnvoi
Connexion/Fin | KCnxFin

Table A - 5: VT220 emulator - Actions table

Description | Code
--- | ---
F1 | F01
F2 | F02
F3 | F03
F4 | F04
F5 | F05
F6 | F06
F7 | F07
F8 | F08
F9 | F09
F10 | F10
F11 | F11
F12 | F12

Table A - 6: Bull emulator - Actions table

Description | Code
--- | ---
FKCx [1..12] | FKCx
Right arrow | RIGHT
Left arrow | LEFT
Up arrow | UP
Down arrow | DOWN
Delete active partition | CLEARAP
Delete end of partition | CLEAREP
Initialize active partition | INITAP
Initialize two partitions | INITBP
Partial initialization | INITPA
Insert line | INSLINE
Delete line | SUPLINE
Delete end of line | ERAEOL
Move cursor to begin of line | CURBOL
Move cursor to begin of map | CURHOME
Delete character | DELCHAR
Insert character | INSCHAR
Tabulation | TAB
Back tabulation | BTAB
Insert tabulation | INSTAB
Delete tabulation | CLRTAB
Baskspace | BS
Total transmission | XMITALL
Transmission | XMIT
Break | BREAK

Table A - 7: IBM emulator - Actions table

Description | Code
--- | ---
PAx [1..3] | KEY_PAx [1..3]
SysReq | KEY_SYSREQ
Enter | KEY_ENTER
Attn | KEY_ATTN
PFx [1..24] | KEY_PFx [1..24]
Right arrow | KEY_CURRIGHT
Left arrow | KEY_CURLEFT
Up arrow | KEY_CURUP
Down arrow | KEY_CURDOWN
Backspace | KEY_BACKSP
Tabulation | KEY_TAB
Back tabulation | KEY_BACKTAB
New line | KEY_NEWLINE
Move cursor to begin of map | KEY_HOME
Insert | KEY_INSERT
Delete | KEY_DELCHAR
Reset | KEY_RESET
Duplication | KEY_DUP
Field mark | KEY_FLDMRK
Delete end of line | KEY_ERASEEOF
Delete entry | KEY_ERASEINPUT
Current selection | KEY_CURSEL
Clear | KEY_CLEAR 