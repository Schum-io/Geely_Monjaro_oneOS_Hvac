.class public Lcom/geely/toolchain/hmi/blur/ReflectUtils;
.super Ljava/lang/Object;
.source "ReflectUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectField;,
        Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectMethod;,
        Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectConstructor;,
        Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectClass;,
        Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflect;,
        Lcom/geely/toolchain/hmi/blur/ReflectUtils$DefaultReflectField;,
        Lcom/geely/toolchain/hmi/blur/ReflectUtils$DefaultReflectMethod;,
        Lcom/geely/toolchain/hmi/blur/ReflectUtils$DefaultReflectConstructor;,
        Lcom/geely/toolchain/hmi/blur/ReflectUtils$DefaultReflectClass;,
        Lcom/geely/toolchain/hmi/blur/ReflectUtils$CacheReflect;
    }
.end annotation


# static fields
.field private static final DEX:Ljava/lang/String; = "ZGV4CjAzNQC+qDk0htQtTbJAFjm51pzO4KCJaHEBcxZMCgAAcAAAAHhWNBIAAAAAAAAAAHwJAAA4AAAAcAAAABQAAABQAQAACAAAAKABAAAFAAAAAAIAABAAAAAoAgAAAwAAAKgCAABEBwAACAMAAEoEAABNBAAAUAQAAFUEAABbBAAAYgQAAGcEAABvBAAAfwQAAIsEAACdBAAApAQAAKcEAACqBAAArgQAALMEAAC5BAAA3wQAAP4EAAAaBQAALQUAAEAFAABkBQAAhgUAAKkFAAC9BQAA3AUAAPAFAAALBgAAJwYAAE8GAABtBgAAlAYAAKUGAACoBgAAtgYAAMQGAADHBgAAygYAAN4GAAD7BgAACAcAABMHAAAYBwAAIQcAADMHAABGBwAAUAcAAFsHAABnBwAAbQcAAHQHAACEBwAAjQcAAKcHAACuBwAACwAAABAAAAARAAAAEgAAABMAAAAVAAAAFgAAABcAAAAYAAAAGQAAABoAAAAbAAAAHAAAAB0AAAAeAAAAHwAAACEAAAAkAAAAJgAAACcAAAANAAAABAAAACAEAAAOAAAACwAAACgEAAANAAAACwAAACAEAAAPAAAADAAAADAEAAAOAAAADAAAADwEAAAhAAAAEAAAAAAAAAAMAAAAEwAAAAAAAAANAAAAEwAAAEQEAAANAAoABwAAAA0ACgAIAAAADQARAAoAAAANAAAAIgAAAA0ACgAjAAAABAAAACsAAAAEAAIALAAAAAQABAAtAAAABAACAC4AAAAEAAQALwAAAAQABgAwAAAACAAFAAYAAAANAAUABgAAAA4ABQAGAAAADwAFAAYAAAAPAAAAKwAAAA8AAQAsAAAADwADAC0AAAAPAAEALgAAAA8AAwAvAAAADwAHAC8AAAANAAAAEQAAAAgAAAAAAAAACQAAAAAAAACuCAAA8AgAAA4AAAARAAAACAAAAAAAAAD/////AAAAAMIIAAAAAAAADwAAAAEAAAAIAAAAAAAAACAAAAA8CQAAzAgAAAAAAAABAAEAAQAAAPgDAAAEAAAAcBAGAAAADgABAAEAAQAAAPwDAAAFAAAAcRAAAAAADAARAAAAAgACAAIAAAABBAAABQAAAG4gAQAQAAwAEQAAAAIAAgACAAAABwQAAAUAAABuIAMAEAAMABEAAAADAAMAAwAAAA0EAAAFAAAAbjACABACDAARAAAAAwADAAMAAAAUBAAABQAAAG4wBAAQAgwAEQAAAAEAAQABAAAAGwQAAAUAAABuEAUAAAAMABEAAAABAAEAAQAAAPgDAAAEAAAAcBAGAAAADgABAAEAAQAAAAAAAAAEAAAAcBAGAAAADgAGAA4ACQEADgAdAgAADgAZAgAADgANAwAAAA4AEQMAAAAOABUBAA4AAQAAAAoAAAACAAAABAAKAAMAAAAEAAoAEgAAAAIAAAAKABIAAQAAAAQAASgAASkAAyo+OwAEKj47KQAFKj47KVsAAzEuMAAGPGluaXQ+AA5BUFBMSUNBVElPTl9JRAAKQlVJTERfVFlQRQAQQnVpbGRDb25maWcuamF2YQAFREVCVUcAAUkAAUwAAkxMAANMTEwABExMTEwAJExkYWx2aWsvYW5ub3RhdGlvbi9NZXRob2RQYXJhbWV0ZXJzOwAdTGRhbHZpay9hbm5vdGF0aW9uL1NpZ25hdHVyZTsAGkxkYWx2aWsvYW5ub3RhdGlvbi9UaHJvd3M7ABFMamF2YS9sYW5nL0NsYXNzOwARTGphdmEvbGFuZy9DbGFzczwAIkxqYXZhL2xhbmcvQ2xhc3NOb3RGb3VuZEV4Y2VwdGlvbjsAIExqYXZhL2xhbmcvTm9TdWNoRmllbGRFeGNlcHRpb247ACFMamF2YS9sYW5nL05vU3VjaE1ldGhvZEV4Y2VwdGlvbjsAEkxqYXZhL2xhbmcvT2JqZWN0OwAdTGphdmEvbGFuZy9TZWN1cml0eUV4Y2VwdGlvbjsAEkxqYXZhL2xhbmcvU3RyaW5nOwAZTGphdmEvbGFuZy9yZWZsZWN0L0ZpZWxkOwAaTGphdmEvbGFuZy9yZWZsZWN0L01ldGhvZDsAJkxzaXRlL2hhbnNjaGVuL3JlZmxlY3Rpb24vQnVpbGRDb25maWc7ABxMc2l0ZS9oYW5zY2hlbi9yZWZsZWN0aW9uL1I7ACVMc2l0ZS9oYW5zY2hlbi9yZWZsZWN0aW9uL1JlZmxlY3Rpb247AA9SZWZsZWN0aW9uLmphdmEAAVYADFZFUlNJT05fQ09ERQAMVkVSU0lPTl9OQU1FAAFaAAFbABJbTGphdmEvbGFuZy9DbGFzczsAG1tMamF2YS9sYW5nL3JlZmxlY3QvTWV0aG9kOwALYWNjZXNzRmxhZ3MACWNsYXNzTmFtZQADY2x6AAdmb3JOYW1lABBnZXREZWNsYXJlZEZpZWxkABFnZXREZWNsYXJlZE1ldGhvZAAIZ2V0RmllbGQACWdldE1ldGhvZAAKZ2V0TWV0aG9kcwAEbmFtZQAFbmFtZXMADnBhcmFtZXRlclR5cGVzAAdyZWxlYXNlABhzaXRlLmhhbnNjaGVuLnJlZmxlY3Rpb24ABXZhbHVlAFh+fkQ4eyJjb21waWxhdGlvbi1tb2RlIjoicmVsZWFzZSIsImhhcy1jaGVja3N1bXMiOmZhbHNlLCJtaW4tYXBpIjoyMSwidmVyc2lvbiI6IjIuMi43MSJ9AAIBAigcAQQAMhwBFykCAgE2HAUXABcaFwEXFBcCAgMBNhwBGAUCAQIoHAIEAAQAMhwCFyoXMQICATYcBhcAFxQXAhcaFwEXGwIDATYcARgGAgECKBwDBAAEAAQAMhwDFyoXMRczAgIBNhwIFwAXFBcCFxoXJRcUFwMXHAIDATYcARgHAgECKBwBBAAyHAEXKgICATYcBBcAFxQXBBccAgMBNhwBGAkFAAEAABkBGQEZARkBGQeBgASIBgAAAQAIgoAE4AcAAAcACYGABMgHAQmgBgEJvAYBiQH0BgEJ2AYBiQGQBwEJrAcFFzUXNB8EARcFAAADAAAACAgAABUIAAAlCAAAAwAAAC0IAAA+CAAAUAgAAAMAAABYCAAAbQgAAIMIAAADAAAAiwgAAJgIAACmCAAAAAAAAAAAAAAGAAAAAAAAAAoAAAD8CAAACwAAAAwJAAAMAAAAHAkAAA0AAAAMCQAADgAAABwJAAAPAAAALAkAABEAAAAAAAAAAQAAAAAAAAABAAAAOAAAAHAAAAACAAAAFAAAAFABAAADAAAACAAAAKABAAAEAAAABQAAAAACAAAFAAAAEAAAACgCAAAGAAAAAwAAAKgCAAABIAAACQAAAAgDAAADIAAABwAAAPgDAAABEAAABQAAACAEAAACIAAAOAAAAEoEAAAEIAAADAAAAAgIAAAAIAAAAwAAAK4IAAAFIAAAAQAAAPAIAAADEAAABAAAAPwIAAAGIAAAAQAAADwJAAAAEAAAAQAAAHwJAAA="

