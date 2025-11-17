.class public Lcom/geely/lib/cloud/schedule/EventReminders;
.super Ljava/lang/Object;
.source "EventReminders.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/schedule/EventReminders;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private reminderEventID:Ljava/lang/Long;

.field private reminderId:Ljava/lang/Long;

.field private reminderMethod:Ljava/lang/Long;

.field private reminderMinute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/geely/lib/cloud/schedule/EventReminders$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/schedule/EventReminders$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/schedule/EventReminders;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 25
    iput-object v1, p0, Lcom/geely/lib/cloud/schedule/EventReminders;->reminderId:Ljava/lang/Long;

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/schedule/EventReminders;->reminderId:Ljava/lang/Long;

    .line 29
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_1

    .line 30
    iput-object v1, p0, Lcom/geely/lib/cloud/schedule/EventReminders;->reminderEventID:Ljava/lang/Long;

    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/schedule/EventReminders;->reminderEventID:Ljava/lang/Long;

    .line 34
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/cloud/schedule/EventReminders;->reminderMinute:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_2

    .line 36
    iput-object v1, p0, Lcom/geely/lib/cloud/schedule/EventReminders;->reminderMethod:Ljava/lang/Long;

    goto :goto_2

    .line 38
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/EventReminders;->reminderMethod:Ljava/lang/Long;

    :goto_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "reminderId",
            "reminderEventID",
            "reminderMinute",
            "reminderMethod"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/EventReminders;->reminderId:Ljava/lang/Long;

    .line 18
    iput-object p2, p0, Lcom/geely/lib/cloud/schedule/EventReminders;->reminderEventID:Ljava/lang/Long;

    .line 19
    iput p3, p0, Lcom/geely/lib/cloud/schedule/EventReminders;->reminderMinute:I

    .line 20
    iput-object p4, p0, Lcom/geely/lib/cloud/schedule/EventReminders;->reminderMethod:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getReminderEventID()Ljava/lang/Long;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/geely/lib/cloud/schedule/EventReminders;->reminderEventID:Ljava/lang/Long;

    return-object v0
.end method

.method public getReminderId()Ljava/lang/Long;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/geely/lib/cloud/schedule/EventReminders;->reminderId:Ljava/lang/Long;

    return-object v0
.end method

.method public getReminderMethod()Ljava/lang/Long;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/geely/lib/cloud/schedule/EventReminders;->reminderMethod:Ljava/lang/Long;

    return-object v0
.end method

.method public getReminderMinute()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/geely/lib/cloud/schedule/EventReminders;->reminderMinute:I

    return v0
.end method

.method public setReminderEventID(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reminderEventID"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/EventReminders;->reminderEventID:Ljava/lang/Long;

    return-void
.end method

.method public setReminderId(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reminderId"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/EventReminders;->reminderId:Ljava/lang/Long;

    return-void
.end method

.method public setReminderMethod(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reminderMethod"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/EventReminders;->reminderMethod:Ljava/lang/Long;

    return-void
.end method

.method public setReminderMinute(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reminderMinute"
        }
    .end annotation

    .line 104
    iput p1, p0, Lcom/geely/lib/cloud/schedule/EventReminders;->reminderMinute:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
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

    .line 45
    iget-object p2, p0, Lcom/geely/lib/cloud/schedule/EventReminders;->reminderId:Ljava/lang/Long;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 49
    iget-object p2, p0, Lcom/geely/lib/cloud/schedule/EventReminders;->reminderId:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 51
    :goto_0
    iget-object p2, p0, Lcom/geely/lib/cloud/schedule/EventReminders;->reminderEventID:Ljava/lang/Long;

    if-nez p2, :cond_1

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 55
    iget-object p2, p0, Lcom/geely/lib/cloud/schedule/EventReminders;->reminderEventID:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 57
    :goto_1
    iget p2, p0, Lcom/geely/lib/cloud/schedule/EventReminders;->reminderMinute:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-object p2, p0, Lcom/geely/lib/cloud/schedule/EventReminders;->reminderMethod:Ljava/lang/Long;

    if-nez p2, :cond_2

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_2

    .line 61
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 62
    iget-object p2, p0, Lcom/geely/lib/cloud/schedule/EventReminders;->reminderMethod:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    :goto_2
    return-void
.end method
