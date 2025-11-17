.class public interface abstract annotation Lcom/geely/os/lighting/IGlyLightingShow$ReqState;
.super Ljava/lang/Object;
.source "IGlyLightingShow.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/os/lighting/IGlyLightingShow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ReqState"
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final NOT_REQUEST_DOWNLOAD:I = 0x0

.field public static final REQUEST_DOWNLOAD:I = 0x1
