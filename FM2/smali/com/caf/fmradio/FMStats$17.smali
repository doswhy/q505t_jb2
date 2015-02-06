.class Lcom/caf/fmradio/FMStats$17;
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
    .line 1709
    iput-object p1, p0, Lcom/caf/fmradio/FMStats$17;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1713
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getTunedFrequency()I

    move-result v1

    .line 1715
    .local v1, freq:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v5, 0x14

    if-ge v2, v5, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1717
    const-wide/16 v5, 0x1f4

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 1718
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 1719
    .local v4, updateUI:Landroid/os/Message;
    const/4 v5, 0x1

    iput v5, v4, Landroid/os/Message;->what:I

    .line 1720
    iget-object v5, p0, Lcom/caf/fmradio/FMStats$17;->this$0:Lcom/caf/fmradio/FMStats;

    #calls: Lcom/caf/fmradio/FMStats;->GetFMStatsForFreq(I)Lcom/caf/fmradio/FMStats$Result;
    invoke-static {v5, v1}, Lcom/caf/fmradio/FMStats;->access$3200(Lcom/caf/fmradio/FMStats;I)Lcom/caf/fmradio/FMStats$Result;

    move-result-object v5

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1721
    iget-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_1

    .line 1729
    .end local v4           #updateUI:Landroid/os/Message;
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/caf/fmradio/FMStats$17;->this$0:Lcom/caf/fmradio/FMStats;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/caf/fmradio/FMStats;->mTestRunning:Z

    .line 1730
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1731
    .local v3, updateStop:Landroid/os/Message;
    const/4 v5, 0x2

    iput v5, v3, Landroid/os/Message;->what:I

    .line 1732
    iget-object v5, p0, Lcom/caf/fmradio/FMStats$17;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mUIUpdateHandlerHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/caf/fmradio/FMStats;->access$3300(Lcom/caf/fmradio/FMStats;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1733
    return-void

    .line 1723
    .end local v3           #updateStop:Landroid/os/Message;
    .restart local v4       #updateUI:Landroid/os/Message;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/caf/fmradio/FMStats$17;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mUIUpdateHandlerHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/caf/fmradio/FMStats;->access$3300(Lcom/caf/fmradio/FMStats;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1715
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1724
    .end local v4           #updateUI:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 1726
    .local v0, e:Ljava/lang/InterruptedException;
    goto :goto_1
.end method
