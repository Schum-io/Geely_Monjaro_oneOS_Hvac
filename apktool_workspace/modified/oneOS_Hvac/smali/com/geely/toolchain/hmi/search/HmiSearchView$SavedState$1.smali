.class Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState$1;
.super Ljava/lang/Object;
.source "HmiSearchView.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;


# direct methods
.method constructor <init>(Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 329
    iput-object p1, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState$1;->this$0:Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 336
    new-instance v0, Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "loader"
        }
    .end annotation

    .line 332
    new-instance v0, Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;

    invoke-direct {v0, p1, p2}, Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "source"
        }
    .end annotation

    .line 329
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "source",
            "loader"
        }
    .end annotation

    .line 329
    invoke-virtual {p0, p1, p2}, Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 340
    new-array p1, p1, [Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "size"
        }
    .end annotation

    .line 329
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState$1;->newArray(I)[Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;

    move-result-object p1

    return-object p1
.end method
