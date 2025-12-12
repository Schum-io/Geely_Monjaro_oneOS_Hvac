.class public Lcom/geely/lib/oneosapi/input/KeyCodeEvent;
.super Ljava/lang/Object;
.source "KeyCodeEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_CANCEL:I = 0x3

.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_UP:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/input/KeyCodeEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private action:I

.field private keyCode:I

.field private softKeyFunction:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/input/KeyCodeEvent$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/input/KeyCodeEvent$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/input/KeyCodeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "action"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/geely/lib/oneosapi/input/KeyCodeEvent;->keyCode:I

    .line 4
    iput p2, p0, Lcom/geely/lib/oneosapi/input/KeyCodeEvent;->action:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/input/KeyCodeEvent;->keyCode:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/input/KeyCodeEvent;->softKeyFunction:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/geely/lib/oneosapi/input/KeyCodeEvent;->action:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAction()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/input/KeyCodeEvent;->action:I

    return v0
.end method

.method public getKeyCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/input/KeyCodeEvent;->keyCode:I

    return v0
.end method

.method public getSoftKeyFunction()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/input/KeyCodeEvent;->softKeyFunction:I

    return v0
.end method

.method public setAction(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/input/KeyCodeEvent;->action:I

    return-void
.end method

.method public setKeyCode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/input/KeyCodeEvent;->keyCode:I

    return-void
.end method

.method public setSoftKeyFunction(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "softKeyFunction"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/input/KeyCodeEvent;->softKeyFunction:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 1
    iget p2, p0, Lcom/geely/lib/oneosapi/input/KeyCodeEvent;->keyCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/geely/lib/oneosapi/input/KeyCodeEvent;->softKeyFunction:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/geely/lib/oneosapi/input/KeyCodeEvent;->action:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
