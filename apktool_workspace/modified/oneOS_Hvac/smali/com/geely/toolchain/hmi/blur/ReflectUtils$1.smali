.class Lcom/geely/toolchain/hmi/blur/ReflectUtils$1;
.super Ljava/lang/Object;
.source "ReflectUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/toolchain/hmi/blur/ReflectUtils;->bypassHiddenApi(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$context"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/geely/toolchain/hmi/blur/ReflectUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "ZGV4CjAzNQC+qDk0htQtTbJAFjm51pzO4KCJaHEBcxZMCgAAcAAAAHhWNBIAAAAAAAAAAHwJAAA4AAAAcAAAABQAAABQAQAACAAAAKABAAAFAAAAAAIAABAAAAAoAgAAAwAAAKgCAABEBwAACAMAAEoEAABNBAAAUAQAAFUEAABbBAAAYgQAAGcEAABvBAAAfwQAAIsEAACdBAAApAQAAKcEAACqBAAArgQAALMEAAC5BAAA3wQAAP4EAAAaBQAALQUAAEAFAABkBQAAhgUAAKkFAAC9BQAA3AUAAPAFAAALBgAAJwYAAE8GAABtBgAAlAYAAKUGAACoBgAAtgYAAMQGAADHBgAAygYAAN4GAAD7BgAACAcAABMHAAAYBwAAIQcAADMHAABGBwAAUAcAAFsHAABnBwAAbQcAAHQHAACEBwAAjQcAAKcHAACuBwAACwAAABAAAAARAAAAEgAAABMAAAAVAAAAFgAAABcAAAAYAAAAGQAAABoAAAAbAAAAHAAAAB0AAAAeAAAAHwAAACEAAAAkAAAAJgAAACcAAAANAAAABAAAACAEAAAOAAAACwAAACgEAAANAAAACwAAACAEAAAPAAAADAAAADAEAAAOAAAADAAAADwEAAAhAAAAEAAAAAAAAAAMAAAAEwAAAAAAAAANAAAAEwAAAEQEAAANAAoABwAAAA0ACgAIAAAADQARAAoAAAANAAAAIgAAAA0ACgAjAAAABAAAACsAAAAEAAIALAAAAAQABAAtAAAABAACAC4AAAAEAAQALwAAAAQABgAwAAAACAAFAAYAAAANAAUABgAAAA4ABQAGAAAADwAFAAYAAAAPAAAAKwAAAA8AAQAsAAAADwADAC0AAAAPAAEALgAAAA8AAwAvAAAADwAHAC8AAAANAAAAEQAAAAgAAAAAAAAACQAAAAAAAACuCAAA8AgAAA4AAAARAAAACAAAAAAAAAD/////AAAAAMIIAAAAAAAADwAAAAEAAAAIAAAAAAAAACAAAAA8CQAAzAgAAAAAAAABAAEAAQAAAPgDAAAEAAAAcBAGAAAADgABAAEAAQAAAPwDAAAFAAAAcRAAAAAADAARAAAAAgACAAIAAAABBAAABQAAAG4gAQAQAAwAEQAAAAIAAgACAAAABwQAAAUAAABuIAMAEAAMABEAAAADAAMAAwAAAA0EAAAFAAAAbjACABACDAARAAAAAwADAAMAAAAUBAAABQAAAG4wBAAQAgwAEQAAAAEAAQABAAAAGwQAAAUAAABuEAUAAAAMABEAAAABAAEAAQAAAPgDAAAEAAAAcBAGAAAADgABAAEAAQAAAAAAAAAEAAAAcBAGAAAADgAGAA4ACQEADgAdAgAADgAZAgAADgANAwAAAA4AEQMAAAAOABUBAA4AAQAAAAoAAAACAAAABAAKAAMAAAAEAAoAEgAAAAIAAAAKABIAAQAAAAQAASgAASkAAyo+OwAEKj47KQAFKj47KVsAAzEuMAAGPGluaXQ+AA5BUFBMSUNBVElPTl9JRAAKQlVJTERfVFlQRQAQQnVpbGRDb25maWcuamF2YQAFREVCVUcAAUkAAUwAAkxMAANMTEwABExMTEwAJExkYWx2aWsvYW5ub3RhdGlvbi9NZXRob2RQYXJhbWV0ZXJzOwAdTGRhbHZpay9hbm5vdGF0aW9uL1NpZ25hdHVyZTsAGkxkYWx2aWsvYW5ub3RhdGlvbi9UaHJvd3M7ABFMamF2YS9sYW5nL0NsYXNzOwARTGphdmEvbGFuZy9DbGFzczwAIkxqYXZhL2xhbmcvQ2xhc3NOb3RGb3VuZEV4Y2VwdGlvbjsAIExqYXZhL2xhbmcvTm9TdWNoRmllbGRFeGNlcHRpb247ACFMamF2YS9sYW5nL05vU3VjaE1ldGhvZEV4Y2VwdGlvbjsAEkxqYXZhL2xhbmcvT2JqZWN0OwAdTGphdmEvbGFuZy9TZWN1cml0eUV4Y2VwdGlvbjsAEkxqYXZhL2xhbmcvU3RyaW5nOwAZTGphdmEvbGFuZy9yZWZsZWN0L0ZpZWxkOwAaTGphdmEvbGFuZy9yZWZsZWN0L01ldGhvZDsAJkxzaXRlL2hhbnNjaGVuL3JlZmxlY3Rpb24vQnVpbGRDb25maWc7ABxMc2l0ZS9oYW5zY2hlbi9yZWZsZWN0aW9uL1I7ACVMc2l0ZS9oYW5zY2hlbi9yZWZsZWN0aW9uL1JlZmxlY3Rpb247AA9SZWZsZWN0aW9uLmphdmEAAVYADFZFUlNJT05fQ09ERQAMVkVSU0lPTl9OQU1FAAFaAAFbABJbTGphdmEvbGFuZy9DbGFzczsAG1tMamF2YS9sYW5nL3JlZmxlY3QvTWV0aG9kOwALYWNjZXNzRmxhZ3MACWNsYXNzTmFtZQADY2x6AAdmb3JOYW1lABBnZXREZWNsYXJlZEZpZWxkABFnZXREZWNsYXJlZE1ldGhvZAAIZ2V0RmllbGQACWdldE1ldGhvZAAKZ2V0TWV0aG9kcwAEbmFtZQAFbmFtZXMADnBhcmFtZXRlclR5cGVzAAdyZWxlYXNlABhzaXRlLmhhbnNjaGVuLnJlZmxlY3Rpb24ABXZhbHVlAFh+fkQ4eyJjb21waWxhdGlvbi1tb2RlIjoicmVsZWFzZSIsImhhcy1jaGVja3N1bXMiOmZhbHNlLCJtaW4tYXBpIjoyMSwidmVyc2lvbiI6IjIuMi43MSJ9AAIBAigcAQQAMhwBFykCAgE2HAUXABcaFwEXFBcCAgMBNhwBGAUCAQIoHAIEAAQAMhwCFyoXMQICATYcBhcAFxQXAhcaFwEXGwIDATYcARgGAgECKBwDBAAEAAQAMhwDFyoXMRczAgIBNhwIFwAXFBcCFxoXJRcUFwMXHAIDATYcARgHAgECKBwBBAAyHAEXKgICATYcBBcAFxQXBBccAgMBNhwBGAkFAAEAABkBGQEZARkBGQeBgASIBgAAAQAIgoAE4AcAAAcACYGABMgHAQmgBgEJvAYBiQH0BgEJ2AYBiQGQBwEJrAcFFzUXNB8EARcFAAADAAAACAgAABUIAAAlCAAAAwAAAC0IAAA+CAAAUAgAAAMAAABYCAAAbQgAAIMIAAADAAAAiwgAAJgIAACmCAAAAAAAAAAAAAAGAAAAAAAAAAoAAAD8CAAACwAAAAwJAAAMAAAAHAkAAA0AAAAMCQAADgAAABwJAAAPAAAALAkAABEAAAAAAAAAAQAAAAAAAAABAAAAOAAAAHAAAAACAAAAFAAAAFABAAADAAAACAAAAKABAAAEAAAABQAAAAACAAAFAAAAEAAAACgCAAAGAAAAAwAAAKgCAAABIAAACQAAAAgDAAADIAAABwAAAPgDAAABEAAABQAAACAEAAACIAAAOAAAAEoEAAAEIAAADAAAAAgIAAAAIAAAAwAAAK4IAAAFIAAAAQAAAPAIAAADEAAABAAAAPwIAAAGIAAAAQAAADwJAAAAEAAAAQAAAHwJAAA="

    const/4 v1, 0x2

    .line 49
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 50
    iget-object v2, p0, Lcom/geely/toolchain/hmi/blur/ReflectUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 54
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lcom/geely/toolchain/hmi/blur/ReflectUtils;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dex"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 57
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 59
    new-instance v0, Ldalvik/system/DexFile;

    invoke-direct {v0, v3}, Ldalvik/system/DexFile;-><init>(Ljava/io/File;)V

    const-string v2, "site.hanschen.reflection.Reflection"

    const/4 v5, 0x0

    .line 60
    invoke-virtual {v0, v2, v5}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getDeclaredMethod"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    .line 61
    const-class v6, Ljava/lang/Class;

    aput-object v6, v5, v4

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-class v6, [Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {v2}, Lcom/geely/toolchain/hmi/blur/ReflectUtils;->access$002(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    const-string v2, "getDeclaredField"

    new-array v1, v1, [Ljava/lang/Class;

    .line 62
    const-class v5, Ljava/lang/Class;

    aput-object v5, v1, v4

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v7

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/toolchain/hmi/blur/ReflectUtils;->access$102(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 65
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 56
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 65
    :catchall_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 70
    :cond_1
    invoke-static {}, Lcom/geely/toolchain/hmi/util/ThreadPoolUtils;->getInstance()Lcom/geely/toolchain/hmi/util/ThreadPoolUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/geely/toolchain/hmi/util/ThreadPoolUtils;->remove(Ljava/lang/Runnable;)V

    return-void
.end method
