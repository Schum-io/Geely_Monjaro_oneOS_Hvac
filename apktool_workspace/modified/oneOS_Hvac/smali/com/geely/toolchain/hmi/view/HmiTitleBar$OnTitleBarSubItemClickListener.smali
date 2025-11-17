.class public interface abstract Lcom/geely/toolchain/hmi/view/HmiTitleBar$OnTitleBarSubItemClickListener;
.super Ljava/lang/Object;
.source "HmiTitleBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/toolchain/hmi/view/HmiTitleBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnTitleBarSubItemClickListener"
.end annotation


# virtual methods
.method public abstract onItemClick(Landroid/view/View;ILcom/geely/toolchain/hmi/view/HmiTitleBar$SubItem;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "itemView",
            "position",
            "subItem"
        }
    .end annotation
.end method
