.class Lcom/caf/fmradio/FMTransmitterActivity$22;
.super Ljava/lang/Object;
.source "FMTransmitterActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FMTransmitterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/fmradio/FMTransmitterActivity;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/FMTransmitterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1453
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterActivity$22;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$22;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-static {p2}, Lcom/caf/fmradio/IFMTransmitterService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/caf/fmradio/IFMTransmitterService;

    move-result-object v1

    #setter for: Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;
    invoke-static {v0, v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$2502(Lcom/caf/fmradio/FMTransmitterActivity;Lcom/caf/fmradio/IFMTransmitterService;)Lcom/caf/fmradio/IFMTransmitterService;

    .line 1456
    const-string v0, "FMTransmitterActivity"

    const-string v1, "ServiceConnection: onServiceConnected: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$22;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$2500(Lcom/caf/fmradio/FMTransmitterActivity;)Lcom/caf/fmradio/IFMTransmitterService;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1459
    :try_start_0
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$22;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$2500(Lcom/caf/fmradio/FMTransmitterActivity;)Lcom/caf/fmradio/IFMTransmitterService;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$22;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mServiceCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks$Stub;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$3300(Lcom/caf/fmradio/FMTransmitterActivity;)Lcom/caf/fmradio/IFMTransmitterServiceCallbacks$Stub;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/caf/fmradio/IFMTransmitterService;->registerCallbacks(Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;)V

    .line 1460
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$22;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$2500(Lcom/caf/fmradio/FMTransmitterActivity;)Lcom/caf/fmradio/IFMTransmitterService;

    move-result-object v0

    invoke-interface {v0}, Lcom/caf/fmradio/IFMTransmitterService;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1461
    const-string v0, "FMTransmitterActivity"

    const-string v1, "return for isHeadsetPlugged is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$22;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->SavedDataAndState:Lcom/caf/fmradio/FMTransmitterActivity$LoadedDataAndState;
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$3400(Lcom/caf/fmradio/FMTransmitterActivity;)Lcom/caf/fmradio/FMTransmitterActivity$LoadedDataAndState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1463
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$22;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1300(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$22;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1200(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1464
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$22;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->disableRadioHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1500(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$22;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->disableRadioTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1400(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1465
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$22;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1300(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$22;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1200(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1492
    :goto_0
    return-void

    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$22;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->SavedDataAndState:Lcom/caf/fmradio/FMTransmitterActivity$LoadedDataAndState;
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$3400(Lcom/caf/fmradio/FMTransmitterActivity;)Lcom/caf/fmradio/FMTransmitterActivity$LoadedDataAndState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/caf/fmradio/FMTransmitterActivity$LoadedDataAndState;->onOrOff:Z

    if-eqz v0, :cond_1

    .line 1467
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$22;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    const/4 v1, 0x1

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioOnOffUI(Z)V
    invoke-static {v0, v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$3500(Lcom/caf/fmradio/FMTransmitterActivity;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1474
    :catch_0
    move-exception v0

    .line 1475
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1469
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$22;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    const/4 v1, 0x0

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioOnOffUI(Z)V
    invoke-static {v0, v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$3500(Lcom/caf/fmradio/FMTransmitterActivity;Z)V

    goto :goto_0

    .line 1472
    :cond_2
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$22;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    const/4 v1, 0x0

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioOnOffUI(Z)V
    invoke-static {v0, v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$3500(Lcom/caf/fmradio/FMTransmitterActivity;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1479
    :cond_3
    const-string v0, "FMTransmitterActivity"

    const-string v1, "IFMTransmitterService onServiceConnected failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$22;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1485
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1486
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1487
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$22;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    const-class v2, Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1489
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$22;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-virtual {v1, v0}, Lcom/caf/fmradio/FMTransmitterActivity;->startActivity(Landroid/content/Intent;)V

    .line 1491
    :cond_4
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$22;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->finish()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "classname"

    .prologue
    .line 1495
    return-void
.end method
