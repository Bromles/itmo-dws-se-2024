package vk.itmo.dws.exception;

public class ClassAlreadyBoughtException extends RuntimeException {
    public ClassAlreadyBoughtException(String message) {
        super(message);
    }
}
