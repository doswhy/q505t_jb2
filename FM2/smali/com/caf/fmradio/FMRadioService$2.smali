.class Lcom/caf/fmradio/FMRadioService$2;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/caf/fmradio/FMRadioService;->registerHeadsetListener()V
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
    .line 343
    iput-object p1, p0, Lcom/caf/fmradio/FMRadioService$2;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 346
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 348
    const-string v5, "FMService"

    const-string v6, "ACTION_HEADSET_PLUG Intent received"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string v5, "FMService"

    const-string v6, "mReceiver: ACTION_HEADSET_PLUG"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v5, "FMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==> intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v5, "FMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "state"

    invoke-virtual {p2, v7, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-string v5, "FMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v5, p0, Lcom/caf/fmradio/FMRadioService$2;->this$0:Lcom/caf/fmradio/FMRadioService;

    const-string v6, "state"

    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_1

    :goto_0
    #setter for: Lcom/caf/fmradio/FMRadioService;->mHeadsetPlugged:Z
    invoke-static {v5, v3}, Lcom/caf/fmradio/FMRadioService;->access$502(Lcom/caf/fmradio/FMRadioService;Z)Z

    .line 358
    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$2;->this$0:Lcom/caf/fmradio/FMRadioService;

    iget-object v3, v3, Lcom/caf/fmradio/FMRadioService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/caf/fmradio/FMRadioService$2;->this$0:Lcom/caf/fmradio/FMRadioService;

    iget-object v4, v4, Lcom/caf/fmradio/FMRadioService;->mHeadsetPluginHandler:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 359
    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$2;->this$0:Lcom/caf/fmradio/FMRadioService;

    iget-object v3, v3, Lcom/caf/fmradio/FMRadioService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/caf/fmradio/FMRadioService$2;->this$0:Lcom/caf/fmradio/FMRadioService;

    iget-object v4, v4, Lcom/caf/fmradio/FMRadioService;->mHeadsetPluginHandler:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 405
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v3, v4

    .line 354
    goto :goto_0

    .line 360
    :cond_2
    iget-object v5, p0, Lcom/caf/fmradio/FMRadioService$2;->this$0:Lcom/caf/fmradio/FMRadioService;

    iget-object v5, v5, Lcom/caf/fmradio/FMRadioService;->mA2dpDeviceState:Lcom/caf/utils/A2dpDeviceStatus;

    invoke-virtual {v5, v0}, Lcom/caf/utils/A2dpDeviceStatus;->isA2dpStateChange(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 361
    iget-object v5, p0, Lcom/caf/fmradio/FMRadioService$2;->this$0:Lcom/caf/fmradio/FMRadioService;

    iget-object v5, v5, Lcom/caf/fmradio/FMRadioService;->mA2dpDeviceState:Lcom/caf/utils/A2dpDeviceStatus;

    invoke-virtual {v5, p2}, Lcom/caf/utils/A2dpDeviceStatus;->isConnected(Landroid/content/Intent;)Z

    move-result v1

    .line 363
    .local v1, bA2dpConnected:Z
    if-nez v1, :cond_3

    .line 364
    const-string v4, "FMService"

    const-string v5, "A2DP device is dis-connected!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v4, p0, Lcom/caf/fmradio/FMRadioService$2;->this$0:Lcom/caf/fmradio/FMRadioService;

    #setter for: Lcom/caf/fmradio/FMRadioService;->mA2dpDisconnected:Z
    invoke-static {v4, v3}, Lcom/caf/fmradio/FMRadioService;->access$602(Lcom/caf/fmradio/FMRadioService;Z)Z

    .line 370
    :goto_2
    iget-object v4, p0, Lcom/caf/fmradio/FMRadioService$2;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v4}, Lcom/caf/fmradio/FMRadioService;->isAnalogModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 371
    const-string v3, "FMService"

    const-string v4, "FM Audio Path is Analog Mode: FM Over BT not allowed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 367
    :cond_3
    const-string v5, "FMService"

    const-string v6, "A2DP device is connected!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v5, p0, Lcom/caf/fmradio/FMRadioService$2;->this$0:Lcom/caf/fmradio/FMRadioService;

    #setter for: Lcom/caf/fmradio/FMRadioService;->mA2dpDisconnected:Z
    invoke-static {v5, v4}, Lcom/caf/fmradio/FMRadioService;->access$602(Lcom/caf/fmradio/FMRadioService;Z)Z

    goto :goto_2

    .line 378
    :cond_4
    iget-object v4, p0, Lcom/caf/fmradio/FMRadioService$2;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v4}, Lcom/caf/fmradio/FMRadioService;->isFmOn()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/caf/fmradio/FMRadioService$2;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mOverA2DP:Z
    invoke-static {v4}, Lcom/caf/fmradio/FMRadioService;->access$700(Lcom/caf/fmradio/FMRadioService;)Z

    move-result v4

    xor-int/2addr v4, v1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$2;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mStoppedOnFocusLoss:Z
    invoke-static {v3}, Lcom/caf/fmradio/FMRadioService;->access$800(Lcom/caf/fmradio/FMRadioService;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$2;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v3}, Lcom/caf/fmradio/FMRadioService;->isSpeakerEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 382
    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$2;->this$0:Lcom/caf/fmradio/FMRadioService;

    #calls: Lcom/caf/fmradio/FMRadioService;->stopFM()V
    invoke-static {v3}, Lcom/caf/fmradio/FMRadioService;->access$900(Lcom/caf/fmradio/FMRadioService;)V

    .line 383
    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$2;->this$0:Lcom/caf/fmradio/FMRadioService;

    #calls: Lcom/caf/fmradio/FMRadioService;->startFM()V
    invoke-static {v3}, Lcom/caf/fmradio/FMRadioService;->access$1000(Lcom/caf/fmradio/FMRadioService;)V

    goto :goto_1

    .line 385
    .end local v1           #bA2dpConnected:Z
    :cond_5
    const-string v4, "HDMI_CONNECTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 387
    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$2;->this$0:Lcom/caf/fmradio/FMRadioService;

    #calls: Lcom/caf/fmradio/FMRadioService;->fmOff()Z
    invoke-static {v3}, Lcom/caf/fmradio/FMRadioService;->access$1100(Lcom/caf/fmradio/FMRadioService;)Z

    .line 393
    :try_start_0
    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$2;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mServiceInUse:Z
    invoke-static {v3}, Lcom/caf/fmradio/FMRadioService;->access$100(Lcom/caf/fmradio/FMRadioService;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$2;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 395
    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$2;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v3

    invoke-interface {v3}, Lcom/caf/fmradio/IFMRadioServiceCallbacks;->onDisabled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 397
    :catch_0
    move-exception v2

    .line 399
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 401
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_6
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 402
    iget-object v4, p0, Lcom/caf/fmradio/FMRadioService$2;->this$0:Lcom/caf/fmradio/FMRadioService;

    #setter for: Lcom/caf/fmradio/FMRadioService;->mAppShutdown:Z
    invoke-static {v4, v3}, Lcom/caf/fmradio/FMRadioService;->access$1202(Lcom/caf/fmradio/FMRadioService;Z)Z

    goto/16 :goto_1
.end method
