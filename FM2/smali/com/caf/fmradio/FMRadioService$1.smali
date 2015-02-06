.class Lcom/caf/fmradio/FMRadioService$1;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/caf/fmradio/FMRadioService;->registerFMRecordingStatus()V
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
    .line 293
    iput-object p1, p0, Lcom/caf/fmradio/FMRadioService$1;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 296
    const-string v3, "FMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, action:Ljava/lang/String;
    const-string v3, "codeaurora.intent.action.FM.Recording.Status"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 299
    const-string v3, "FMService"

    const-string v4, "ACTION_FM_RECORDING_STATUS Intent received"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v3, "state"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 301
    .local v2, state:I
    if-ne v2, v7, :cond_2

    .line 302
    const-string v3, "FMService"

    const-string v4, "FM Recording started"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$1;->this$0:Lcom/caf/fmradio/FMRadioService;

    #setter for: Lcom/caf/fmradio/FMRadioService;->mFmRecordingOn:Z
    invoke-static {v3, v7}, Lcom/caf/fmradio/FMRadioService;->access$002(Lcom/caf/fmradio/FMRadioService;Z)Z

    .line 304
    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$1;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/caf/fmradio/FMRadioService;->mSampleStart:J

    .line 306
    :try_start_0
    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$1;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mServiceInUse:Z
    invoke-static {v3}, Lcom/caf/fmradio/FMRadioService;->access$100(Lcom/caf/fmradio/FMRadioService;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$1;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 307
    const-string v3, "FMService"

    const-string v4, "start recording thread"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$1;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v3

    invoke-interface {v3}, Lcom/caf/fmradio/IFMRadioServiceCallbacks;->onRecordingStarted()V

    .line 310
    :cond_0
    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$1;->this$0:Lcom/caf/fmradio/FMRadioService;

    #calls: Lcom/caf/fmradio/FMRadioService;->startRecordServiceStatusCheck()V
    invoke-static {v3}, Lcom/caf/fmradio/FMRadioService;->access$300(Lcom/caf/fmradio/FMRadioService;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .end local v2           #state:I
    :cond_1
    :goto_0
    return-void

    .line 311
    .restart local v2       #state:I
    :catch_0
    move-exception v1

    .line 312
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 314
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    if-nez v2, :cond_1

    .line 315
    const-string v3, "FMService"

    const-string v4, "FM Recording stopped"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$1;->this$0:Lcom/caf/fmradio/FMRadioService;

    #setter for: Lcom/caf/fmradio/FMRadioService;->mFmRecordingOn:Z
    invoke-static {v3, v6}, Lcom/caf/fmradio/FMRadioService;->access$002(Lcom/caf/fmradio/FMRadioService;Z)Z

    .line 318
    :try_start_1
    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$1;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mServiceInUse:Z
    invoke-static {v3}, Lcom/caf/fmradio/FMRadioService;->access$100(Lcom/caf/fmradio/FMRadioService;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$1;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 319
    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$1;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v3

    invoke-interface {v3}, Lcom/caf/fmradio/IFMRadioServiceCallbacks;->onRecordingStopped()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 324
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$1;->this$0:Lcom/caf/fmradio/FMRadioService;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/caf/fmradio/FMRadioService;->mSampleStart:J

    .line 325
    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$1;->this$0:Lcom/caf/fmradio/FMRadioService;

    #calls: Lcom/caf/fmradio/FMRadioService;->stopRecordServiceStatusCheck()V
    invoke-static {v3}, Lcom/caf/fmradio/FMRadioService;->access$400(Lcom/caf/fmradio/FMRadioService;)V

    goto :goto_0

    .line 321
    :catch_1
    move-exception v1

    .line 322
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
