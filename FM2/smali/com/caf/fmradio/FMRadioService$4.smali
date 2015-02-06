.class Lcom/caf/fmradio/FMRadioService$4;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/caf/fmradio/FMRadioService;->registerMusicServiceCommandReceiver()V
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
    .line 512
    iput-object p1, p0, Lcom/caf/fmradio/FMRadioService$4;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 515
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 518
    const-string v3, "command"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 519
    .local v1, cmd:Ljava/lang/String;
    const-string v3, "FMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Music Service command : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " received"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    if-eqz v1, :cond_0

    const-string v3, "pause"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 521
    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$4;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mA2dpDisconnected:Z
    invoke-static {v3}, Lcom/caf/fmradio/FMRadioService;->access$600(Lcom/caf/fmradio/FMRadioService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 522
    const-string v3, "FMService"

    const-string v4, "not to pause,this is a2dp disconnected\'s pause"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$4;->this$0:Lcom/caf/fmradio/FMRadioService;

    const/4 v4, 0x0

    #setter for: Lcom/caf/fmradio/FMRadioService;->mA2dpDisconnected:Z
    invoke-static {v3, v4}, Lcom/caf/fmradio/FMRadioService;->access$602(Lcom/caf/fmradio/FMRadioService;Z)Z

    .line 544
    .end local v1           #cmd:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 526
    .restart local v1       #cmd:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$4;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v3}, Lcom/caf/fmradio/FMRadioService;->isFmOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 527
    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$4;->this$0:Lcom/caf/fmradio/FMRadioService;

    #calls: Lcom/caf/fmradio/FMRadioService;->fmOff()Z
    invoke-static {v3}, Lcom/caf/fmradio/FMRadioService;->access$1100(Lcom/caf/fmradio/FMRadioService;)Z

    .line 528
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService$4;->isOrderedBroadcast()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 529
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService$4;->abortBroadcast()V

    .line 535
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$4;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mServiceInUse:Z
    invoke-static {v3}, Lcom/caf/fmradio/FMRadioService;->access$100(Lcom/caf/fmradio/FMRadioService;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$4;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 536
    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$4;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v3

    invoke-interface {v3}, Lcom/caf/fmradio/IFMRadioServiceCallbacks;->onDisabled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 538
    :catch_0
    move-exception v2

    .line 539
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
