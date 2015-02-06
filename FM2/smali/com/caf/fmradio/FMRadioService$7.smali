.class Lcom/caf/fmradio/FMRadioService$7;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/caf/fmradio/FMRadioService;->registerDelayedServiceStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/fmradio/FMRadioService;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 581
    iput-object p1, p0, Lcom/caf/fmradio/FMRadioService$7;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 584
    const-string v0, "FMService"

    const-string v1, "registerDelayedServiceStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$7;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadioService;->access$1400(Lcom/caf/fmradio/FMRadioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 586
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$7;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->isFmOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$7;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mServiceInUse:Z
    invoke-static {v0}, Lcom/caf/fmradio/FMRadioService;->access$100(Lcom/caf/fmradio/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$7;->this$0:Lcom/caf/fmradio/FMRadioService;

    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$7;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mServiceStartId:I
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$1500(Lcom/caf/fmradio/FMRadioService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/caf/fmradio/FMRadioService;->stopSelf(I)V

    goto :goto_0
.end method
