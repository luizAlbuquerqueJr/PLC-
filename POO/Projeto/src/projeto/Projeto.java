/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projeto;

/**
 *
 * @author laaj
 */
public class Projeto {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        System.out.println("Conta");
        Conta minhaconta = new Conta("1251",56);
        Conta tuaconta = new Conta("1251",56);
        
        Conta c = new Conta("123-X", 8.0);
        c.creditar(10.0);
        c.debitar(5.0);
        System.out.println("Conta "+c.getNumero());
        System.out.println(" saldo "+c.getSaldo());
        
        System.out.println("Conta "+minhaconta.getNumero());
        System.out.println(" saldo "+minhaconta.getSaldo());
        
        
        System.out.println(c);
        
        
        
    }
    
}
