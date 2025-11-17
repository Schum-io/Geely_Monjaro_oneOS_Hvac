.class public final synthetic Lcom/geely/hvac/component/-$$Lambda$BlowWindAnimateIons$2$swMK3ucUIVlBPsiuK9e_HCE7z44;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/geely/hvac/component/BlowWindAnimateIons$2;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvac/component/BlowWindAnimateIons$2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/component/-$$Lambda$BlowWindAnimateIons$2$swMK3ucUIVlBPsiuK9e_HCE7z44;->f$0:Lcom/geely/hvac/component/BlowWindAnimateIons$2;

    iput-object p2, p0, Lcom/geely/hvac/component/-$$Lambda$BlowWindAnimateIons$2$swMK3ucUIVlBPsiuK9e_HCE7z44;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/geely/hvac/component/-$$Lambda$BlowWindAnimateIons$2$swMK3ucUIVlBPsiuK9e_HCE7z44;->f$0:Lcom/geely/hvac/component/BlowWindAnimateIons$2;

    iget-object v1, p0, Lcom/geely/hvac/component/-$$Lambda$BlowWindAnimateIons$2$swMK3ucUIVlBPsiuK9e_HCE7z44;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/BlowWindAnimateIons$2;->lambda$onAnimationEnd$0$BlowWindAnimateIons$2(Ljava/lang/String;)V

    return-void
.end method
