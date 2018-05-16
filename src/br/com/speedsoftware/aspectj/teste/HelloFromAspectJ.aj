package br.com.speedsoftware.aspectj.teste;

public aspect HelloFromAspectJ {
	pointcut mainMethod() : execution (public static void main(String[]));
	after() returning : mainMethod() {
		System.out.println("Hello World");
	}
	
	before(): mainMethod() {
		System.out.println("We are the world!");
	}
}
