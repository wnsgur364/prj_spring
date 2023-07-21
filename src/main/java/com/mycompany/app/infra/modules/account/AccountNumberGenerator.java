package com.mycompany.app.infra.modules.account;

import java.util.Random;

public class AccountNumberGenerator {
	
	public static String generateAccountNumber() {
	        Random random = new Random();
	        int firstPart = random.nextInt(10000);
	        int secondPart = random.nextInt(100);
	        int thirdPart = random.nextInt(10000);

	        return String.format("3333-01-%04d", firstPart, secondPart, thirdPart);
	    }
	
}
