package com.justin.examples;

public class SimpleExampleWErrorHandling {
	private int number;

	public SimpleExampleWErrorHandling() { }

	//------ ERROR HANDLING PART 1
	public void setValue(int val) throws Exception {
		if (val < 0) throw new Exception(
				"setValue Exception - Value that is set is Negative!");
		number = val;
	}

	public int getNumber() {
		return number;
	}

	// override toString
	@Override
	public String toString() {
		return Integer.toString(number);
	}

	public static void main(String[] args) {
		for(int i=0;i<10;i++) {
			SimpleExample example = new SimpleExample();

			if(i/2 <= 2) {
				try { example.setValue(i); } //part 4
				catch (Exception e) { e.printStackTrace(); }
			} else {
				try { example.setValue(i*10); } //part 4
				catch (Exception e) { e.printStackTrace(); }
			}

			System.out.println("SimpleExample #" + i +
					"'s value is " + example.getNumber());
		}

		showErrorHandling(); //--part 2
	}

	public static void showErrorHandling() {
		try {
			System.out.println();
			System.out.println("SimpleExampleWErrorHandling BadValue Insert Case Start");
			SimpleExampleWErrorHandling example = new SimpleExampleWErrorHandling();
			example.setValue(-10);
			System.out.println("SimpleExampleWErrorHandling BadValue'svalue is " + example.getNumber());
			System.out.println("SimpleExampleWErrorHandling BadValue Insert Case End");
		} catch (Exception e) {
			System.err.println("SimpleExampleWErrorHandling BadValue " +
								"Insert Case threw an exception");
			e.printStackTrace();
		} finally {
			System.out.println("simpleExampleWErrorHandling BadValue " + "Insert Case Finally called");
		}
	}
}
