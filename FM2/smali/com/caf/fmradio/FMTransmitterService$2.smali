.class Lcom/caf/fmradio/FMTransmitterService$2;
.super Landroid/os/Handler;
.source "FMTransmitterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FMTransmitterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/fmradio/FMTransmitterService;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/FMTransmitterService;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterService$2;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterService$2;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMTransmitterService;->isFmOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterService$2;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mServiceInUse:Z
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterService;->access$100(Lcom/caf/fmradio/FMTransmitterService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    const-string v0, "FMTxService"

    const-string v1, "mDelayedStopHandler: stopSelf"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterService$2;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService$2;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mServiceStartId:I
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterService;->access$200(Lcom/caf/fmradio/FMTransmitterService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/caf/fmradio/FMTransmitterService;->stopSelf(I)V

    goto :goto_0
.end method
