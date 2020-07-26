package tareacompi2;
import java_cup.runtime.*;

%%
%{
    //coidgo de usuario en sintaxis java
    

%}

    //directivas
%public 
%class AnalizadorLexicoT1
%cupsym SimbolosT1
%cup
%char
%line
%column
%full
//%ignorecase

//%unicode

    //expreciones regulares
Digito          = [0-7]
Numero          = {Digito} {Digito}*
Espacio         = [ " "\t\r\n]+
%%

<YYINITIAL> {
    {Espacio}                       {/*Ignore*/}
    {Digito}                        { /**System.out.println("Digito: "+yytext());**/ return new Symbol(SimbolosT1.DIGITO , yycolumn, yyline, yytext());}
    .                               {System.out.println("error Lexico: "+"Columna: "+yycolumn+1+" linea: "+ yyline+1 + "Token: "+yytext());
                                    }
    
}