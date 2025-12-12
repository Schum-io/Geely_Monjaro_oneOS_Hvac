package com.geely.toolchain.hmi.blur;

import android.content.Context;
import android.os.Build;
import android.util.Base64;
import com.geely.toolchain.hmi.util.ThreadPoolUtils;
import dalvik.system.DexFile;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class ReflectUtils {
    private static final String DEX = "ZGV4CjAzNQC+qDk0htQtTbJAFjm51pzO4KCJaHEBcxZMCgAAcAAAAHhWNBIAAAAAAAAAAHwJAAA4AAAAcAAAABQAAABQAQAACAAAAKABAAAFAAAAAAIAABAAAAAoAgAAAwAAAKgCAABEBwAACAMAAEoEAABNBAAAUAQAAFUEAABbBAAAYgQAAGcEAABvBAAAfwQAAIsEAACdBAAApAQAAKcEAACqBAAArgQAALMEAAC5BAAA3wQAAP4EAAAaBQAALQUAAEAFAABkBQAAhgUAAKkFAAC9BQAA3AUAAPAFAAALBgAAJwYAAE8GAABtBgAAlAYAAKUGAACoBgAAtgYAAMQGAADHBgAAygYAAN4GAAD7BgAACAcAABMHAAAYBwAAIQcAADMHAABGBwAAUAcAAFsHAABnBwAAbQcAAHQHAACEBwAAjQcAAKcHAACuBwAACwAAABAAAAARAAAAEgAAABMAAAAVAAAAFgAAABcAAAAYAAAAGQAAABoAAAAbAAAAHAAAAB0AAAAeAAAAHwAAACEAAAAkAAAAJgAAACcAAAANAAAABAAAACAEAAAOAAAACwAAACgEAAANAAAACwAAACAEAAAPAAAADAAAADAEAAAOAAAADAAAADwEAAAhAAAAEAAAAAAAAAAMAAAAEwAAAAAAAAANAAAAEwAAAEQEAAANAAoABwAAAA0ACgAIAAAADQARAAoAAAANAAAAIgAAAA0ACgAjAAAABAAAACsAAAAEAAIALAAAAAQABAAtAAAABAACAC4AAAAEAAQALwAAAAQABgAwAAAACAAFAAYAAAANAAUABgAAAA4ABQAGAAAADwAFAAYAAAAPAAAAKwAAAA8AAQAsAAAADwADAC0AAAAPAAEALgAAAA8AAwAvAAAADwAHAC8AAAANAAAAEQAAAAgAAAAAAAAACQAAAAAAAACuCAAA8AgAAA4AAAARAAAACAAAAAAAAAD/////AAAAAMIIAAAAAAAADwAAAAEAAAAIAAAAAAAAACAAAAA8CQAAzAgAAAAAAAABAAEAAQAAAPgDAAAEAAAAcBAGAAAADgABAAEAAQAAAPwDAAAFAAAAcRAAAAAADAARAAAAAgACAAIAAAABBAAABQAAAG4gAQAQAAwAEQAAAAIAAgACAAAABwQAAAUAAABuIAMAEAAMABEAAAADAAMAAwAAAA0EAAAFAAAAbjACABACDAARAAAAAwADAAMAAAAUBAAABQAAAG4wBAAQAgwAEQAAAAEAAQABAAAAGwQAAAUAAABuEAUAAAAMABEAAAABAAEAAQAAAPgDAAAEAAAAcBAGAAAADgABAAEAAQAAAAAAAAAEAAAAcBAGAAAADgAGAA4ACQEADgAdAgAADgAZAgAADgANAwAAAA4AEQMAAAAOABUBAA4AAQAAAAoAAAACAAAABAAKAAMAAAAEAAoAEgAAAAIAAAAKABIAAQAAAAQAASgAASkAAyo+OwAEKj47KQAFKj47KVsAAzEuMAAGPGluaXQ+AA5BUFBMSUNBVElPTl9JRAAKQlVJTERfVFlQRQAQQnVpbGRDb25maWcuamF2YQAFREVCVUcAAUkAAUwAAkxMAANMTEwABExMTEwAJExkYWx2aWsvYW5ub3RhdGlvbi9NZXRob2RQYXJhbWV0ZXJzOwAdTGRhbHZpay9hbm5vdGF0aW9uL1NpZ25hdHVyZTsAGkxkYWx2aWsvYW5ub3RhdGlvbi9UaHJvd3M7ABFMamF2YS9sYW5nL0NsYXNzOwARTGphdmEvbGFuZy9DbGFzczwAIkxqYXZhL2xhbmcvQ2xhc3NOb3RGb3VuZEV4Y2VwdGlvbjsAIExqYXZhL2xhbmcvTm9TdWNoRmllbGRFeGNlcHRpb247ACFMamF2YS9sYW5nL05vU3VjaE1ldGhvZEV4Y2VwdGlvbjsAEkxqYXZhL2xhbmcvT2JqZWN0OwAdTGphdmEvbGFuZy9TZWN1cml0eUV4Y2VwdGlvbjsAEkxqYXZhL2xhbmcvU3RyaW5nOwAZTGphdmEvbGFuZy9yZWZsZWN0L0ZpZWxkOwAaTGphdmEvbGFuZy9yZWZsZWN0L01ldGhvZDsAJkxzaXRlL2hhbnNjaGVuL3JlZmxlY3Rpb24vQnVpbGRDb25maWc7ABxMc2l0ZS9oYW5zY2hlbi9yZWZsZWN0aW9uL1I7ACVMc2l0ZS9oYW5zY2hlbi9yZWZsZWN0aW9uL1JlZmxlY3Rpb247AA9SZWZsZWN0aW9uLmphdmEAAVYADFZFUlNJT05fQ09ERQAMVkVSU0lPTl9OQU1FAAFaAAFbABJbTGphdmEvbGFuZy9DbGFzczsAG1tMamF2YS9sYW5nL3JlZmxlY3QvTWV0aG9kOwALYWNjZXNzRmxhZ3MACWNsYXNzTmFtZQADY2x6AAdmb3JOYW1lABBnZXREZWNsYXJlZEZpZWxkABFnZXREZWNsYXJlZE1ldGhvZAAIZ2V0RmllbGQACWdldE1ldGhvZAAKZ2V0TWV0aG9kcwAEbmFtZQAFbmFtZXMADnBhcmFtZXRlclR5cGVzAAdyZWxlYXNlABhzaXRlLmhhbnNjaGVuLnJlZmxlY3Rpb24ABXZhbHVlAFh+fkQ4eyJjb21waWxhdGlvbi1tb2RlIjoicmVsZWFzZSIsImhhcy1jaGVja3N1bXMiOmZhbHNlLCJtaW4tYXBpIjoyMSwidmVyc2lvbiI6IjIuMi43MSJ9AAIBAigcAQQAMhwBFykCAgE2HAUXABcaFwEXFBcCAgMBNhwBGAUCAQIoHAIEAAQAMhwCFyoXMQICATYcBhcAFxQXAhcaFwEXGwIDATYcARgGAgECKBwDBAAEAAQAMhwDFyoXMRczAgIBNhwIFwAXFBcCFxoXJRcUFwMXHAIDATYcARgHAgECKBwBBAAyHAEXKgICATYcBBcAFxQXBBccAgMBNhwBGAkFAAEAABkBGQEZARkBGQeBgASIBgAAAQAIgoAE4AcAAAcACYGABMgHAQmgBgEJvAYBiQH0BgEJ2AYBiQGQBwEJrAcFFzUXNB8EARcFAAADAAAACAgAABUIAAAlCAAAAwAAAC0IAAA+CAAAUAgAAAMAAABYCAAAbQgAAIMIAAADAAAAiwgAAJgIAACmCAAAAAAAAAAAAAAGAAAAAAAAAAoAAAD8CAAACwAAAAwJAAAMAAAAHAkAAA0AAAAMCQAADgAAABwJAAAPAAAALAkAABEAAAAAAAAAAQAAAAAAAAABAAAAOAAAAHAAAAACAAAAFAAAAFABAAADAAAACAAAAKABAAAEAAAABQAAAAACAAAFAAAAEAAAACgCAAAGAAAAAwAAAKgCAAABIAAACQAAAAgDAAADIAAABwAAAPgDAAABEAAABQAAACAEAAACIAAAOAAAAEoEAAAEIAAADAAAAAgIAAAAIAAAAwAAAK4IAAAFIAAAAQAAAPAIAAADEAAABAAAAPwIAAAGIAAAAQAAADwJAAAAEAAAAQAAAHwJAAA=";
    private static final IReflect S_REFLECT = new CacheReflect();
    private static Method sGetDeclaredField;
    private static Method sGetDeclaredMethod;
    private static boolean sInit;

    public interface IReflect {
        IReflectClass from(Class<?> clazz) throws ClassNotFoundException;

        IReflectClass from(ClassLoader classLoader, String className) throws ClassNotFoundException;

        IReflectClass from(Object object) throws ClassNotFoundException;

        IReflectClass from(String className) throws ClassNotFoundException;
    }

    public interface IReflectClass {
        Class<?> clazz();

        IReflectConstructor constructor(Class<?>... parameterTypes) throws NoSuchMethodException;

        IReflectField field(String fieldName) throws NoSuchFieldException;

        IReflectMethod method(String methodName, Class<?>... parameterTypes) throws NoSuchMethodException;
    }

    public interface IReflectConstructor {
        Constructor<?> constructor();

        Object newInstance(Object... args) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException;
    }

    public interface IReflectField {
        Field field();

        Object get(Object o) throws IllegalAccessException, IllegalArgumentException;

        boolean getBoolean(Object o) throws IllegalAccessException, IllegalArgumentException;

        byte getByte(Object o) throws IllegalAccessException, IllegalArgumentException;

        char getChar(Object o) throws IllegalAccessException, IllegalArgumentException;

        double getDouble(Object o) throws IllegalAccessException, IllegalArgumentException;

        float getFloat(Object o) throws IllegalAccessException, IllegalArgumentException;

        int getInt(Object o) throws IllegalAccessException, IllegalArgumentException;

        long getLong(Object o) throws IllegalAccessException, IllegalArgumentException;

        short getShort(Object o) throws IllegalAccessException, IllegalArgumentException;

        void set(Object o, Object o1) throws IllegalAccessException, IllegalArgumentException;

        void setBoolean(Object o, boolean value) throws IllegalAccessException, IllegalArgumentException;

        void setByte(Object o, byte value) throws IllegalAccessException, IllegalArgumentException;

        void setChar(Object o, char value) throws IllegalAccessException, IllegalArgumentException;

        void setDouble(Object o, double value) throws IllegalAccessException, IllegalArgumentException;

        void setFloat(Object o, float value) throws IllegalAccessException, IllegalArgumentException;

        void setInt(Object o, int value) throws IllegalAccessException, IllegalArgumentException;

        void setLong(Object o, long value) throws IllegalAccessException, IllegalArgumentException;

        void setShort(Object o, short value) throws IllegalAccessException, IllegalArgumentException;
    }

    public interface IReflectMethod {
        Object invoke(Object receiver, Object... args) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException;

        Method method();
    }

    public static void bypassHiddenApi(final Context context) {
        if (Build.VERSION.SDK_INT >= 28 && !sInit) {
            sInit = true;
            ThreadPoolUtils.getInstance().execute(new Runnable() { // from class: com.geely.toolchain.hmi.blur.ReflectUtils.1
                @Override // java.lang.Runnable
                public void run() {
                    byte[] bArrDecode = Base64.decode(ReflectUtils.DEX, 2);
                    File codeCacheDir = context.getCodeCacheDir();
                    if (codeCacheDir == null) {
                        return;
                    }
                    File file = new File(codeCacheDir, System.currentTimeMillis() + "." + ReflectUtils.class.getCanonicalName() + ".dex");
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file, false);
                        try {
                            fileOutputStream.write(bArrDecode);
                            fileOutputStream.close();
                            Class clsLoadClass = new DexFile(file).loadClass("site.hanschen.reflection.Reflection", null);
                            Method unused = ReflectUtils.sGetDeclaredMethod = clsLoadClass.getDeclaredMethod("getDeclaredMethod", Class.class, String.class, Class[].class);
                            Method unused2 = ReflectUtils.sGetDeclaredField = clsLoadClass.getDeclaredMethod("getDeclaredField", Class.class, String.class);
                        } finally {
                        }
                    } catch (Throwable unused3) {
                        if (file.exists()) {
                        }
                    }
                    if (file.exists()) {
                        file.delete();
                    }
                    ThreadPoolUtils.getInstance().remove(this);
                }
            });
        }
    }

    public static IReflectClass from(Object object) throws ClassNotFoundException {
        return S_REFLECT.from(object);
    }

    public static IReflectClass from(Class<?> clazz) throws ClassNotFoundException {
        return S_REFLECT.from(clazz);
    }

    public static IReflectClass from(ClassLoader classLoader, String className) throws ClassNotFoundException {
        return S_REFLECT.from(classLoader, className);
    }

    public static IReflectClass from(String className) throws ClassNotFoundException {
        return S_REFLECT.from(className);
    }

    private static class CacheReflect implements IReflect {
        private final Map<ClassLoader, Map<String, IReflectClass>> mCacheClass;

        private CacheReflect() {
            this.mCacheClass = new HashMap();
        }

        @Override // com.geely.toolchain.hmi.blur.ReflectUtils.IReflect
        public IReflectClass from(Object object) throws ClassNotFoundException {
            return from(object.getClass());
        }

        @Override // com.geely.toolchain.hmi.blur.ReflectUtils.IReflect
        public IReflectClass from(Class<?> clazz) throws ClassNotFoundException {
            return from(clazz.getClassLoader(), clazz.getName());
        }

        @Override // com.geely.toolchain.hmi.blur.ReflectUtils.IReflect
        public IReflectClass from(ClassLoader classLoader, String className) throws ClassNotFoundException {
            Map<String, IReflectClass> map = this.mCacheClass.get(classLoader);
            if (map == null) {
                map = new HashMap<>();
                this.mCacheClass.put(classLoader, map);
            }
            IReflectClass iReflectClass = map.get(className);
            if (iReflectClass != null) {
                return iReflectClass;
            }
            DefaultReflectClass defaultReflectClass = new DefaultReflectClass(classLoader.loadClass(className));
            map.put(className, defaultReflectClass);
            return defaultReflectClass;
        }

        @Override // com.geely.toolchain.hmi.blur.ReflectUtils.IReflect
        public IReflectClass from(String className) throws ClassNotFoundException {
            return from(getClass().getClassLoader(), className);
        }
    }

    private static class DefaultReflectClass implements IReflectClass {
        private final Class<?> mClass;
        private final Map<String, IReflectConstructor> mConstructors = new HashMap();
        private final Map<String, IReflectMethod> mMethods = new HashMap();
        private final Map<String, IReflectField> mFields = new HashMap();

        DefaultReflectClass(Class<?> clazz) {
            this.mClass = clazz;
        }

        @Override // com.geely.toolchain.hmi.blur.ReflectUtils.IReflectClass
        public Class<?> clazz() {
            return this.mClass;
        }

        @Override // com.geely.toolchain.hmi.blur.ReflectUtils.IReflectClass
        public IReflectConstructor constructor(Class<?>... parameterTypes) throws NoSuchMethodException {
            StringBuilder sb = new StringBuilder();
            if (parameterTypes != null && parameterTypes.length > 0) {
                for (Class<?> cls : parameterTypes) {
                    sb.append(cls.getName());
                }
            }
            String string = sb.toString();
            IReflectConstructor iReflectConstructor = this.mConstructors.get(string);
            if (iReflectConstructor != null) {
                return iReflectConstructor;
            }
            DefaultReflectConstructor defaultReflectConstructor = new DefaultReflectConstructor(this.mClass.getConstructor(parameterTypes));
            this.mConstructors.put(string, defaultReflectConstructor);
            return defaultReflectConstructor;
        }

        @Override // com.geely.toolchain.hmi.blur.ReflectUtils.IReflectClass
        public IReflectMethod method(String methodName, Class<?>... parameterTypes) throws NoSuchMethodException, SecurityException {
            Method declaredMethod;
            StringBuilder sb = new StringBuilder(methodName);
            if (parameterTypes != null && parameterTypes.length > 0) {
                for (Class<?> cls : parameterTypes) {
                    sb.append(cls.getName());
                }
            }
            String string = sb.toString();
            IReflectMethod iReflectMethod = this.mMethods.get(string);
            if (iReflectMethod != null) {
                return iReflectMethod;
            }
            Class<?> superclass = this.mClass;
            while (true) {
                declaredMethod = null;
                if (superclass == null) {
                    break;
                }
                try {
                    declaredMethod = superclass.getDeclaredMethod(methodName, parameterTypes);
                    break;
                } catch (Exception unused) {
                    if (ReflectUtils.sGetDeclaredMethod != null) {
                        try {
                            declaredMethod = (Method) ReflectUtils.sGetDeclaredMethod.invoke(null, superclass, methodName, parameterTypes);
                            break;
                        } catch (Exception unused2) {
                            // Empty catch block
                        }
                    }
                    superclass = superclass.getSuperclass();
                }
            }
            if (declaredMethod == null) {
                throw new NoSuchMethodException(methodName + " " + Arrays.toString(parameterTypes));
            }
            DefaultReflectMethod defaultReflectMethod = new DefaultReflectMethod(declaredMethod);
            this.mMethods.put(string, defaultReflectMethod);
            return defaultReflectMethod;
        }

        @Override // com.geely.toolchain.hmi.blur.ReflectUtils.IReflectClass
        public IReflectField field(String fieldName) throws NoSuchFieldException {
            Field declaredField;
            IReflectField iReflectField = this.mFields.get(fieldName);
            if (iReflectField != null) {
                return iReflectField;
            }
            Class<?> superclass = this.mClass;
            while (true) {
                declaredField = null;
                if (superclass == null) {
                    break;
                }
                try {
                    declaredField = superclass.getDeclaredField(fieldName);
                    break;
                } catch (Exception unused) {
                    if (ReflectUtils.sGetDeclaredField != null) {
                        try {
                            declaredField = (Field) ReflectUtils.sGetDeclaredField.invoke(null, superclass, fieldName);
                            break;
                        } catch (Exception unused2) {
                            // Empty catch block
                        }
                    }
                    superclass = superclass.getSuperclass();
                }
            }
            if (declaredField == null) {
                throw new NoSuchFieldException(fieldName);
            }
            DefaultReflectField defaultReflectField = new DefaultReflectField(declaredField);
            this.mFields.put(fieldName, defaultReflectField);
            return defaultReflectField;
        }
    }

    private static class DefaultReflectConstructor implements IReflectConstructor {
        private final Constructor<?> mConstructor;

        DefaultReflectConstructor(Constructor<?> constructor) {
            this.mConstructor = constructor;
            constructor.setAccessible(true);
        }

        @Override // com.geely.toolchain.hmi.blur.ReflectUtils.IReflectConstructor
        public Constructor<?> constructor() {
            return this.mConstructor;
        }

        @Override // com.geely.toolchain.hmi.blur.ReflectUtils.IReflectConstructor
        public Object newInstance(Object... args) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
            return this.mConstructor.newInstance(args);
        }
    }

    private static class DefaultReflectMethod implements IReflectMethod {
        private final Method mMethod;

        DefaultReflectMethod(Method method) {
            this.mMethod = method;
            method.setAccessible(true);
        }

        @Override // com.geely.toolchain.hmi.blur.ReflectUtils.IReflectMethod
        public Method method() {
            return this.mMethod;
        }

        @Override // com.geely.toolchain.hmi.blur.ReflectUtils.IReflectMethod
        public Object invoke(Object receiver, Object... args) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            return this.mMethod.invoke(receiver, args);
        }
    }

    private static class DefaultReflectField implements IReflectField {
        private final Field mField;

        DefaultReflectField(Field field) {
            this.mField = field;
            field.setAccessible(true);
        }

        @Override // com.geely.toolchain.hmi.blur.ReflectUtils.IReflectField
        public Field field() {
            return this.mField;
        }

        @Override // com.geely.toolchain.hmi.blur.ReflectUtils.IReflectField
        public Object get(Object o) throws IllegalAccessException, IllegalArgumentException {
            return this.mField.get(o);
        }

        @Override // com.geely.toolchain.hmi.blur.ReflectUtils.IReflectField
        public boolean getBoolean(Object o) throws IllegalAccessException, IllegalArgumentException {
            return this.mField.getBoolean(o);
        }

        @Override // com.geely.toolchain.hmi.blur.ReflectUtils.IReflectField
        public byte getByte(Object o) throws IllegalAccessException, IllegalArgumentException {
            return this.mField.getByte(o);
        }

        @Override // com.geely.toolchain.hmi.blur.ReflectUtils.IReflectField
        public char getChar(Object o) throws IllegalAccessException, IllegalArgumentException {
            return this.mField.getChar(o);
        }

        @Override // com.geely.toolchain.hmi.blur.ReflectUtils.IReflectField
        public short getShort(Object o) throws IllegalAccessException, IllegalArgumentException {
            return this.mField.getShort(o);
        }

        @Override // com.geely.toolchain.hmi.blur.ReflectUtils.IReflectField
        public int getInt(Object o) throws IllegalAccessException, IllegalArgumentException {
            return this.mField.getInt(o);
        }

        @Override // com.geely.toolchain.hmi.blur.ReflectUtils.IReflectField
        public long getLong(Object o) throws IllegalAccessException, IllegalArgumentException {
            return this.mField.getLong(o);
        }

        @Override // com.geely.toolchain.hmi.blur.ReflectUtils.IReflectField
        public float getFloat(Object o) throws IllegalAccessException, IllegalArgumentException {
            return this.mField.getFloat(o);
        }

        @Override // com.geely.toolchain.hmi.blur.ReflectUtils.IReflectField
        public double getDouble(Object o) throws IllegalAccessException, IllegalArgumentException {
            return this.mField.getDouble(o);
        }

        @Override // com.geely.toolchain.hmi.blur.ReflectUtils.IReflectField
        public void set(Object o, Object value) throws IllegalAccessException, IllegalArgumentException {
            this.mField.set(o, value);
        }

        @Override // com.geely.toolchain.hmi.blur.ReflectUtils.IReflectField
        public void setBoolean(Object o, boolean value) throws IllegalAccessException, IllegalArgumentException {
            this.mField.setBoolean(o, value);
        }

        @Override // com.geely.toolchain.hmi.blur.ReflectUtils.IReflectField
        public void setByte(Object o, byte value) throws IllegalAccessException, IllegalArgumentException {
            this.mField.setByte(o, value);
        }

        @Override // com.geely.toolchain.hmi.blur.ReflectUtils.IReflectField
        public void setChar(Object o, char value) throws IllegalAccessException, IllegalArgumentException {
            this.mField.setChar(o, value);
        }

        @Override // com.geely.toolchain.hmi.blur.ReflectUtils.IReflectField
        public void setShort(Object o, short value) throws IllegalAccessException, IllegalArgumentException {
            this.mField.setShort(o, value);
        }

        @Override // com.geely.toolchain.hmi.blur.ReflectUtils.IReflectField
        public void setInt(Object o, int value) throws IllegalAccessException, IllegalArgumentException {
            this.mField.setInt(o, value);
        }

        @Override // com.geely.toolchain.hmi.blur.ReflectUtils.IReflectField
        public void setLong(Object o, long value) throws IllegalAccessException, IllegalArgumentException {
            this.mField.setLong(o, value);
        }

        @Override // com.geely.toolchain.hmi.blur.ReflectUtils.IReflectField
        public void setFloat(Object o, float value) throws IllegalAccessException, IllegalArgumentException {
            this.mField.setFloat(o, value);
        }

        @Override // com.geely.toolchain.hmi.blur.ReflectUtils.IReflectField
        public void setDouble(Object o, double value) throws IllegalAccessException, IllegalArgumentException {
            this.mField.setDouble(o, value);
        }
    }
}