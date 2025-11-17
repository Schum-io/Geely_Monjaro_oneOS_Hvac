.class public Lcom/geely/lib/oneosapi/schedule/bean/CPScheduleInfo$Location$1NamelessClass_1;
.super Ljava/lang/Object;
.source "CPScheduleInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/lib/oneosapi/schedule/bean/CPScheduleInfo$Location;-><init>(Landroid/os/Parcel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NamelessClass_1"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/geely/lib/oneosapi/schedule/bean/CPScheduleInfo$Location;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/geely/lib/oneosapi/schedule/bean/CPScheduleInfo$Location;


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/schedule/bean/CPScheduleInfo$Location;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPScheduleInfo$Location$1NamelessClass_1;->this$0:Lcom/geely/lib/oneosapi/schedule/bean/CPScheduleInfo$Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/geely/lib/oneosapi/schedule/bean/CPScheduleInfo$Location;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parcel"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "parcel"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/geely/lib/oneosapi/schedule/bean/CPScheduleInfo$Location$1NamelessClass_1;->createFromParcel(Landroid/os/Parcel;)Lcom/geely/lib/oneosapi/schedule/bean/CPScheduleInfo$Location;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/geely/lib/oneosapi/schedule/bean/CPScheduleInfo$Location;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/geely/lib/oneosapi/schedule/bean/CPScheduleInfo$Location;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "i"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/geely/lib/oneosapi/schedule/bean/CPScheduleInfo$Location$1NamelessClass_1;->newArray(I)[Lcom/geely/lib/oneosapi/schedule/bean/CPScheduleInfo$Location;

    move-result-object p1

    return-object p1
.end method
