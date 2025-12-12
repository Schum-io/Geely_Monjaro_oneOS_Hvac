.class Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$KeySet$1;
.super Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$KeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap<",
        "TK;TV;>.",
        "LinkedTreeMapIterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$KeySet;


# direct methods
.method constructor <init>(Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$KeySet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 832
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$KeySet$1;->this$1:Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$KeySet;

    iget-object p1, p1, Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$KeySet;->this$0:Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap;

    invoke-direct {p0, p1}, Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;-><init>(Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 834
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$KeySet$1;->nextNode()Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object v0

    iget-object v0, v0, Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method
