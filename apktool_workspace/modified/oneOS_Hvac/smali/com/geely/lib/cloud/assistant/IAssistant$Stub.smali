.class public abstract Lcom/geely/lib/cloud/assistant/IAssistant$Stub;
.super Landroid/os/Binder;
.source "IAssistant.java"

# interfaces
.implements Lcom/geely/lib/cloud/assistant/IAssistant;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/assistant/IAssistant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/cloud/assistant/IAssistant$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.geely.lib.cloud.assistant.IAssistant"

.field static final TRANSACTION_getDrivingPositions:I = 0x4

.field static final TRANSACTION_getModel1001:I = 0x2

.field static final TRANSACTION_getModel1002:I = 0x3

.field static final TRANSACTION_getModelList:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.geely.lib.cloud.assistant.IAssistant"

    .line 34
    invoke-virtual {p0, p0, v0}, Lcom/geely/lib/cloud/assistant/IAssistant$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/assistant/IAssistant;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.geely.lib.cloud.assistant.IAssistant"

    .line 45
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    instance-of v1, v0, Lcom/geely/lib/cloud/assistant/IAssistant;

    if-eqz v1, :cond_1

    .line 47
    check-cast v0, Lcom/geely/lib/cloud/assistant/IAssistant;

    return-object v0

    .line 49
    :cond_1
    new-instance v0, Lcom/geely/lib/cloud/assistant/IAssistant$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/geely/lib/cloud/assistant/IAssistant$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/geely/lib/cloud/assistant/IAssistant;
    .locals 1

    .line 208
    sget-object v0, Lcom/geely/lib/cloud/assistant/IAssistant$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/assistant/IAssistant;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/geely/lib/cloud/assistant/IAssistant;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 198
    sget-object v0, Lcom/geely/lib/cloud/assistant/IAssistant$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/assistant/IAssistant;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 202
    sput-object p0, Lcom/geely/lib/cloud/assistant/IAssistant$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/assistant/IAssistant;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 199
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.geely.lib.cloud.assistant.IAssistant"

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 62
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 91
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p2

    .line 98
    invoke-virtual {p0, p1, p3, p2}, Lcom/geely/lib/cloud/assistant/IAssistant$Stub;->getDrivingPositions(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v0

    .line 83
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 86
    invoke-virtual {p0, p1}, Lcom/geely/lib/cloud/assistant/IAssistant$Stub;->getModel1002(Lcom/geely/lib/cloud/ICloudCallback;)V

    return v0

    .line 75
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Lcom/geely/lib/cloud/assistant/IAssistant$Stub;->getModel1001(Lcom/geely/lib/cloud/ICloudCallback;)V

    return v0

    .line 67
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 70
    invoke-virtual {p0, p1}, Lcom/geely/lib/cloud/assistant/IAssistant$Stub;->getModelList(Lcom/geely/lib/cloud/ICloudCallback;)V

    return v0
.end method
