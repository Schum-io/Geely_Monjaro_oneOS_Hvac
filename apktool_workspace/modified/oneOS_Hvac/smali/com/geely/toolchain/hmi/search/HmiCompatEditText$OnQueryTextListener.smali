.class public interface abstract Lcom/geely/toolchain/hmi/search/HmiCompatEditText$OnQueryTextListener;
.super Ljava/lang/Object;
.source "HmiCompatEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/toolchain/hmi/search/HmiCompatEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnQueryTextListener"
.end annotation


# virtual methods
.method public abstract onQueryTextChange(Ljava/lang/CharSequence;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newText"
        }
    .end annotation
.end method

.method public abstract onQueryTextSubmit(Ljava/lang/CharSequence;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "query"
        }
    .end annotation
.end method
