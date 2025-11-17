.class public Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "HmiDownloadProgressButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final currentText:Ljava/lang/String;

.field private final progress:I

.field private final state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 490
    new-instance v0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$SavedState$1;

    invoke-direct {v0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$SavedState$1;-><init>()V

    sput-object v0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 476
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 477
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$SavedState;->progress:I

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$SavedState;->state:I

    .line 479
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$SavedState;->currentText:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$1;)V
    .locals 0

    .line 462
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parcel",
            "progress",
            "state",
            "currentText"
        }
    .end annotation

    .line 469
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 470
    iput p2, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$SavedState;->progress:I

    .line 471
    iput p3, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$SavedState;->state:I

    .line 472
    iput-object p4, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$SavedState;->currentText:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$400(Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$SavedState;)I
    .locals 0

    .line 462
    iget p0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$SavedState;->state:I

    return p0
.end method

.method static synthetic access$500(Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$SavedState;)I
    .locals 0

    .line 462
    iget p0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$SavedState;->progress:I

    return p0
.end method

.method static synthetic access$600(Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$SavedState;)Ljava/lang/String;
    .locals 0

    .line 462
    iget-object p0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$SavedState;->currentText:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "flags"
        }
    .end annotation

    .line 484
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 485
    iget p2, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$SavedState;->progress:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    iget p2, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$SavedState;->state:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    iget-object p2, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$SavedState;->currentText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
