/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tareacompi2;

import java.io.StringReader;
import java.util.Scanner;

/**
 *
 * @author LENOVO-PC
 */
public class TareaCompi2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws Exception {
//        Scanner s = new Scanner(System.in);
//        System.out.println("Escribe el numero de base 8");
//        String texto = s.nextLine();
        String texto = "7g64";
        AnalizadorLexicoT1 lexico = new AnalizadorLexicoT1(new StringReader(texto));
        AnalizadorSintacticoT1 sintactico = new AnalizadorSintacticoT1(lexico);
        sintactico.parse();
        //System.out.println("El numero es: " + texto);
    }
    
}
