.class Lcom/caf/fmradio/FMStats$19;
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
    .line 1798
    iput-object p1, p0, Lcom/caf/fmradio/FMStats$19;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1800
    const/4 v2, 0x1

    .line 1804
    .local v2, status:Z
    :try_start_0
    iget-object v3, p0, Lcom/caf/fmradio/FMStats$19;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/caf/fmradio/FMStats;->access$3600(Lcom/caf/fmradio/FMStats;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1805
    iget-object v3, p0, Lcom/caf/fmradio/FMStats$19;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mNextFreqInterface:Lcom/caf/fmradio/GetNextFreqInterface;
    invoke-static {v3}, Lcom/caf/fmradio/FMStats;->access$4000(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/GetNextFreqInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/caf/fmradio/GetNextFreqInterface;->getNextFreq()I

    move-result v1

    .line 1806
    .local v1, freq:I
    :goto_0
    iget-object v3, p0, Lcom/caf/fmradio/FMStats$19;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mNextFreqInterface:Lcom/caf/fmradio/GetNextFreqInterface;
    invoke-static {v3}, Lcom/caf/fmradio/FMStats;->access$4000(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/GetNextFreqInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/caf/fmradio/GetNextFreqInterface;->errorOccured()Z

    move-result v3

    if-nez v3, :cond_2

    move v6, v4

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    :goto_2
    and-int v2, v6, v3

    if-eqz v2, :cond_0

    .line 1809
    iget-object v3, p0, Lcom/caf/fmradio/FMStats$19;->this$0:Lcom/caf/fmradio/FMStats;

    #calls: Lcom/caf/fmradio/FMStats;->validFreq(I)Z
    invoke-static {v3, v1}, Lcom/caf/fmradio/FMStats;->access$4100(Lcom/caf/fmradio/FMStats;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1810
    iget-object v3, p0, Lcom/caf/fmradio/FMStats$19;->this$0:Lcom/caf/fmradio/FMStats;

    #calls: Lcom/caf/fmradio/FMStats;->tuneAndUpdateSweepResult(I)Z
    invoke-static {v3, v1}, Lcom/caf/fmradio/FMStats;->access$3700(Lcom/caf/fmradio/FMStats;I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1811
    const/4 v2, 0x0

    .line 1820
    :cond_0
    :goto_3
    if-nez v2, :cond_1

    .line 1821
    iget-object v3, p0, Lcom/caf/fmradio/FMStats$19;->this$0:Lcom/caf/fmradio/FMStats;

    #calls: Lcom/caf/fmradio/FMStats;->sendStatusDoneMsg()V
    invoke-static {v3}, Lcom/caf/fmradio/FMStats;->access$800(Lcom/caf/fmradio/FMStats;)V

    .line 1822
    iget-object v3, p0, Lcom/caf/fmradio/FMStats$19;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mNextFreqInterface:Lcom/caf/fmradio/GetNextFreqInterface;
    invoke-static {v3}, Lcom/caf/fmradio/FMStats;->access$4000(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/GetNextFreqInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/caf/fmradio/GetNextFreqInterface;->Stop()V

    .line 1823
    iget-object v3, p0, Lcom/caf/fmradio/FMStats$19;->this$0:Lcom/caf/fmradio/FMStats;

    const/4 v4, 0x0

    #setter for: Lcom/caf/fmradio/FMStats;->mNextFreqInterface:Lcom/caf/fmradio/GetNextFreqInterface;
    invoke-static {v3, v4}, Lcom/caf/fmradio/FMStats;->access$4002(Lcom/caf/fmradio/FMStats;Lcom/caf/fmradio/GetNextFreqInterface;)Lcom/caf/fmradio/GetNextFreqInterface;

    .line 1828
    .end local v1           #freq:I
    :cond_1
    :goto_4
    return-void

    .restart local v1       #freq:I
    :cond_2
    move v6, v5

    .line 1806
    goto :goto_1

    :cond_3
    move v3, v5

    goto :goto_2

    .line 1814
    :cond_4
    iget-object v3, p0, Lcom/caf/fmradio/FMStats$19;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v4, p0, Lcom/caf/fmradio/FMStats$19;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->prevDwellTime:I
    invoke-static {v4}, Lcom/caf/fmradio/FMStats;->access$3800(Lcom/caf/fmradio/FMStats;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    const-string v6, "com.caf.fmradio.SWEEP_DWELL_DELAY_EXP"

    #calls: Lcom/caf/fmradio/FMStats;->setAlarm(JLjava/lang/String;)V
    invoke-static {v3, v4, v5, v6}, Lcom/caf/fmradio/FMStats;->access$3900(Lcom/caf/fmradio/FMStats;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1825
    .end local v1           #freq:I
    :catch_0
    move-exception v0

    .line 1826
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 1808
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #freq:I
    :cond_5
    :try_start_1
    iget-object v3, p0, Lcom/caf/fmradio/FMStats$19;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mNextFreqInterface:Lcom/caf/fmradio/GetNextFreqInterface;
    invoke-static {v3}, Lcom/caf/fmradio/FMStats;->access$4000(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/GetNextFreqInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/caf/fmradio/GetNextFreqInterface;->getNextFreq()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0
.end method
