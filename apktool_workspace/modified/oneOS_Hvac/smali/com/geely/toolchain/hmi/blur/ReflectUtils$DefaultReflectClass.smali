.class Lcom/geely/toolchain/hmi/blur/ReflectUtils$DefaultReflectClass;
.super Ljava/lang/Object;
.source "ReflectUtils.java"

# interfaces
.implements Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectClass;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/toolchain/hmi/blur/ReflectUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultReflectClass"
.end annotation


# instance fields
.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final mConstructors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectConstructor;",
            ">;"
        }
    .end annotation
.end field

.field private final mFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectField;",
            ">;"
        }
    .end annotation
.end field

.field private final mMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
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
            "*>;)V"
        }
    .end annotation

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/geely/toolchain/hmi/blur/ReflectUtils$DefaultReflectClass;->mConstructors:Ljava/util/Map;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/geely/toolchain/hmi/blur/ReflectUtils$DefaultReflectClass;->mMethods:Ljava/util/Map;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/geely/toolchain/hmi/blur/ReflectUtils$DefaultReflectClass;->mFields:Ljava/util/Map;

    .line 138
    iput-object p1, p0, Lcom/geely/toolchain/hmi/blur/ReflectUtils$DefaultReflectClass;->mClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public clazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur/ReflectUtils$DefaultReflectClass;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public varargs constructor([Ljava/lang/Class;)Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectConstructor;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameterTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectConstructor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    .line 149
    array-length v1, p1

    if-lez v1, :cond_0

    .line 150
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 151
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/geely/toolchain/hmi/blur/ReflectUtils$DefaultReflectClass;->mConstructors:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectConstructor;

    if-nez v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/geely/toolchain/hmi/blur/ReflectUtils$DefaultReflectClass;->mClass:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 158
    new-instance v1, Lcom/geely/toolchain/hmi/blur/ReflectUtils$DefaultReflectConstructor;

    invoke-direct {v1, p1}, Lcom/geely/toolchain/hmi/blur/ReflectUtils$DefaultReflectConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 159
    iget-object p1, p0, Lcom/geely/toolchain/hmi/blur/ReflectUtils$DefaultReflectClass;->mConstructors:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public field(Ljava/lang/String;)Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectField;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fieldName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur/ReflectUtils$DefaultReflectClass;->mFields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectField;

    if-nez v0, :cond_3

    .line 204
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur/ReflectUtils$DefaultReflectClass;->mClass:Ljava/lang/Class;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 206
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 209
    :catch_0
    invoke-static {}, Lcom/geely/toolchain/hmi/blur/ReflectUtils;->access$100()Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 211
    :try_start_1
    invoke-static {}, Lcom/geely/toolchain/hmi/blur/ReflectUtils;->access$100()Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 204
    :catch_1
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 221
    new-instance v0, Lcom/geely/toolchain/hmi/blur/ReflectUtils$DefaultReflectField;

    invoke-direct {v0, v1}, Lcom/geely/toolchain/hmi/blur/ReflectUtils$DefaultReflectField;-><init>(Ljava/lang/reflect/Field;)V

    .line 222
    iget-object v1, p0, Lcom/geely/toolchain/hmi/blur/ReflectUtils$DefaultReflectClass;->mFields:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 219
    :cond_2
    new-instance v0, Ljava/lang/NoSuchFieldException;

    invoke-direct {v0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    return-object v0
.end method

.method public varargs method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectMethod;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "methodName",
            "parameterTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectMethod;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 167
    array-length v2, p2

    if-lez v2, :cond_0

    .line 168
    array-length v2, p2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p2, v3

    .line 169
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    iget-object v2, p0, Lcom/geely/toolchain/hmi/blur/ReflectUtils$DefaultReflectClass;->mMethods:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectMethod;

    if-nez v2, :cond_4

    .line 176
    iget-object v2, p0, Lcom/geely/toolchain/hmi/blur/ReflectUtils$DefaultReflectClass;->mClass:Ljava/lang/Class;

    :goto_1
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 178
    :try_start_0
    invoke-virtual {v2, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 181
    :catch_0
    invoke-static {}, Lcom/geely/toolchain/hmi/blur/ReflectUtils;->access$000()Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 183
    :try_start_1
    invoke-static {}, Lcom/geely/toolchain/hmi/blur/ReflectUtils;->access$000()Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v1

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 176
    :catch_1
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    .line 193
    new-instance v2, Lcom/geely/toolchain/hmi/blur/ReflectUtils$DefaultReflectMethod;

    invoke-direct {v2, v3}, Lcom/geely/toolchain/hmi/blur/ReflectUtils$DefaultReflectMethod;-><init>(Ljava/lang/reflect/Method;)V

    .line 194
    iget-object p1, p0, Lcom/geely/toolchain/hmi/blur/ReflectUtils$DefaultReflectClass;->mMethods:Ljava/util/Map;

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 191
    :cond_3
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_3
    return-object v2
.end method
