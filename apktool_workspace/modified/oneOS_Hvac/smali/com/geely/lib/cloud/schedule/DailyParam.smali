.class public Lcom/geely/lib/cloud/schedule/DailyParam;
.super Ljava/lang/Object;
.source "DailyParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/schedule/DailyParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allDay:I

.field private catagory:Ljava/lang/String;

.field private dailyType:I

.field private description:Ljava/lang/String;

.field private endDateTime:Ljava/lang/String;

.field private eventId:Ljava/lang/Long;

.field private eventReminders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/schedule/EventReminders;",
            ">;"
        }
    .end annotation
.end field

.field private importance:I

.field private location:Ljava/lang/String;

.field private notifyTime:[I

.field private rule:Ljava/lang/String;

.field private startDateTime:Ljava/lang/String;

.field private status:I

.field private timeMode:I

.field private timeZone:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private topFlag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    new-instance v0, Lcom/geely/lib/cloud/schedule/DailyParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/schedule/DailyParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/schedule/DailyParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->eventId:Ljava/lang/Long;

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->eventId:Ljava/lang/Long;

    .line 59
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->dailyType:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->title:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->description:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->location:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->allDay:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->timeZone:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->startDateTime:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->endDateTime:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->notifyTime:[I

    .line 68
    sget-object v0, Lcom/geely/lib/cloud/schedule/EventReminders;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->eventReminders:Ljava/util/List;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->rule:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->catagory:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->status:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->importance:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->timeMode:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->topFlag:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILjava/util/List;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventId",
            "dailyType",
            "title",
            "description",
            "location",
            "allDay",
            "timeZone",
            "startDateTime",
            "endDateTime",
            "notifyTime",
            "eventReminders",
            "rule",
            "catagory",
            "status",
            "importance",
            "timeMode",
            "topFlag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[I",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/schedule/EventReminders;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII)V"
        }
    .end annotation

    move-object v0, p0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 34
    iput-object v1, v0, Lcom/geely/lib/cloud/schedule/DailyParam;->eventId:Ljava/lang/Long;

    move v1, p2

    .line 35
    iput v1, v0, Lcom/geely/lib/cloud/schedule/DailyParam;->dailyType:I

    move-object v1, p3

    .line 36
    iput-object v1, v0, Lcom/geely/lib/cloud/schedule/DailyParam;->title:Ljava/lang/String;

    move-object v1, p4

    .line 37
    iput-object v1, v0, Lcom/geely/lib/cloud/schedule/DailyParam;->description:Ljava/lang/String;

    move-object v1, p5

    .line 38
    iput-object v1, v0, Lcom/geely/lib/cloud/schedule/DailyParam;->location:Ljava/lang/String;

    move v1, p6

    .line 39
    iput v1, v0, Lcom/geely/lib/cloud/schedule/DailyParam;->allDay:I

    move-object v1, p7

    .line 40
    iput-object v1, v0, Lcom/geely/lib/cloud/schedule/DailyParam;->timeZone:Ljava/lang/String;

    move-object v1, p8

    .line 41
    iput-object v1, v0, Lcom/geely/lib/cloud/schedule/DailyParam;->startDateTime:Ljava/lang/String;

    move-object v1, p9

    .line 42
    iput-object v1, v0, Lcom/geely/lib/cloud/schedule/DailyParam;->endDateTime:Ljava/lang/String;

    move-object v1, p10

    .line 43
    iput-object v1, v0, Lcom/geely/lib/cloud/schedule/DailyParam;->notifyTime:[I

    move-object v1, p11

    .line 44
    iput-object v1, v0, Lcom/geely/lib/cloud/schedule/DailyParam;->eventReminders:Ljava/util/List;

    move-object v1, p12

    .line 45
    iput-object v1, v0, Lcom/geely/lib/cloud/schedule/DailyParam;->rule:Ljava/lang/String;

    move-object v1, p13

    .line 46
    iput-object v1, v0, Lcom/geely/lib/cloud/schedule/DailyParam;->catagory:Ljava/lang/String;

    move/from16 v1, p14

    .line 47
    iput v1, v0, Lcom/geely/lib/cloud/schedule/DailyParam;->status:I

    move/from16 v1, p15

    .line 48
    iput v1, v0, Lcom/geely/lib/cloud/schedule/DailyParam;->importance:I

    move/from16 v1, p16

    .line 49
    iput v1, v0, Lcom/geely/lib/cloud/schedule/DailyParam;->timeMode:I

    move/from16 v1, p17

    .line 50
    iput v1, v0, Lcom/geely/lib/cloud/schedule/DailyParam;->topFlag:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAllDay()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->allDay:I

    return v0
.end method

.method public getCatagory()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->catagory:Ljava/lang/String;

    return-object v0
.end method

.method public getDailyType()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->dailyType:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEndDateTime()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->endDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getEventId()Ljava/lang/Long;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->eventId:Ljava/lang/Long;

    return-object v0
.end method

.method public getEventReminders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/schedule/EventReminders;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->eventReminders:Ljava/util/List;

    return-object v0
.end method

.method public getImportance()I
    .locals 1

    .line 233
    iget v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->importance:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyTime()[I
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->notifyTime:[I

    return-object v0
.end method

.method public getRule()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->rule:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDateTime()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->startDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 225
    iget v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->status:I

    return v0
.end method

.method public getTimeMode()I
    .locals 1

    .line 241
    iget v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->timeMode:I

    return v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->timeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTopFlag()I
    .locals 1

    .line 249
    iget v0, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->topFlag:I

    return v0
.end method

.method public setAllDay(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allDay"
        }
    .end annotation

    .line 165
    iput p1, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->allDay:I

    return-void
.end method

.method public setCatagory(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "catagory"
        }
    .end annotation

    .line 221
    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->catagory:Ljava/lang/String;

    return-void
.end method

.method public setDailyType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dailyType"
        }
    .end annotation

    .line 133
    iput p1, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->dailyType:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->description:Ljava/lang/String;

    return-void
.end method

.method public setEndDateTime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endDateTime"
        }
    .end annotation

    .line 189
    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->endDateTime:Ljava/lang/String;

    return-void
.end method

.method public setEventId(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventId"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->eventId:Ljava/lang/Long;

    return-void
.end method

.method public setEventReminders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventReminders"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/schedule/EventReminders;",
            ">;)V"
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->eventReminders:Ljava/util/List;

    return-void
.end method

.method public setImportance(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "importance"
        }
    .end annotation

    .line 237
    iput p1, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->importance:I

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "location"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->location:Ljava/lang/String;

    return-void
.end method

.method public setNotifyTime([I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notifyTime"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->notifyTime:[I

    return-void
.end method

.method public setRule(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rule"
        }
    .end annotation

    .line 213
    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->rule:Ljava/lang/String;

    return-void
.end method

.method public setStartDateTime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startDateTime"
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->startDateTime:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 229
    iput p1, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->status:I

    return-void
.end method

.method public setTimeMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeMode"
        }
    .end annotation

    .line 245
    iput p1, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->timeMode:I

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeZone"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->timeZone:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->title:Ljava/lang/String;

    return-void
.end method

.method public setTopFlag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "topFlag"
        }
    .end annotation

    .line 253
    iput p1, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->topFlag:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DailyParam{eventId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->eventId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dailyType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->dailyType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", location=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->location:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", allDay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->allDay:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", timeZone=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->timeZone:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", startDateTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->startDateTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", endDateTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->endDateTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", notifyTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->notifyTime:[I

    .line 268
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", eventReminders="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->eventReminders:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", rule=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->rule:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", catagory=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->catagory:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", importance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->importance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->timeMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", topFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->topFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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
            "dest",
            "flags"
        }
    .end annotation

    .line 79
    iget-object p2, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->eventId:Ljava/lang/Long;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 80
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 82
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 83
    iget-object p2, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->eventId:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 85
    :goto_0
    iget p2, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->dailyType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object p2, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object p2, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object p2, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->location:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget p2, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->allDay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-object p2, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->timeZone:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object p2, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->startDateTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object p2, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->endDateTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->notifyTime:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 94
    iget-object p2, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->eventReminders:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 95
    iget-object p2, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->rule:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object p2, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->catagory:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget p2, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget p2, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->importance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget p2, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->timeMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget p2, p0, Lcom/geely/lib/cloud/schedule/DailyParam;->topFlag:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
