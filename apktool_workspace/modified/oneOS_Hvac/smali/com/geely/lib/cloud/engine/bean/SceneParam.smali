.class public Lcom/geely/lib/cloud/engine/bean/SceneParam;
.super Ljava/lang/Object;
.source "SceneParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/engine/bean/SceneParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private author:Ljava/lang/String;

.field private autoTriggerState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/engine/bean/AutoTriggerState;",
            ">;"
        }
    .end annotation
.end field

.field private background:Ljava/lang/String;

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

.field private detailBackground:Ljava/lang/String;

.field private endTime:Ljava/lang/String;

.field private groundIcon:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private labelCode:Ljava/lang/String;

.field private labelName:Ljava/lang/String;

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

.field private startTime:Ljava/lang/String;

.field private themes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Lcom/geely/lib/cloud/engine/bean/SceneParam$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/engine/bean/SceneParam$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 105
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

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->name:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->code:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->desc:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->startTime:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->endTime:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->labelCode:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->labelName:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->author:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->icon:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->groundIcon:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->background:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->detailBackground:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->minDuration:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->maxDuration:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->defaultDuration:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->showOnAssistScreen:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->seatSelect:[I

    .line 49
    sget-object v0, Lcom/geely/lib/cloud/engine/bean/ScenRequiredState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->scenRequiredState:Ljava/util/List;

    .line 50
    sget-object v0, Lcom/geely/lib/cloud/engine/bean/AutoTriggerState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->autoTriggerState:Ljava/util/List;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->themes:Ljava/util/List;

    .line 52
    sget-object v0, Lcom/geely/lib/cloud/engine/bean/Commands;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->commands:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->author:Ljava/lang/String;

    return-object v0
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

    .line 253
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->autoTriggerState:Ljava/util/List;

    return-object v0
.end method

.method public getBackground()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->background:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->code:Ljava/lang/String;

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

    .line 261
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->commands:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultDuration()I
    .locals 1

    .line 221
    iget v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->defaultDuration:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailBackground()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->detailBackground:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getGroundIcon()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->groundIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelCode()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->labelCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelName()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->labelName:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxDuration()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->maxDuration:I

    return v0
.end method

.method public getMinDuration()I
    .locals 1

    .line 205
    iget v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->minDuration:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->name:Ljava/lang/String;

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

    .line 245
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->scenRequiredState:Ljava/util/List;

    return-object v0
.end method

.method public getSeatSelect()[I
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->seatSelect:[I

    return-object v0
.end method

.method public getShowOnAssistScreen()I
    .locals 1

    .line 229
    iget v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->showOnAssistScreen:I

    return v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getThemes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->themes:Ljava/util/List;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "author"
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->author:Ljava/lang/String;

    return-void
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

    .line 257
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->autoTriggerState:Ljava/util/List;

    return-void
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "background"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->background:Ljava/lang/String;

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

    .line 121
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->code:Ljava/lang/String;

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

    .line 265
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->commands:Ljava/util/List;

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

    .line 225
    iput p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->defaultDuration:I

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

    .line 129
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->desc:Ljava/lang/String;

    return-void
.end method

.method public setDetailBackground(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detailBackground"
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->detailBackground:Ljava/lang/String;

    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endTime"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->endTime:Ljava/lang/String;

    return-void
.end method

.method public setGroundIcon(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groundIcon"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->groundIcon:Ljava/lang/String;

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

    .line 177
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->icon:Ljava/lang/String;

    return-void
.end method

.method public setLabelCode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "labelCode"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->labelCode:Ljava/lang/String;

    return-void
.end method

.method public setLabelName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "labelName"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->labelName:Ljava/lang/String;

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

    .line 217
    iput p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->maxDuration:I

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

    .line 209
    iput p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->minDuration:I

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

    .line 113
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->name:Ljava/lang/String;

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

    .line 249
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->scenRequiredState:Ljava/util/List;

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

    .line 241
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->seatSelect:[I

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

    .line 233
    iput p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->showOnAssistScreen:I

    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startTime"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->startTime:Ljava/lang/String;

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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->themes:Ljava/util/List;

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

    .line 57
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->code:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->desc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->startTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->endTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->labelCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->labelName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->author:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->icon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->groundIcon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->background:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->detailBackground:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget p2, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->minDuration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget p2, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->maxDuration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget p2, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->defaultDuration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget p2, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->showOnAssistScreen:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->seatSelect:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 74
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->scenRequiredState:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 75
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->autoTriggerState:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 76
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->themes:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 77
    iget-object p2, p0, Lcom/geely/lib/cloud/engine/bean/SceneParam;->commands:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
