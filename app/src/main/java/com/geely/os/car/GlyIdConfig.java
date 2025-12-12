package com.geely.os.car;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD, ElementType.TYPE, ElementType.FIELD, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface GlyIdConfig {
    public static final int ID_TYPE_FUNCTION = 2;
    public static final int ID_TYPE_INFO = 1;
    public static final int ID_TYPE_SENSOR = 3;

    String alias() default "";

    String name() default "";

    int type() default 2;
}
