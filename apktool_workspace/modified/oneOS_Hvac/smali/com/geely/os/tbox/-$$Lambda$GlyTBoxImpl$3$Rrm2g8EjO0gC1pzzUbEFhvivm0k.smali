.class public final synthetic Lcom/geely/os/tbox/-$$Lambda$GlyTBoxImpl$3$Rrm2g8EjO0gC1pzzUbEFhvivm0k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/os/tbox/-$$Lambda$GlyTBoxImpl$3$Rrm2g8EjO0gC1pzzUbEFhvivm0k;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/geely/os/tbox/-$$Lambda$GlyTBoxImpl$3$Rrm2g8EjO0gC1pzzUbEFhvivm0k;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/geely/os/tbox/-$$Lambda$GlyTBoxImpl$3$Rrm2g8EjO0gC1pzzUbEFhvivm0k;->f$0:Ljava/lang/Object;

    iget v1, p0, Lcom/geely/os/tbox/-$$Lambda$GlyTBoxImpl$3$Rrm2g8EjO0gC1pzzUbEFhvivm0k;->f$1:I

    check-cast p1, Lcom/geely/os/tbox/GlyTBoxMessageCallback;

    invoke-static {v0, v1, p1}, Lcom/geely/os/tbox/GlyTBoxImpl$3;->lambda$onTBoxMessageGet$0(Ljava/lang/Object;ILcom/geely/os/tbox/GlyTBoxMessageCallback;)V

    return-void
.end method
