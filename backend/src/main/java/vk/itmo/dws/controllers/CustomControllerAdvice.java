package vk.itmo.dws.controllers;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import vk.itmo.dws.dto.exception.SimpleExceptionResponseDto;
import vk.itmo.dws.dto.exception.ValidationExceptionDto;
import vk.itmo.dws.dto.exception.ValidationResponseDto;
import vk.itmo.dws.exceptions.account.PasswordsMismatchException;

import java.util.ArrayList;
import java.util.List;

@RestControllerAdvice
public class CustomControllerAdvice {

    /**
     * Перехватчик ошибок валидатора для @Pattern, ...
     * @param exception - перехватываемая ошибка валидатора
     * @return ValidationResponseDto - дто ошибки валидации, включает полный stack-trace ошибок, если их несколько
     */

    @ExceptionHandler(value = MethodArgumentNotValidException.class)
    @ResponseStatus(HttpStatus.UNPROCESSABLE_ENTITY)
    public ValidationResponseDto validationExceptionHandler(MethodArgumentNotValidException exception){
        List<ValidationExceptionDto> exceptionDto = new ArrayList<>();
        exception.getAllErrors().forEach(objectError -> {
            ValidationExceptionDto validationExceptionDto = new ValidationExceptionDto(String.format("Exception throw in class - %s", objectError.getObjectName()),
                    objectError.getDefaultMessage(), objectError.getClass().getName());
            exceptionDto.add(validationExceptionDto);
        });
        return new ValidationResponseDto(exceptionDto);
    }

    @ExceptionHandler(value = PasswordsMismatchException.class)
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public SimpleExceptionResponseDto authenticationExceptionHandler(PasswordsMismatchException exception, HttpServletRequest request){
        return new SimpleExceptionResponseDto(request.getServletPath(), HttpStatus.BAD_REQUEST.name(), HttpStatus.BAD_REQUEST.value(), exception.getMessage());
    }


}
