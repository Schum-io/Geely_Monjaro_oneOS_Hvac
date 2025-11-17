.class Lcom/geely/lib/cloud/assistant/IAssistant$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAssistant.java"

# interfaces
.implements Lcom/geely/lib/cloud/assistant/IAssistant;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/assistant/IAssistant$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/geely/lib/cloud/assistant/IAssistant;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remote"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/geely/lib/cloud/assistant/IAssistant$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/geely/lib/cloud/assistant/IAssistant$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getDrivingPositions(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startTime",
            "endTime",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.assistant.IAssistant"

    .line 174
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 177
    invoke-interface {p3}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 178
    iget-object v2, p0, Lcom/geely/lib/cloud/assistant/IAssistant$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 179
    invoke-static {}, Lcom/geely/lib/cloud/assistant/IAssistant$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/assistant/IAssistant;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 180
    invoke-static {}, Lcom/geely/lib/cloud/assistant/IAssistant$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/assistant/IAssistant;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/geely/lib/cloud/assistant/IAssistant;->getDrivingPositions(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 186
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.geely.lib.cloud.assistant.IAssistant"

    return-object v0
.end method

.method public getModel1001(Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.assistant.IAssistant"

    .line 142
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 143
    invoke-interface {p1}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 144
    iget-object v2, p0, Lcom/geely/lib/cloud/assistant/IAssistant$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    invoke-static {}, Lcom/geely/lib/cloud/assistant/IAssistant$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/assistant/IAssistant;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 146
    invoke-static {}, Lcom/geely/lib/cloud/assistant/IAssistant$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/assistant/IAssistant;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/geely/lib/cloud/assistant/IAssistant;->getModel1001(Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 152
    throw p1
.end method

.method public getModel1002(Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.assistant.IAssistant"

    .line 158
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 159
    invoke-interface {p1}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 160
    iget-object v2, p0, Lcom/geely/lib/cloud/assistant/IAssistant$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    invoke-static {}, Lcom/geely/lib/cloud/assistant/IAssistant$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/assistant/IAssistant;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 162
    invoke-static {}, Lcom/geely/lib/cloud/assistant/IAssistant$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/assistant/IAssistant;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/geely/lib/cloud/assistant/IAssistant;->getModel1002(Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 168
    throw p1
.end method

.method public getModelList(Lcom/geely/lib/cloud/ICloudCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.geely.lib.cloud.assistant.IAssistant"

    .line 126
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 127
    invoke-interface {p1}, Lcom/geely/lib/cloud/ICloudCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 128
    iget-object v2, p0, Lcom/geely/lib/cloud/assistant/IAssistant$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 129
    invoke-static {}, Lcom/geely/lib/cloud/assistant/IAssistant$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/assistant/IAssistant;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 130
    invoke-static {}, Lcom/geely/lib/cloud/assistant/IAssistant$Stub;->getDefaultImpl()Lcom/geely/lib/cloud/assistant/IAssistant;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/geely/lib/cloud/assistant/IAssistant;->getModelList(Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 136
    throw p1
.end method
