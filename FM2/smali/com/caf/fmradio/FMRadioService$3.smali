.class Lcom/caf/fmradio/FMRadioService$3;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/caf/fmradio/FMRadioService;->registerFmMediaButtonReceiver()V
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
    .line 419
    iput-object p1, p0, Lcom/caf/fmradio/FMRadioService$3;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 421
    const-string v4, "FMService"

    const-string v5, "FMMediaButtonIntentReceiver.FM_MEDIA_BUTTON"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v4, "FMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KeyEvent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.caf.fmradio.action.MEDIA_BUTTON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 425
    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 427
    .local v2, event:Landroid/view/KeyEvent;
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 428
    .local v3, keycode:I
    sparse-switch v3, :sswitch_data_0

    .line 502
    .end local v2           #event:Landroid/view/KeyEvent;
    .end local v3           #keycode:I
    :cond_0
    :goto_0
    return-void

    .line 430
    .restart local v2       #event:Landroid/view/KeyEvent;
    .restart local v3       #keycode:I
    :sswitch_0
    iget-object v4, p0, Lcom/caf/fmradio/FMRadioService$3;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v4}, Lcom/caf/fmradio/FMRadioService;->isFmOn()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 432
    iget-object v4, p0, Lcom/caf/fmradio/FMRadioService$3;->this$0:Lcom/caf/fmradio/FMRadioService;

    #calls: Lcom/caf/fmradio/FMRadioService;->fmOff()Z
    invoke-static {v4}, Lcom/caf/fmradio/FMRadioService;->access$1100(Lcom/caf/fmradio/FMRadioService;)Z

    .line 433
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService$3;->isOrderedBroadcast()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 434
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService$3;->abortBroadcast()V

    .line 440
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/caf/fmradio/FMRadioService$3;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mServiceInUse:Z
    invoke-static {v4}, Lcom/caf/fmradio/FMRadioService;->access$100(Lcom/caf/fmradio/FMRadioService;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/caf/fmradio/FMRadioService$3;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v4}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 441
    iget-object v4, p0, Lcom/caf/fmradio/FMRadioService$3;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v4}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v4

    invoke-interface {v4}, Lcom/caf/fmradio/IFMRadioServiceCallbacks;->onDisabled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 443
    :catch_0
    move-exception v1

    .line 444
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 446
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v4, p0, Lcom/caf/fmradio/FMRadioService$3;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mServiceInUse:Z
    invoke-static {v4}, Lcom/caf/fmradio/FMRadioService;->access$100(Lcom/caf/fmradio/FMRadioService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 447
    iget-object v4, p0, Lcom/caf/fmradio/FMRadioService$3;->this$0:Lcom/caf/fmradio/FMRadioService;

    #calls: Lcom/caf/fmradio/FMRadioService;->fmOn()Z
    invoke-static {v4}, Lcom/caf/fmradio/FMRadioService;->access$1300(Lcom/caf/fmradio/FMRadioService;)Z

    .line 448
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService$3;->isOrderedBroadcast()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 449
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService$3;->abortBroadcast()V

    .line 455
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/caf/fmradio/FMRadioService$3;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v4}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 456
    iget-object v4, p0, Lcom/caf/fmradio/FMRadioService$3;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v4}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v4

    invoke-interface {v4}, Lcom/caf/fmradio/IFMRadioServiceCallbacks;->onEnabled()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 458
    :catch_1
    move-exception v1

    .line 459
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 464
    .end local v1           #e:Landroid/os/RemoteException;
    :sswitch_1
    iget-object v4, p0, Lcom/caf/fmradio/FMRadioService$3;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v4}, Lcom/caf/fmradio/FMRadioService;->isFmOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 466
    iget-object v4, p0, Lcom/caf/fmradio/FMRadioService$3;->this$0:Lcom/caf/fmradio/FMRadioService;

    #calls: Lcom/caf/fmradio/FMRadioService;->fmOff()Z
    invoke-static {v4}, Lcom/caf/fmradio/FMRadioService;->access$1100(Lcom/caf/fmradio/FMRadioService;)Z

    .line 467
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService$3;->isOrderedBroadcast()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 468
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService$3;->abortBroadcast()V

    .line 474
    :cond_4
    :try_start_2
    iget-object v4, p0, Lcom/caf/fmradio/FMRadioService$3;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mServiceInUse:Z
    invoke-static {v4}, Lcom/caf/fmradio/FMRadioService;->access$100(Lcom/caf/fmradio/FMRadioService;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/caf/fmradio/FMRadioService$3;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v4}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 475
    iget-object v4, p0, Lcom/caf/fmradio/FMRadioService$3;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v4}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v4

    invoke-interface {v4}, Lcom/caf/fmradio/IFMRadioServiceCallbacks;->onDisabled()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 477
    :catch_2
    move-exception v1

    .line 478
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 483
    .end local v1           #e:Landroid/os/RemoteException;
    :sswitch_2
    iget-object v4, p0, Lcom/caf/fmradio/FMRadioService$3;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v4}, Lcom/caf/fmradio/FMRadioService;->isAntennaAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/caf/fmradio/FMRadioService$3;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mServiceInUse:Z
    invoke-static {v4}, Lcom/caf/fmradio/FMRadioService;->access$100(Lcom/caf/fmradio/FMRadioService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 484
    iget-object v4, p0, Lcom/caf/fmradio/FMRadioService$3;->this$0:Lcom/caf/fmradio/FMRadioService;

    #calls: Lcom/caf/fmradio/FMRadioService;->fmOn()Z
    invoke-static {v4}, Lcom/caf/fmradio/FMRadioService;->access$1300(Lcom/caf/fmradio/FMRadioService;)Z

    .line 485
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService$3;->isOrderedBroadcast()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 486
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService$3;->abortBroadcast()V

    .line 492
    :cond_5
    :try_start_3
    iget-object v4, p0, Lcom/caf/fmradio/FMRadioService$3;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v4}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 493
    iget-object v4, p0, Lcom/caf/fmradio/FMRadioService$3;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v4}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v4

    invoke-interface {v4}, Lcom/caf/fmradio/IFMRadioServiceCallbacks;->onEnabled()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 495
    :catch_3
    move-exception v1

    .line 496
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 428
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x7e -> :sswitch_2
        0x7f -> :sswitch_1
    .end sparse-switch
.end method
