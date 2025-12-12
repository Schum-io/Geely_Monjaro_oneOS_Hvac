package com.geely.hvac.utils;

import com.sensorsdata.analytics.android.sdk.util.Base64Coder;
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
public class StackPrinter {
    public static String getStack() {
        StringBuilder sb = new StringBuilder();
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        int length = stackTrace.length;
        if (length <= 3) {
            return "";
        }
        for (int i = 3; i < length; i++) {
            sb.append(stackTrace[i].toString()).append("\n");
        }
        return sb.toString();
    }

    public static String getExceptionStack(Throwable e) {
        if (e == null) {
            return "";
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        e.printStackTrace(new PrintStream(byteArrayOutputStream));
        try {
            return byteArrayOutputStream.toString(Base64Coder.CHARSET_UTF8);
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            return "";
        }
    }
}
