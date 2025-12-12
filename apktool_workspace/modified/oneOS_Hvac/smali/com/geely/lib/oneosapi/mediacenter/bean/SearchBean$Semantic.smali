.class public Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean$Semantic;
.super Ljava/lang/Object;
.source "SearchBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Semantic"
.end annotation


# instance fields
.field public domain:Ljava/lang/String;

.field public intent:Ljava/lang/String;

.field public query:Ljava/lang/String;

.field public slots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean$Slot;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean;


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean$Semantic;->this$0:Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "music"

    .line 2
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean$Semantic;->domain:Ljava/lang/String;

    const-string p1, "play"

    .line 3
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean$Semantic;->intent:Ljava/lang/String;

    return-void
.end method
