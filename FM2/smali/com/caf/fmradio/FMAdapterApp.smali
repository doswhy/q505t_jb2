.class public Lcom/caf/fmradio/FMAdapterApp;
.super Landroid/app/Application;
.source "FMAdapterApp.java"


# static fields
.field private static sRefCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/caf/fmradio/FMAdapterApp;->sRefCount:I

    .line 36
    const-string v0, "FMAdapterApp"

    const-string v1, "Loading FM-JNI Library"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string v0, "qcomfm_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 43
    const-class v1, Lcom/caf/fmradio/FMAdapterApp;

    monitor-enter v1

    .line 44
    :try_start_0
    sget v0, Lcom/caf/fmradio/FMAdapterApp;->sRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/caf/fmradio/FMAdapterApp;->sRefCount:I

    .line 45
    const-string v0, "FMAdapterApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REFCOUNT: Constructed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Instance Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/caf/fmradio/FMAdapterApp;->sRefCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    monitor-exit v1

    .line 48
    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 4

    .prologue
    .line 58
    const-class v1, Lcom/caf/fmradio/FMAdapterApp;

    monitor-enter v1

    .line 59
    :try_start_0
    sget v0, Lcom/caf/fmradio/FMAdapterApp;->sRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/caf/fmradio/FMAdapterApp;->sRefCount:I

    .line 60
    const-string v0, "FMAdapterApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REFCOUNT: Finalized: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Instance Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/caf/fmradio/FMAdapterApp;->sRefCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    monitor-exit v1

    .line 63
    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 53
    return-void
.end method
