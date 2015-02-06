.class Lcom/caf/fmradio/FMRadio$50;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FMRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/fmradio/FMRadio;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/FMRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 2979
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$50;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2981
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$50;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-static {p2}, Lcom/caf/fmradio/IFMRadioService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v1

    #setter for: Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v0, v1}, Lcom/caf/fmradio/FMRadio;->access$2802(Lcom/caf/fmradio/FMRadio;Lcom/caf/fmradio/IFMRadioService;)Lcom/caf/fmradio/IFMRadioService;

    .line 2982
    const-string v0, "FMRadio"

    const-string v1, "ServiceConnection: onServiceConnected: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$50;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$2800(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2985
    :try_start_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$50;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$2800(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$50;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mServiceCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadio;->access$7100(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/caf/fmradio/IFMRadioService;->registerCallbacks(Lcom/caf/fmradio/IFMRadioServiceCallbacks;)V

    .line 2986
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$50;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->SavedDataAndState:Lcom/caf/fmradio/FMRadio$LoadedDataAndState;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$7200(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/FMRadio$LoadedDataAndState;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2987
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$50;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->enableRadio()V
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$3400(Lcom/caf/fmradio/FMRadio;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2996
    :goto_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$50;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->isRecording()Z
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$100(Lcom/caf/fmradio/FMRadio;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2997
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$50;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->initiateRecordThread()V
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$7300(Lcom/caf/fmradio/FMRadio;)V

    .line 2999
    :cond_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$50;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->isSleepTimerActive()Z
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$7400(Lcom/caf/fmradio/FMRadio;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3000
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$50;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->initiateSleepThread()V
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$7500(Lcom/caf/fmradio/FMRadio;)V

    .line 3013
    :cond_1
    :goto_1
    return-void

    .line 2988
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$50;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->SavedDataAndState:Lcom/caf/fmradio/FMRadio$LoadedDataAndState;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$7200(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/FMRadio$LoadedDataAndState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/caf/fmradio/FMRadio$LoadedDataAndState;->onOrOff:Z

    if-eqz v0, :cond_3

    .line 2989
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$50;->this$0:Lcom/caf/fmradio/FMRadio;

    const/4 v1, 0x1

    #calls: Lcom/caf/fmradio/FMRadio;->enableRadioOnOffUI(Z)V
    invoke-static {v0, v1}, Lcom/caf/fmradio/FMRadio;->access$5200(Lcom/caf/fmradio/FMRadio;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2993
    :catch_0
    move-exception v0

    .line 2994
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2991
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$50;->this$0:Lcom/caf/fmradio/FMRadio;

    const/4 v1, 0x0

    #calls: Lcom/caf/fmradio/FMRadio;->enableRadioOnOffUI(Z)V
    invoke-static {v0, v1}, Lcom/caf/fmradio/FMRadio;->access$5200(Lcom/caf/fmradio/FMRadio;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 3004
    :cond_4
    const-string v0, "FMRadio"

    const-string v1, "IFMRadioService onServiceConnected failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3006
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$50;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadio;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_5

    .line 3007
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3008
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3009
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$50;->this$0:Lcom/caf/fmradio/FMRadio;

    const-class v2, Lcom/caf/fmradio/FMRadio;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3010
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$50;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-virtual {v1, v0}, Lcom/caf/fmradio/FMRadio;->startActivity(Landroid/content/Intent;)V

    .line 3012
    :cond_5
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$50;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadio;->finish()V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "classname"

    .prologue
    const/4 v2, 0x0

    .line 3015
    const-string v0, "FMRadio"

    const-string v1, "Service got disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$50;->this$0:Lcom/caf/fmradio/FMRadio;

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$50;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-virtual {v0, v1}, Lcom/caf/fmradio/FMRadio;->unbindFromService(Landroid/content/Context;)V

    .line 3017
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$50;->this$0:Lcom/caf/fmradio/FMRadio;

    #setter for: Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v0, v2}, Lcom/caf/fmradio/FMRadio;->access$2802(Lcom/caf/fmradio/FMRadio;Lcom/caf/fmradio/IFMRadioService;)Lcom/caf/fmradio/IFMRadioService;

    .line 3018
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$50;->this$0:Lcom/caf/fmradio/FMRadio;

    iput-object v2, v0, Lcom/caf/fmradio/FMRadio;->sService:Lcom/caf/fmradio/IFMRadioService;

    .line 3019
    return-void
.end method
