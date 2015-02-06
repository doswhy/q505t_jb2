.class Lcom/caf/fmradio/FMStats$29;
.super Ljava/lang/Object;
.source "FMStats.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FMStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/fmradio/FMStats;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/FMStats;)V
    .locals 0
    .parameter

    .prologue
    .line 2515
    iput-object p1, p0, Lcom/caf/fmradio/FMStats$29;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2517
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/caf/fmradio/FMStats$29;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-virtual {v3}, Lcom/caf/fmradio/FMStats;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2520
    const-wide/16 v3, 0x1f4

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 2521
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 2522
    .local v2, statusUpdate:Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    .line 2523
    iget-object v3, p0, Lcom/caf/fmradio/FMStats$29;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mUIUpdateHandlerHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/caf/fmradio/FMStats;->access$3300(Lcom/caf/fmradio/FMStats;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2527
    .end local v2           #statusUpdate:Landroid/os/Message;
    :goto_1
    iget-object v3, p0, Lcom/caf/fmradio/FMStats$29;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-virtual {v3}, Lcom/caf/fmradio/FMStats;->isRecording()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2528
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2529
    .local v1, finished:Landroid/os/Message;
    const/4 v3, 0x4

    iput v3, v1, Landroid/os/Message;->what:I

    .line 2530
    iget-object v3, p0, Lcom/caf/fmradio/FMStats$29;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mUIUpdateHandlerHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/caf/fmradio/FMStats;->access$3300(Lcom/caf/fmradio/FMStats;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2524
    .end local v1           #finished:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 2525
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 2533
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method
