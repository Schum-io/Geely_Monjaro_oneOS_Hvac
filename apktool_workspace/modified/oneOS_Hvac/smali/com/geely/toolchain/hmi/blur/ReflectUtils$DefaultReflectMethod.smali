.class Lcom/geely/toolchain/hmi/blur/ReflectUtils$DefaultReflectMethod;
.super Ljava/lang/Object;
.source "ReflectUtils.java"

# interfaces
.implements Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/toolchain/hmi/blur/ReflectUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultReflectMethod"
.end annotation


# instance fields
.field private final mMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "method"
        }
    .end annotation

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p1, p0, Lcom/geely/toolchain/hmi/blur/ReflectUtils$DefaultReflectMethod;->mMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    .line 254
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-void
.end method


# virtual methods
.method public varargs invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "receiver",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur/ReflectUtils$DefaultReflectMethod;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public method()Ljava/lang/reflect/Method;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur/ReflectUtils$DefaultReflectMethod;->mMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method
