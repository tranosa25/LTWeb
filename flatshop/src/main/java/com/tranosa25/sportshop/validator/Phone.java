package com.tranosa25.sportshop.validator;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.validation.Constraint;
import javax.validation.Payload;

@Documented
@Constraint(validatedBy = PhoneValidator.class)
@Retention(RetentionPolicy.RUNTIME)
public @interface Phone {
  String message() default "{Phone}";
  Class<?>[] groups() default {};
  Class<? extends Payload>[] payload() default {};
}