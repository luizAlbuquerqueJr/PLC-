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
public class Conta {
    private String numero;
    private double saldo;
    
    // o uso do this serve para referir a classe em uso
    
    //construtor
    public Conta (String numeroInicial, double saldoInicial){
        saldo = saldoInicial;
        numero = numeroInicial;
    }
    // caso nao tenha construtor será iniciado a classe com os atributo default
    //  int,... double = o
    //  boolean = false
    // null para tipos referencias
    
    
    
    public void creditar(double valor){
        saldo += valor;
    }
    public void debitar(double valor){
        saldo -= valor;
    }
    
    public String getNumero(){
        return numero;
    }
    public double getSaldo(){
        return saldo;
    }
    
}
