.class Lcom/geely/hvac/component/BlowWindAnimateEco2Normal$1;
.super Ljava/lang/Object;
.source "BlowWindAnimateEco2Normal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->bindVisible(Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$v:Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(ZLcom/geely/hvac/component/BlowWindAnimateEco2Normal;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$visible",
            "val$v"
        }
    .end annotation

    .line 45
    iput-boolean p1, p0, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal$1;->val$visible:Z

    iput-object p2, p0, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal$1;->val$v:Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 48
    iget-boolean v0, p0, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal$1;->val$visible:Z

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal$1;->val$v:Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->setVisibility(I)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal$1;->val$v:Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;->setVisibility(I)V

    :goto_0
    return-void
.end method
