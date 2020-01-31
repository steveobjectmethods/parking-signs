/*
@licstart  The following is the entire license notice for the
grammar in this file.
Copyright (C) 2020  Stephen V. Kowalski
steve@objectmethods.com
The grammar in this page is free software: you can
redistribute it and/or modify it under the terms of the GNU
General Public License (GNU GPL) as published by the Free Software
Foundation, either version 3 of the License, or (at your option)
any later version.  The code is distributed WITHOUT ANY WARRANTY;
without even the implied warranty of MERCHANTABILITY or FITNESS
FOR A PARTICULAR PURPOSE.  See the GNU GPL for more details.
As additional permission under GNU GPL version 3 section 7, you
may distribute non-source (e.g., minimized or compacted) forms of
that code without the copy of the GNU GPL normally required by
section 4, provided you include this license notice and a URL
through which recipients can access the Corresponding Source.
@licend  The above is the entire license notice
for the grammar in this file.
*/

grammar StreetSweepingSignGrammar;

streetSweepingSign
    : NO?  PARKING?  timeRange  day  streetSweeping
    ;

streetSweeping : STREET ( SWEEPING | CLEANING ) ;

timeRange : hour to hour ;

to : TO | DASH ;
TO : 'TO' ;
DASH : '-' ;

day : MON | TUE | WED | THU | FRI | SAT | SUN ;
MON : 'MONDAY' ;
TUE : 'TUESDAY' ;
WED : 'WEDNESDAY' ;
THU : 'THURSDAY' ;
FRI : 'FRIDAY' ;
SAT : 'SATURDAY' ;
SUN : 'SUNDAY' ;

NO : 'NO' ;
PARKING : 'PARKING' ;

hour : twelveAM | oneAM | twoAM | threeAM | fourAM | fiveAM
     | sixAM | sevenAM | eightAM | nineAM | tenAM | elevenAM
     | twelvePM | onePM | twoPM | threePM | fourPM | fivePM
     | sixPM | sevenPM | eightPM | ninePM | tenPM | elevenPM ;

twelveAM : (TWELVE AM) | (TWELVE MIDNIGHT) | MIDNIGHT ;
oneAM : ONE AM ;
twoAM : TWO AM ;
threeAM: THREE AM ;
fourAM: FOUR AM ;
fiveAM: FIVE AM ;
sixAM: SIX AM ;
sevenAM: SEVEN AM ;
eightAM: EIGHT AM ;
nineAM: NINE AM ;
tenAM: TEN AM ;
elevenAM: ELEVEN AM ;
twelvePM: (TWELVE PM) | (TWELVE NOON) | NOON ;
onePM: ONE PM ;
twoPM: TWO PM ;
threePM: THREE PM ;
fourPM: FOUR PM ;
fivePM: FIVE PM ;
sixPM: SIX PM ;
sevenPM: SEVEN PM ;
eightPM: EIGHT PM ;
ninePM: NINE PM ;
tenPM: TEN PM ;
elevenPM: ELEVEN PM ;

AM : 'AM' ;
PM : 'PM' ;
NOON : 'NOON' ;
MIDNIGHT : 'MIDNIGHT' ;
TEN : '10';
ELEVEN : '11' ;
TWELVE : '12';
ONE : '1' ;
TWO : '2' ;
THREE : '3' ;
FOUR : '4' ;
FIVE : '5' ;
SIX : '6' ;
SEVEN : '7' ;
EIGHT : '8' ;
NINE : '9' ;


STREET : 'STREET' ;
SWEEPING : 'SWEEPING' ;
CLEANING : 'CLEANING' ;

WS : [ \t\r\n]+ -> skip ;
