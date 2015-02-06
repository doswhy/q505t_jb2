.class Lcom/caf/fmradio/FMRadio$37;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FMRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/fmradio/FMRadio;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/FMRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 2470
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$37;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2472
    iget-object v4, p0, Lcom/caf/fmradio/FMRadio$37;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->hasSleepTimerExpired()Z
    invoke-static {v4}, Lcom/caf/fmradio/FMRadio;->access$4900(Lcom/caf/fmradio/FMRadio;)Z

    move-result v2

    .line 2473
    .local v2, sleepTimerExpired:Z
    :goto_0
    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2476
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 2477
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 2478
    .local v3, statusUpdate:Landroid/os/Message;
    const/16 v4, 0x1002

    iput v4, v3, Landroid/os/Message;->what:I

    .line 2479
    const-string v4, "FMRadio"

    const-string v5, "SLEEP TIMER UPDATE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    iget-object v4, p0, Lcom/caf/fmradio/FMRadio$37;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mUIUpdateHandlerHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/caf/fmradio/FMRadio;->access$200(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2481
    iget-object v4, p0, Lcom/caf/fmradio/FMRadio$37;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->hasSleepTimerExpired()Z
    invoke-static {v4}, Lcom/caf/fmradio/FMRadio;->access$4900(Lcom/caf/fmradio/FMRadio;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 2482
    .end local v3           #statusUpdate:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 2483
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "FMRadio"

    const-string v5, "RunningThread InterruptedException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x1

    if-ne v4, v2, :cond_1

    .line 2488
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2489
    .local v1, finished:Landroid/os/Message;
    const/16 v4, 0x1001

    iput v4, v1, Landroid/os/Message;->what:I

    .line 2490
    iget-object v4, p0, Lcom/caf/fmradio/FMRadio$37;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mUIUpdateHandlerHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/caf/fmradio/FMRadio;->access$200(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2492
    .end local v1           #finished:Landroid/os/Message;
    :cond_1
    return-void
.end method
