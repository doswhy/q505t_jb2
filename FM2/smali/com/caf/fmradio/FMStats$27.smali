.class Lcom/caf/fmradio/FMStats$27;
.super Landroid/content/BroadcastReceiver;
.source "FMStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/caf/fmradio/FMStats;->registerBandSweepDelayExprdListener()V
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
    .line 2310
    iput-object p1, p0, Lcom/caf/fmradio/FMStats$27;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2313
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received Band sweep delay expired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$27;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/caf/fmradio/FMStats;->access$3600(Lcom/caf/fmradio/FMStats;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2315
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$27;->this$0:Lcom/caf/fmradio/FMStats;

    #calls: Lcom/caf/fmradio/FMStats;->StartBandSweep()V
    invoke-static {v0}, Lcom/caf/fmradio/FMStats;->access$5600(Lcom/caf/fmradio/FMStats;)V

    .line 2316
    return-void
.end method
