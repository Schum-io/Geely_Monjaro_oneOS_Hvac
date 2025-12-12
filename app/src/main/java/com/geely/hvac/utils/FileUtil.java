package com.geely.hvac.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* loaded from: classes.dex */
public class FileUtil {
    public static void copyFile(File file, File target) throws Throwable {
        copyFile(file, target, true);
    }

    public static boolean writeText(File file, String str, boolean append, Charset charset) throws Throwable {
        if (file != null && file.exists()) {
            if (str == null) {
                str = "null";
            }
            FileOutputStream fileOutputStream = null;
            try {
                fileOutputStream = new FileOutputStream(file, append);
                fileOutputStream.write(str.getBytes(charset));
                try {
                    fileOutputStream.close();
                    fileOutputStream = null;
                    return true;
                } catch (IOException e) {
                    e.printStackTrace();
                    return true;
                }
            } catch (Exception unused) {
                return false;
            } catch (Throwable th) {
                throw th;
            } finally {
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
        return false;
    }

    public static String readText(InputStream is) throws IOException {
        if (is == null) {
            return null;
        }
        InputStreamReader inputStreamReader = new InputStreamReader(is);
        try {
            try {
                char[] cArr = new char[1024];
                StringBuilder sb = new StringBuilder();
                while (true) {
                    int i = inputStreamReader.read(cArr);
                    if (i == -1) {
                        break;
                    }
                    sb.append(new String(cArr, 0, i));
                }
                return sb.toString();
            } finally {
                try {
                    inputStreamReader.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        } catch (IOException e2) {
            e2.printStackTrace();
            try {
                inputStreamReader.close();
            } catch (IOException e3) {
                e3.printStackTrace();
            }
            return null;
        }
    }

    public static boolean writeText(File file, String str) {
        try {
            return writeText(file, str, false, StandardCharsets.UTF_8);
        } catch (Throwable e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean appendText(File file, String str) {
        try {
            return writeText(file, str, true, StandardCharsets.UTF_8);
        } catch (Throwable e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean copyFile(File from, File target, boolean deleteTarget) throws Throwable {
        if (from != null && from.exists() && target != null) {
            if (target.exists()) {
                if (!deleteTarget) {
                    return false;
                }
                target.delete();
            }
            FileInputStream fileInputStream = null;
            FileOutputStream fileOutputStream = null;
            try {
                target.createNewFile();
                fileInputStream = new FileInputStream(from);
                fileOutputStream = new FileOutputStream(target);
                byte[] bArr = new byte[1024];
                while (true) {
                    int i = fileInputStream.read(bArr);
                    if (i == -1) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, i);
                }
                
                try {
                    fileInputStream.close();
                    fileInputStream = null;
                    fileOutputStream.close();
                    fileOutputStream = null;
                    return true;
                } catch (IOException e) {
                    e.printStackTrace();
                    return true;
                }
            } catch (Exception unused) {
                return false;
            } catch (Throwable th) {
                throw th;
            } finally {
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        return false;
    }
}
