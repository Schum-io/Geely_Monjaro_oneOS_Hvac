.class public final enum Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;
.super Ljava/lang/Enum;
.source "DocumentData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/livewallpager/lotties/model/DocumentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Justification"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;

.field public static final enum CENTER:Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;

.field public static final enum LEFT_ALIGN:Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;

.field public static final enum RIGHT_ALIGN:Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 12
    new-instance v0, Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;

    const-string v1, "LEFT_ALIGN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;->LEFT_ALIGN:Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;

    .line 13
    new-instance v1, Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;

    const-string v3, "RIGHT_ALIGN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;->RIGHT_ALIGN:Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;

    .line 14
    new-instance v3, Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;

    const-string v5, "CENTER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;->CENTER:Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 11
    sput-object v5, Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;->$VALUES:[Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 11
    const-class v0, Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;

    return-object p0
.end method

.method public static values()[Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;
    .locals 1

    .line 11
    sget-object v0, Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;->$VALUES:[Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;

    invoke-virtual {v0}, [Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/geely/livewallpager/lotties/model/DocumentData$Justification;

    return-object v0
.end method
