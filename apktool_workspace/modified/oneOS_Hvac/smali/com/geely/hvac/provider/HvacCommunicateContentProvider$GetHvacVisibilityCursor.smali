.class public Lcom/geely/hvac/provider/HvacCommunicateContentProvider$GetHvacVisibilityCursor;
.super Landroid/database/AbstractWindowedCursor;
.source "HvacCommunicateContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/provider/HvacCommunicateContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetHvacVisibilityCursor"
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/CursorWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "window"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Landroid/database/AbstractWindowedCursor;-><init>()V

    .line 50
    invoke-virtual {p0, p1}, Lcom/geely/hvac/provider/HvacCommunicateContentProvider$GetHvacVisibilityCursor;->setWindow(Landroid/database/CursorWindow;)V

    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    const-string v0, "result"

    .line 60
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
