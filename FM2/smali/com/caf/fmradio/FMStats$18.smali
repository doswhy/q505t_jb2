.class Lcom/caf/fmradio/FMStats$18;
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
    .line 1755
    iput-object p1, p0, Lcom/caf/fmradio/FMStats$18;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1758
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$18;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mBand:Lcom/caf/fmradio/FMStats$Band;
    invoke-static {v1}, Lcom/caf/fmradio/FMStats;->access$3500(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/FMStats$Band;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1779
    :goto_0
    return-void

    .line 1761
    :cond_0
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$18;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/caf/fmradio/FMStats;->access$3600(Lcom/caf/fmradio/FMStats;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1762
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$18;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mBand:Lcom/caf/fmradio/FMStats$Band;
    invoke-static {v1}, Lcom/caf/fmradio/FMStats;->access$3500(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/FMStats$Band;

    move-result-object v1

    iget v1, v1, Lcom/caf/fmradio/FMStats$Band;->cur_freq:I

    iget-object v2, p0, Lcom/caf/fmradio/FMStats$18;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mBand:Lcom/caf/fmradio/FMStats$Band;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$3500(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/FMStats$Band;

    move-result-object v2

    iget v2, v2, Lcom/caf/fmradio/FMStats$Band;->hFreq:I

    if-gt v1, v2, :cond_3

    .line 1763
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$18;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, p0, Lcom/caf/fmradio/FMStats$18;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mBand:Lcom/caf/fmradio/FMStats$Band;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$3500(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/FMStats$Band;

    move-result-object v2

    iget v2, v2, Lcom/caf/fmradio/FMStats$Band;->cur_freq:I

    #calls: Lcom/caf/fmradio/FMStats;->tuneAndUpdateSweepResult(I)Z
    invoke-static {v1, v2}, Lcom/caf/fmradio/FMStats;->access$3700(Lcom/caf/fmradio/FMStats;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1764
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$18;->this$0:Lcom/caf/fmradio/FMStats;

    #calls: Lcom/caf/fmradio/FMStats;->sendStatusDoneMsg()V
    invoke-static {v1}, Lcom/caf/fmradio/FMStats;->access$800(Lcom/caf/fmradio/FMStats;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1776
    :catch_0
    move-exception v0

    .line 1777
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1767
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$18;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mBand:Lcom/caf/fmradio/FMStats$Band;
    invoke-static {v1}, Lcom/caf/fmradio/FMStats;->access$3500(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/FMStats$Band;

    move-result-object v1

    iget v2, v1, Lcom/caf/fmradio/FMStats$Band;->cur_freq:I

    iget-object v3, p0, Lcom/caf/fmradio/FMStats$18;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mBand:Lcom/caf/fmradio/FMStats$Band;
    invoke-static {v3}, Lcom/caf/fmradio/FMStats;->access$3500(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/FMStats$Band;

    move-result-object v3

    iget v3, v3, Lcom/caf/fmradio/FMStats$Band;->Spacing:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/caf/fmradio/FMStats$Band;->cur_freq:I

    .line 1768
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$18;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mBand:Lcom/caf/fmradio/FMStats$Band;
    invoke-static {v1}, Lcom/caf/fmradio/FMStats;->access$3500(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/FMStats$Band;

    move-result-object v1

    iget v1, v1, Lcom/caf/fmradio/FMStats$Band;->cur_freq:I

    iget-object v2, p0, Lcom/caf/fmradio/FMStats$18;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mBand:Lcom/caf/fmradio/FMStats$Band;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$3500(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/FMStats$Band;

    move-result-object v2

    iget v2, v2, Lcom/caf/fmradio/FMStats$Band;->hFreq:I

    if-le v1, v2, :cond_2

    .line 1769
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$18;->this$0:Lcom/caf/fmradio/FMStats;

    #calls: Lcom/caf/fmradio/FMStats;->sendStatusDoneMsg()V
    invoke-static {v1}, Lcom/caf/fmradio/FMStats;->access$800(Lcom/caf/fmradio/FMStats;)V

    goto :goto_0

    .line 1771
    :cond_2
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$18;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, p0, Lcom/caf/fmradio/FMStats$18;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->prevDwellTime:I
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$3800(Lcom/caf/fmradio/FMStats;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    const-string v4, "com.caf.fmradio.SWEEP_DWELL_DELAY_EXP"

    #calls: Lcom/caf/fmradio/FMStats;->setAlarm(JLjava/lang/String;)V
    invoke-static {v1, v2, v3, v4}, Lcom/caf/fmradio/FMStats;->access$3900(Lcom/caf/fmradio/FMStats;JLjava/lang/String;)V

    goto :goto_0

    .line 1774
    :cond_3
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$18;->this$0:Lcom/caf/fmradio/FMStats;

    #calls: Lcom/caf/fmradio/FMStats;->sendStatusDoneMsg()V
    invoke-static {v1}, Lcom/caf/fmradio/FMStats;->access$800(Lcom/caf/fmradio/FMStats;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
