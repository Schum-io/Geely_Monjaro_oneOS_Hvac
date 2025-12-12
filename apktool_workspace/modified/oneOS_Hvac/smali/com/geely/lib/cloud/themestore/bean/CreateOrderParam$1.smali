.class Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam$1;
.super Ljava/lang/Object;
.source "CreateOrderParam.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 77
    new-instance v0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;

    invoke-direct {v0, p1}, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "in"
        }
    .end annotation

    .line 74
    invoke-virtual {p0, p1}, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam$1;->createFromParcel(Landroid/os/Parcel;)Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 82
    new-array p1, p1, [Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;

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

    .line 74
    invoke-virtual {p0, p1}, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam$1;->newArray(I)[Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;

    move-result-object p1

    return-object p1
.end method
