package vk.itmo.dws.exceptions.account;

public class PasswordsMismatchException extends RuntimeException {
    public PasswordsMismatchException() {
        super("Passwords do not match");
    }
}
