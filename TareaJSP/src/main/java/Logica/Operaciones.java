/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Logica;

/**
 * 
 * @author Joel Enriquez
 */
public class Operaciones {

    private double numero1;
    private double numero2;
    
    public Operaciones(double numero1, double numero2){
        this.numero1 = numero1;
        this.numero2 = numero2;
    }
    
    public double sumarNumeros(){
        return numero1+numero2;
    }
    
    public double multiplicarNumeros(){
        return numero1*numero2;
    }
    
    public double numeroMayor(){
        if (numero1>=numero2) {
            return numero1;
        }
        else{
            return numero2;
        }
    }
    
    public double potenciaNumeros(){
        return Math.pow(numero1, numero2);
    }
    
    public String numeroBinario(double numero){
        return Long.toBinaryString((long)numero);
    }
}
