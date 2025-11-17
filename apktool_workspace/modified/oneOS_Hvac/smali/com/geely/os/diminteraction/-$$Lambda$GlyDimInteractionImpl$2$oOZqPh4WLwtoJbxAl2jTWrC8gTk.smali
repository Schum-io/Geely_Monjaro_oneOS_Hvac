.class public final synthetic Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$2$oOZqPh4WLwtoJbxAl2jTWrC8gTk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$2$oOZqPh4WLwtoJbxAl2jTWrC8gTk;->f$0:I

    iput-object p2, p0, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$2$oOZqPh4WLwtoJbxAl2jTWrC8gTk;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$2$oOZqPh4WLwtoJbxAl2jTWrC8gTk;->f$0:I

    iget-object v1, p0, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$2$oOZqPh4WLwtoJbxAl2jTWrC8gTk;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/geely/os/diminteraction/IGlyContactsInteractionCallback;

    invoke-static {v0, v1, p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$2;->lambda$onDoContactInteractionAction$0(ILjava/lang/String;Lcom/geely/os/diminteraction/IGlyContactsInteractionCallback;)V

    return-void
.end method
