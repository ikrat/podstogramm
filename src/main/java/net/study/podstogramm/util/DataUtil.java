package net.study.podstogramm.util;

import java.util.Random;

import org.apache.commons.lang.WordUtils;

public class DataUtil {
	
	public static String normalizeName(String name) {
		return name.trim().toLowerCase();
	}

	public static String capitalizeName(String name) {
		return WordUtils.capitalize(normalizeName(name));
	}
	
	public static String generateLogin(String firstName, String lastName) {
		return normalizeName(firstName) + UID_DELIMETER + normalizeName(lastName);
	}
	
	public static String regenerateLoginWithRandomSuffix(String baseLogin, String alphabet, int letterCount) {
		return baseLogin + UID_DELIMETER + generateRandomSuffix(alphabet, letterCount);
	}
	
	public static String generateRandomSuffix(String alphabet, int letterCount) {
		Random r = new Random();
		StringBuilder uid = new StringBuilder();
		for (int i = 0; i < letterCount; i++) {
			uid.append(alphabet.charAt(r.nextInt(alphabet.length())));
		}
		return uid.toString();
	}
	
	private static final String UID_DELIMETER = "-";
}
