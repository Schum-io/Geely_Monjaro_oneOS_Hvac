.class public interface abstract Lcom/geely/hvac/utils/ConfigurationChangedDelegate$ConfigurationChangedListener;
.super Ljava/lang/Object;
.source "ConfigurationChangedDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/utils/ConfigurationChangedDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConfigurationChangedListener"
.end annotation


# virtual methods
.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation
.end method
