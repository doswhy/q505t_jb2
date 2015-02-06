.class Lcom/caf/fmradio/FMStats$28;
.super Landroid/content/BroadcastReceiver;
.source "FMStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/caf/fmradio/FMStats;->registerBandSweepDwellExprdListener()V
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
    .line 2325
    iput-object p1, p0, Lcom/caf/fmradio/FMStats$28;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2328
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "received Band sweep Dwell expired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$28;->this$0:Lcom/caf/fmradio/FMStats;

    iget-boolean v0, v0, Lcom/caf/fmradio/FMStats;->mTestRunning:Z

    if-eqz v0, :cond_0

    .line 2330
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$28;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/caf/fmradio/FMStats;->access$3600(Lcom/caf/fmradio/FMStats;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2331
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$28;->this$0:Lcom/caf/fmradio/FMStats;

    #calls: Lcom/caf/fmradio/FMStats;->ResumeBandSweep()V
    invoke-static {v0}, Lcom/caf/fmradio/FMStats;->access$5700(Lcom/caf/fmradio/FMStats;)V

    .line 2333
    :cond_0
    return-void
.end method
