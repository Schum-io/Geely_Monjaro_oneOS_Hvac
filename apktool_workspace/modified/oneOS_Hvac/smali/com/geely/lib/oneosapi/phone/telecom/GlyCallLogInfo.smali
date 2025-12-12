.class public Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;
.super Ljava/lang/Object;
.source "GlyCallLogInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallType:I

.field private mDate:J

.field private mNumber:Ljava/lang/String;

.field private mNumberPrivate:Ljava/lang/String;

.field private mNumberTrim:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mCallType:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mNumber:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mNumberPrivate:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mNumberTrim:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mUserName:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mDate:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mUserName",
            "mNumber",
            "date",
            "callType",
            "numberTrim",
            "numberPrivate"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mUserName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mNumber:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mDate:J

    .line 5
    iput p5, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mCallType:I

    .line 6
    iput-object p6, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mNumberTrim:Ljava/lang/String;

    .line 7
    iput-object p7, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mNumberPrivate:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getmCallType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mCallType:I

    return v0
.end method

.method public getmDate()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mDate:J

    return-wide v0
.end method

.method public getmNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getmNumberTrim()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mNumberTrim:Ljava/lang/String;

    return-object v0
.end method

.method public getmUserName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mCallType:I

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mNumber:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mNumberPrivate:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mNumberTrim:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mUserName:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mDate:J

    return-void
.end method

.method public setmCallType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mCallType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mCallType:I

    return-void
.end method

.method public setmDate(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mDate"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mDate:J

    return-void
.end method

.method public setmNumber(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mNumber"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mNumber:Ljava/lang/String;

    return-void
.end method

.method public setmNumberTrim(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mNumberTrim"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mNumberTrim:Ljava/lang/String;

    return-void
.end method

.method public setmUserName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mUserName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mUserName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "CallLogInfo{}"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parcel",
            "i"
        }
    .end annotation

    .line 1
    iget p2, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mCallType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mNumberPrivate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mNumberTrim:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-wide v0, p0, Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;->mDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