.field private static final S_REFLECT:Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflect;

.field private static sGetDeclaredField:Ljava/lang/reflect/Method;

.field private static sGetDeclaredMethod:Ljava/lang/reflect/Method;

.field private static sInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    new-instance v0, Lcom/geely/toolchain/hmi/blur/ReflectUtils$CacheReflect;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/geely/toolchain/hmi/blur/ReflectUtils$CacheReflect;-><init>(Lcom/geely/toolchain/hmi/blur/ReflectUtils$1;)V

    sput-object v0, Lcom/geely/toolchain/hmi/blur/ReflectUtils;->S_REFLECT:Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflect;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/reflect/Method;
    .locals 1

    .line 28
    sget-object v0, Lcom/geely/toolchain/hmi/blur/ReflectUtils;->sGetDeclaredMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 0

    .line 28
    sput-object p0, Lcom/geely/toolchain/hmi/blur/ReflectUtils;->sGetDeclaredMethod:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/reflect/Method;
    .locals 1

    .line 28
    sget-object v0, Lcom/geely/toolchain/hmi/blur/ReflectUtils;->sGetDeclaredField:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 0

    .line 28
    sput-object p0, Lcom/geely/toolchain/hmi/blur/ReflectUtils;->sGetDeclaredField:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public static bypassHiddenApi(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    return-void

    .line 42
    :cond_0
    sget-boolean v0, Lcom/geely/toolchain/hmi/blur/ReflectUtils;->sInit:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 45
    sput-boolean v0, Lcom/geely/toolchain/hmi/blur/ReflectUtils;->sInit:Z

    .line 46
    invoke-static {}, Lcom/geely/toolchain/hmi/util/ThreadPoolUtils;->getInstance()Lcom/geely/toolchain/hmi/util/ThreadPoolUtils;

    move-result-object v0

    new-instance v1, Lcom/geely/toolchain/hmi/blur/ReflectUtils$1;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/blur/ReflectUtils$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/util/ThreadPoolUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static from(Ljava/lang/Class;)Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectClass;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectClass;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 82
    sget-object v0, Lcom/geely/toolchain/hmi/blur/ReflectUtils;->S_REFLECT:Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflect;

    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflect;->from(Ljava/lang/Class;)Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectClass;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectClass;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "classLoader",
            "className"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 86
    sget-object v0, Lcom/geely/toolchain/hmi/blur/ReflectUtils;->S_REFLECT:Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflect;

    invoke-interface {v0, p0, p1}, Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflect;->from(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectClass;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/lang/Object;)Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectClass;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 78
    sget-object v0, Lcom/geely/toolchain/hmi/blur/ReflectUtils;->S_REFLECT:Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflect;

    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflect;->from(Ljava/lang/Object;)Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectClass;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/lang/String;)Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectClass;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 90
    sget-object v0, Lcom/geely/toolchain/hmi/blur/ReflectUtils;->S_REFLECT:Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflect;

    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflect;->from(Ljava/lang/String;)Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectClass;

    move-result-object p0

    return-object p0
.end method
