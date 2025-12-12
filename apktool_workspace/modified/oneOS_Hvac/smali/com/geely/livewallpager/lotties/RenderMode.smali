.class public final enum Lcom/geely/livewallpager/lotties/RenderMode;
.super Ljava/lang/Enum;
.source "RenderMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/geely/livewallpager/lotties/RenderMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/geely/livewallpager/lotties/RenderMode;

.field public static final enum AUTOMATIC:Lcom/geely/livewallpager/lotties/RenderMode;

.field public static final enum HARDWARE:Lcom/geely/livewallpager/lotties/RenderMode;

.field public static final enum SOFTWARE:Lcom/geely/livewallpager/lotties/RenderMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    new-instance v0, Lcom/geely/livewallpager/lotties/RenderMode;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/geely/livewallpager/lotties/RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geely/livewallpager/lotties/RenderMode;->AUTOMATIC:Lcom/geely/livewallpager/lotties/RenderMode;

    .line 11
    new-instance v1, Lcom/geely/livewallpager/lotties/RenderMode;

    const-string v3, "HARDWARE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/geely/livewallpager/lotties/RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/geely/livewallpager/lotties/RenderMode;->HARDWARE:Lcom/geely/livewallpager/lotties/RenderMode;

    .line 12
    new-instance v3, Lcom/geely/livewallpager/lotties/RenderMode;

    const-string v5, "SOFTWARE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/geely/livewallpager/lotties/RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/geely/livewallpager/lotties/RenderMode;->SOFTWARE:Lcom/geely/livewallpager/lotties/RenderMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/geely/livewallpager/lotties/RenderMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 9
    sput-object v5, Lcom/geely/livewallpager/lotties/RenderMode;->$VALUES:[Lcom/geely/livewallpager/lotties/RenderMode;

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

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/geely/livewallpager/lotties/RenderMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 9
    const-class v0, Lcom/geely/livewallpager/lotties/RenderMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/geely/livewallpager/lotties/RenderMode;

    return-object p0
.end method

.method public static values()[Lcom/geely/livewallpager/lotties/RenderMode;
    .locals 1

    .line 9
    sget-object v0, Lcom/geely/livewallpager/lotties/RenderMode;->$VALUES:[Lcom/geely/livewallpager/lotties/RenderMode;

    invoke-virtual {v0}, [Lcom/geely/livewallpager/lotties/RenderMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/geely/livewallpager/lotties/RenderMode;

    return-object v0
.end method
