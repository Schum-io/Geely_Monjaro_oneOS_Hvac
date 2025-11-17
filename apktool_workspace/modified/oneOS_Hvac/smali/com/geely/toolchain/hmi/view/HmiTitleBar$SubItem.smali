.class public Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubItem;
.super Ljava/lang/Object;
.source "HmiTitleBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/toolchain/hmi/view/HmiTitleBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubItem"
.end annotation


# instance fields
.field private resId:I

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 124
    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubItem;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resId",
            "text"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 124
    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubItem;->text:Ljava/lang/String;

    .line 117
    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubItem;->resId:I

    .line 118
    iput-object p2, p0, Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubItem;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getResId()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubItem;->resId:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubItem;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setResId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 131
    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubItem;->resId:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubItem;->text:Ljava/lang/String;

    return-void
.end method
