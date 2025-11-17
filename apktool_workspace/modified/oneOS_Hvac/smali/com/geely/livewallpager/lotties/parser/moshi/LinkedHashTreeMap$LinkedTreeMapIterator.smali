.class abstract Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "LinkedTreeMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field lastReturned:Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field next:Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap;


# direct methods
.method constructor <init>(Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 760
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    iget-object v0, p1, Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap;->header:Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$Node;

    iget-object v0, v0, Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$Node;->next:Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$Node;

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->next:Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$Node;

    const/4 v0, 0x0

    .line 762
    iput-object v0, p0, Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$Node;

    .line 763
    iget p1, p1, Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap;->modCount:I

    iput p1, p0, Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 766
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->next:Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$Node;

    iget-object v1, p0, Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap;

    iget-object v1, v1, Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap;->header:Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$Node;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final nextNode()Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 770
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->next:Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$Node;

    .line 771
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap;

    iget-object v1, v1, Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap;->header:Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$Node;

    if-eq v0, v1, :cond_1

    .line 774
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap;

    iget v1, v1, Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap;->modCount:I

    iget v2, p0, Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    if-ne v1, v2, :cond_0

    .line 777
    iget-object v1, v0, Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$Node;->next:Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$Node;

    iput-object v1, p0, Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->next:Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$Node;

    .line 778
    iput-object v0, p0, Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$Node;

    return-object v0

    .line 775
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 772
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 3

    .line 782
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$Node;

    if-eqz v0, :cond_0

    .line 785
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap;->removeInternal(Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$Node;Z)V

    const/4 v0, 0x0

    .line 786
    iput-object v0, p0, Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$Node;

    .line 787
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap;

    iget v0, v0, Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap;->modCount:I

    iput v0, p0, Lcom/geely/livewallpager/lotties/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    return-void

    .line 783
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
