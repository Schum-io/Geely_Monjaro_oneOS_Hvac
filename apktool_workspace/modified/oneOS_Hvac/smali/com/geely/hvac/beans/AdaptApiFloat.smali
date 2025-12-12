.class public Lcom/geely/hvac/beans/AdaptApiFloat;
.super Ljava/lang/Object;
.source "AdaptApiFloat.java"


# instance fields
.field private mValue:F

.field private mZone:I


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/geely/hvac/beans/AdaptApiFloat;->mValue:F

    return-void
.end method

.method public constructor <init>(FI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "zone"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/geely/hvac/beans/AdaptApiFloat;->mValue:F

    .line 13
    iput p2, p0, Lcom/geely/hvac/beans/AdaptApiFloat;->mZone:I

    return-void
.end method


# virtual methods
.method public getValue()F
    .locals 1

    .line 17
    iget v0, p0, Lcom/geely/hvac/beans/AdaptApiFloat;->mValue:F

    return v0
.end method

.method public getZone()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/geely/hvac/beans/AdaptApiFloat;->mZone:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdaptApiFloat{mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/hvac/beans/AdaptApiFloat;->mValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/hvac/beans/AdaptApiFloat;->mZone:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
