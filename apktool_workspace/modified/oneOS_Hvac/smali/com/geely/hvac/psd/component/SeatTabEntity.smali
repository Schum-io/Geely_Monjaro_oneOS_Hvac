.class public Lcom/geely/hvac/psd/component/SeatTabEntity;
.super Ljava/lang/Object;
.source "SeatTabEntity.java"


# instance fields
.field private mTabName:Ljava/lang/String;

.field private mTabResource:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tabName",
            "tabResource"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/geely/hvac/psd/component/SeatTabEntity;->mTabName:Ljava/lang/String;

    .line 12
    iput p2, p0, Lcom/geely/hvac/psd/component/SeatTabEntity;->mTabResource:I

    return-void
.end method


# virtual methods
.method public getTabName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/geely/hvac/psd/component/SeatTabEntity;->mTabName:Ljava/lang/String;

    return-object v0
.end method

.method public getTabResource()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/geely/hvac/psd/component/SeatTabEntity;->mTabResource:I

    return v0
.end method

.method public setTabName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tabName"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/geely/hvac/psd/component/SeatTabEntity;->mTabName:Ljava/lang/String;

    return-void
.end method

.method public setTabResource(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tabResource"
        }
    .end annotation

    .line 28
    iput p1, p0, Lcom/geely/hvac/psd/component/SeatTabEntity;->mTabResource:I

    return-void
.end method
