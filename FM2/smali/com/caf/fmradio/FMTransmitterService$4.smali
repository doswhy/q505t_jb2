.class Lcom/caf/fmradio/FMTransmitterService$4;
.super Lqcom/fmradio/FmRxEvCallbacksAdaptor;
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
    .line 968
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterService$4;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    invoke-direct {p0}, Lqcom/fmradio/FmRxEvCallbacksAdaptor;-><init>()V

    return-void
.end method


# virtual methods
.method public FmRxEvDisableReceiver()V
    .locals 2

    .prologue
    .line 975
    const-string v0, "FMTxService"

    const-string v1, "FmRxEvDisableReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    return-void
.end method

.method public FmRxEvEnableReceiver()V
    .locals 2

    .prologue
    .line 971
    const-string v0, "FMTxService"

    const-string v1, "FmRxEvEnableReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    return-void
.end method

.method public FmRxEvRadioReset()V
    .locals 3

    .prologue
    .line 979
    const-string v1, "FMTxService"

    const-string v2, "FmRxEvRadioReset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService$4;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    invoke-virtual {v1}, Lcom/caf/fmradio/FMTransmitterService;->isFmOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 982
    const-string v1, "FMTxService"

    const-string v2, "FM is ON, reset FM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService$4;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #calls: Lcom/caf/fmradio/FMTransmitterService;->fmRadioReset()Z
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterService;->access$500(Lcom/caf/fmradio/FMTransmitterService;)Z

    .line 989
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService$4;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mServiceInUse:Z
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterService;->access$100(Lcom/caf/fmradio/FMTransmitterService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService$4;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterService;->access$700(Lcom/caf/fmradio/FMTransmitterService;)Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 991
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService$4;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterService;->access$700(Lcom/caf/fmradio/FMTransmitterService;)Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    move-result-object v1

    invoke-interface {v1}, Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;->onRadioReset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 999
    :cond_0
    :goto_0
    return-void

    .line 994
    :catch_0
    move-exception v0

    .line 996
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public FmRxEvRadioTuneStatus(I)V
    .locals 3
    .parameter "frequency"

    .prologue
    .line 1003
    const-string v0, "FMTxService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FmRxEvRadioTuneStatus: Tuned Frequency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    return-void
.end method

.method public FmRxEvSearchListComplete()V
    .locals 3

    .prologue
    .line 1008
    const-string v1, "FMTxService"

    const-string v2, "FmRxEvSearchListComplete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService$4;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterService;->access$700(Lcom/caf/fmradio/FMTransmitterService;)Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1012
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService$4;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterService;->access$700(Lcom/caf/fmradio/FMTransmitterService;)Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;->onSearchListComplete(Z)V

    .line 1020
    :cond_0
    :goto_0
    return-void

    .line 1013
    :cond_1
    invoke-static {}, Lcom/caf/fmradio/FMTransmitterService;->access$1100()Lqcom/fmradio/FmReceiver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1014
    invoke-static {}, Lcom/caf/fmradio/FMTransmitterService;->access$1100()Lqcom/fmradio/FmReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lqcom/fmradio/FmReceiver;->disable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1016
    :catch_0
    move-exception v0

    .line 1018
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
