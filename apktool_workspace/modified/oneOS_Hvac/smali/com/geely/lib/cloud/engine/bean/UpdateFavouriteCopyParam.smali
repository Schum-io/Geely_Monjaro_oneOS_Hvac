.class public Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;
.super Ljava/lang/Object;
.source "UpdateFavouriteCopyParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private autoTriggerState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/engine/bean/AutoTriggerState;",
            ">;"
        }
    .end annotation
.end field

.field private code:Ljava/lang/String;

.field private commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/engine/bean/Commands;",
            ">;"
        }
    .end annotation
.end field

.field private defaultDuration:I

.field private desc:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private maxDuration:I

.field private minDuration:I

.field private name:Ljava/lang/String;

.field private scenRequiredState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/engine/bean/ScenRequiredState;",
            ">;"
        }
    .end annotation
.end field

.field private seatSelect:[I

.field private showOnAssistScreen:I

.field private themes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 166
    new-instance v0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->name:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->code:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->desc:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->icon:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->minDuration:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->maxDuration:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->defaultDuration:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->showOnAssistScreen:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->seatSelect:[I

    .line 140
    sget-object v0, Lcom/geely/lib/cloud/engine/bean/ScenRequiredState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->scenRequiredState:Ljava/util/List;

    .line 141
    sget-object v0, Lcom/geely/lib/cloud/engine/bean/AutoTriggerState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->autoTriggerState:Ljava/util/List;

    .line 142
    sget-object v0, Lcom/geely/lib/cloud/engine/bean/Commands;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->commands:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAutoTriggerState()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/engine/bean/AutoTriggerState;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->autoTriggerState:Ljava/util/List;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCommands()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/engine/bean/Commands;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->commands:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultDuration()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->defaultDuration:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxDuration()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->maxDuration:I

    return v0
.end method

.method public getMinDuration()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->minDuration:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScenRequiredState()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/engine/bean/ScenRequiredState;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->scenRequiredState:Ljava/util/List;

    return-object v0
.end method

.method public getSeatSelect()[I
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->seatSelect:[I

    return-object v0
.end method

.method public getShowOnAssistScreen()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->showOnAssistScreen:I

    return v0
.end method

.method public getThemes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->themes:Ljava/util/List;

    return-object v0
.end method

.method public setAutoTriggerState(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoTriggerState"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/engine/bean/AutoTriggerState;",
            ">;)V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->autoTriggerState:Ljava/util/List;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->code:Ljava/lang/String;

    return-void
.end method

.method public setCommands(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commands"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/engine/bean/Commands;",
            ">;)V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->commands:Ljava/util/List;

    return-void
.end method

.method public setDefaultDuration(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultDuration"
        }
    .end annotation

    .line 79
    iput p1, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->defaultDuration:I

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "desc"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->desc:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icon"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->icon:Ljava/lang/String;

    return-void
.end method

.method public setMaxDuration(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxDuration"
        }
    .end annotation

    .line 71
    iput p1, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->maxDuration:I

    return-void
.end method

.method public setMinDuration(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minDuration"
        }
    .end annotation

    .line 63
    iput p1, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->minDuration:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->name:Ljava/lang/String;

    return-void
.end method

.method public setScenRequiredState(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scenRequiredState"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/engine/bean/ScenRequiredState;",
            ">;)V"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->scenRequiredState:Ljava/util/List;

    return-void
.end method

.method public setSeatSelect([I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatSelect"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->seatSelect:[I

    return-void
.end method

.method public setShowOnAssistScreen(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showOnAssistScreen"
        }
    .end annotation

    .line 87
    iput p1, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->showOnAssistScreen:I

    return-void
.end method

.method public setThemes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "themes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->themes:Ljava/util/List;

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

    .line 147
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->code:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->desc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->icon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget p2, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->minDuration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget p2, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->maxDuration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget p2, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->defaultDuration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget p2, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->showOnAssistScreen:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->seatSelect:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 156
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->scenRequiredState:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 157
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->autoTriggerState:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 158
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteCopyParam;->commands:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
