%{
	#include<stdio.h>
%}



%%
">>>"		{printf("COMMENTLINE ");}
">>|"		{printf("OPENCOMMENT ");}
"|>>"		{printf("CLOSECOMMENT ");}
"WHITESPACE"	;
TRUE|FALSE|BOOL	{printf("BOOLEAN ");}
"FUNCTION"	{printf("FUNCTION ");}
"ENDF"		{printf("END FUNCTION ");}
"RETURN"	{printf("RETURN ");}
"IF"		{printf("IF ");}
"ELSE"		{printf("ELSE ");}
"ELF"		{printf("ELSE IF ");}
"DO"		{printf("DO ");}
"WHILE"		{printf("WHILE ");}
"LOOPW"		{printf("END WHILE ");}
"FOR"		{printf("FOR ");}
"LOOPF"		{printf("END FOR ");}
"TRY"		{printf("TRY ");}
"CATCH"		{printf("CATCH ");}
"THEN"		{printf("THEN ");}
"SWITCH"	{printf("SWITCH ");}
"CASE"		{printf("CASE ");}
"IMPORT"	{printf("IMPORT ");}
"STOP"		{printf("BREAK ");}
"CONTINUE"	{printf("CONTINUE ");}
"PRINTLOG"	{printf("CONSOLPRINT ");}
"SCANLOG"	{printf("CONSOLSCANNER ");}
"NL"		{printf("\n");}
\^              {printf("POW ");}
\+              {printf("PLUS ");}
\-              {printf("MINUS ");}
\*              {printf("MULTIPLE ");}
\/              {printf("DIVIDE");}
\%              {printf("MOD ");}
\<              {printf("LESSTHAN");}
\>              {printf("GREATERTHAN");}
\>+		{printf("INCREASE ");}
\>-		{printf("DECREASE ");}
":"		{printf("COLON ");}
";"		{printf("SEMICOLON ");}
","		{printf("COMMA ");}
\=		{printf("EQUAL ");}
\!=		{printf("ISNOTEQUAL? ");}
\=>		{printf("EQUALORGREAT ");}
\=<		{printf("EQUALORLESS ");}
\>=		{printf("EQUALORGREAT ");}
\<=		{printf("EQUALORLESS ");}
\&&		{printf("AND ");}
\><		{printf("OR ");}
\(		{printf("OPENBR ");}
\)		{printf("CLOSEBR ");}
\{		{printf("OPENCBR ");}
\}		{printf("CLOSECBR ");}
\[		{printf("OPENSBR ");}
\]		{printf("CLOSESBR ");}
\"		{printf("QUOTES ");}
[ \t\n]					;
[a-zA-Z_]+[0-9]* 			{printf("STR ");}
[+-]?[0-9]+    				{printf("INT ");}
[+-]?[0-9]+[\.][0-9]*		        {printf("DINT ");}
^\d*\.?\d*$				{printf("FLOAT ");}
.					{printf("Syntax Error!");}
%%


