package net.study.podstogramm.exception;

public class CantCompleteClientRequestException extends RuntimeException {
	private static final long serialVersionUID = -1834516952586746439L;
	
	public CantCompleteClientRequestException(String message) {
		super(message);
	}

	public CantCompleteClientRequestException(Throwable cause) {
		super(cause);
	}

	public CantCompleteClientRequestException(String message, Throwable cause) {
		super(message, cause);
	}
}
