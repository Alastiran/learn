package com.justin.examples;

public class ComplexExample {
	public static void main(String[] args) {
		System.out.println("ComplexExample start");

		MsgGenerator generator = new MsgGenerator();

		Thread thread = new Thread(generator);
		thread.start();

		try {
			synchronized(generator) {
				generator.wait();
			}
		} catch (InterruptedException ie) {
			System.err.println("Generator Wait Interrrupted!!!");
			ie.printStackTrace();
		} finally {
			System.out.println("Generator Wait End");
		}

		generator.printList();
		System.out.println("ComplexExample end");
	}
}

