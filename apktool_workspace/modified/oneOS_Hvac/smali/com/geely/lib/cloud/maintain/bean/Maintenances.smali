.class public Lcom/geely/lib/cloud/maintain/bean/Maintenances;
.super Ljava/lang/Object;
.source "Maintenances.java"


# instance fields
.field private maintenanceDate:Ljava/lang/String;

.field private maintenanceDistance:Ljava/lang/String;

.field private maintenanceLocation:Ljava/lang/String;

.field private maintenanceProject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaintenanceDate()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/Maintenances;->maintenanceDate:Ljava/lang/String;

    return-object v0
.end method

.method public getMaintenanceDistance()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/Maintenances;->maintenanceDistance:Ljava/lang/String;

    return-object v0
.end method

.method public getMaintenanceLocation()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/Maintenances;->maintenanceLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getMaintenanceProject()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/Maintenances;->maintenanceProject:Ljava/lang/String;

    return-object v0
.end method

.method public setMaintenanceDate(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maintenanceDate"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/Maintenances;->maintenanceDate:Ljava/lang/String;

    return-void
.end method

.method public setMaintenanceDistance(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maintenanceDistance"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/Maintenances;->maintenanceDistance:Ljava/lang/String;

    return-void
.end method

.method public setMaintenanceLocation(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maintenanceLocation"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/Maintenances;->maintenanceLocation:Ljava/lang/String;

    return-void
.end method

.method public setMaintenanceProject(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maintenanceProject"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/Maintenances;->maintenanceProject:Ljava/lang/String;

    return-void
.end method
