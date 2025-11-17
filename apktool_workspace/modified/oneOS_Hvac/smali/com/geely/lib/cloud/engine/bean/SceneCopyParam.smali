.class public Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;
.super Ljava/lang/Object;
.source "SceneCopyParam.java"


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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->author:Ljava/lang/String;

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

    .line 178
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->autoTriggerState:Ljava/util/List;

    return-object v0
.end method

.method public getBackground()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->background:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->code:Ljava/lang/String;

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

    .line 194
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->commands:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultDuration()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->defaultDuration:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailBackground()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->detailBackground:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getGroundIcon()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->groundIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelCode()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->labelCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelName()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->labelName:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxDuration()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->maxDuration:I

    return v0
.end method

.method public getMinDuration()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->minDuration:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->name:Ljava/lang/String;

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

    .line 170
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->scenRequiredState:Ljava/util/List;

    return-object v0
.end method

.method public getSeatSelect()[I
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->seatSelect:[I

    return-object v0
.end method

.method public getShowOnAssistScreen()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->showOnAssistScreen:I

    return v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->startTime:Ljava/lang/String;

    return-object v0
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

    .line 186
    iget-object v0, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->themes:Ljava/util/List;

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

    .line 94
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->author:Ljava/lang/String;

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

    .line 182
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->autoTriggerState:Ljava/util/List;

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

    .line 118
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->background:Ljava/lang/String;

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

    .line 46
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->code:Ljava/lang/String;

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

    .line 198
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->commands:Ljava/util/List;

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

    .line 150
    iput p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->defaultDuration:I

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

    .line 54
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->desc:Ljava/lang/String;

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

    .line 126
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->detailBackground:Ljava/lang/String;

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

    .line 70
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->endTime:Ljava/lang/String;

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

    .line 110
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->groundIcon:Ljava/lang/String;

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

    .line 102
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->icon:Ljava/lang/String;

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

    .line 78
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->labelCode:Ljava/lang/String;

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

    .line 86
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->labelName:Ljava/lang/String;

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

    .line 142
    iput p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->maxDuration:I

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

    .line 134
    iput p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->minDuration:I

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

    .line 38
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->name:Ljava/lang/String;

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

    .line 174
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->scenRequiredState:Ljava/util/List;

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

    .line 166
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->seatSelect:[I

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

    .line 158
    iput p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->showOnAssistScreen:I

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

    .line 62
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->startTime:Ljava/lang/String;

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

    .line 190
    iput-object p1, p0, Lcom/geely/lib/cloud/engine/bean/SceneCopyParam;->themes:Ljava/util/List;

    return-void
.end method
