.class public Lcom/geely/toolchain/hmi/view/selector/entity/SelectorEntity;
.super Ljava/lang/Object;
.source "SelectorEntity.java"

# interfaces
.implements Lcom/geely/toolchain/hmi/view/selector/listener/CustomSelectorEntity;


# instance fields
.field public selectedIcon:I

.field public title:Ljava/lang/String;

.field public unSelectedIcon:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "selectedIcon",
            "unSelectedIcon"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/selector/entity/SelectorEntity;->title:Ljava/lang/String;

    .line 20
    iput p2, p0, Lcom/geely/toolchain/hmi/view/selector/entity/SelectorEntity;->selectedIcon:I

    .line 21
    iput p3, p0, Lcom/geely/toolchain/hmi/view/selector/entity/SelectorEntity;->unSelectedIcon:I

    return-void
.end method


# virtual methods
.method public getSelectedIcon()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/geely/toolchain/hmi/view/selector/entity/SelectorEntity;->selectedIcon:I

    return v0
.end method

.method public getSelectorTitle()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/selector/entity/SelectorEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUnselectedIcon()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/geely/toolchain/hmi/view/selector/entity/SelectorEntity;->unSelectedIcon:I

    return v0
.end method
