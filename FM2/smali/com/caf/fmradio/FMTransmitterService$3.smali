.class Lcom/caf/fmradio/FMTransmitterService$3;
.super Lqcom/fmradio/FmTransmitterCallbacksAdaptor;
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
    .line 867
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterService$3;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    invoke-direct {p0}, Lqcom/fmradio/FmTransmitterCallbacksAdaptor;-><init>()V

    return-void
.end method


# virtual methods
.method public FmTxEvContRDSGroupsComplete()V
    .locals 0

    .prologue
    .line 876
    return-void
.end method

.method public FmTxEvRDSGroupsAvailable()V
    .locals 0

    .prologue
    .line 870
    return-void
.end method

.method public FmTxEvRDSGroupsComplete()V
    .locals 0

    .prologue
    .line 874
    return-void
.end method

.method public FmTxEvRadioDisabled()V
    .locals 3

    .prologue
    .line 926
    const-string v1, "FMTxService"

    const-string v2, "onRadioDisabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService$3;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    const/4 v2, 0x0

    #setter for: Lcom/caf/fmradio/FMTransmitterService;->mFMOn:Z
    invoke-static {v1, v2}, Lcom/caf/fmradio/FMTransmitterService;->access$1002(Lcom/caf/fmradio/FMTransmitterService;Z)Z

    .line 928
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService$3;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mServiceInUse:Z
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterService;->access$100(Lcom/caf/fmradio/FMTransmitterService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService$3;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterService;->access$700(Lcom/caf/fmradio/FMTransmitterService;)Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 930
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService$3;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterService;->access$700(Lcom/caf/fmradio/FMTransmitterService;)Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    move-result-object v1

    invoke-interface {v1}, Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;->onDisabled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    :cond_0
    :goto_0
    return-void

    .line 931
    :catch_0
    move-exception v0

    .line 932
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public FmTxEvRadioEnabled()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 937
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService$3;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #setter for: Lcom/caf/fmradio/FMTransmitterService;->mFMOn:Z
    invoke-static {v1, v2}, Lcom/caf/fmradio/FMTransmitterService;->access$1002(Lcom/caf/fmradio/FMTransmitterService;Z)Z

    .line 938
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService$3;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mServiceInUse:Z
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterService;->access$100(Lcom/caf/fmradio/FMTransmitterService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService$3;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterService;->access$700(Lcom/caf/fmradio/FMTransmitterService;)Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 940
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService$3;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterService;->access$700(Lcom/caf/fmradio/FMTransmitterService;)Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;->onEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    :cond_0
    :goto_0
    return-void

    .line 941
    :catch_0
    move-exception v0

    .line 942
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public FmTxEvRadioReset()V
    .locals 3

    .prologue
    .line 947
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService$3;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    invoke-virtual {v1}, Lcom/caf/fmradio/FMTransmitterService;->isFmOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 949
    const-string v1, "FMTxService"

    const-string v2, "FM is ON, reset FM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService$3;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #calls: Lcom/caf/fmradio/FMTransmitterService;->fmRadioReset()Z
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterService;->access$500(Lcom/caf/fmradio/FMTransmitterService;)Z

    .line 955
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService$3;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mServiceInUse:Z
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterService;->access$100(Lcom/caf/fmradio/FMTransmitterService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService$3;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterService;->access$700(Lcom/caf/fmradio/FMTransmitterService;)Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 956
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService$3;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterService;->access$700(Lcom/caf/fmradio/FMTransmitterService;)Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    move-result-object v1

    invoke-interface {v1}, Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;->onRadioReset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    :cond_0
    :goto_0
    return-void

    .line 959
    :catch_0
    move-exception v0

    .line 960
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public FmTxEvTuneStatusChange(I)V
    .locals 8
    .parameter "freq"

    .prologue
    const/16 v7, 0x1234

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 880
    const-string v3, "FMTxService"

    const-string v4, "onTuneStatusChange\n"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterService$3;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterService;->access$700(Lcom/caf/fmradio/FMTransmitterService;)Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 885
    :try_start_0
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterService$3;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterService;->access$700(Lcom/caf/fmradio/FMTransmitterService;)Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;->onTuneStatusChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterService$3;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    invoke-virtual {v3}, Lcom/caf/fmradio/FMTransmitterService;->startNotification()V

    .line 894
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterService$3;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    invoke-virtual {v3}, Lcom/caf/fmradio/FMTransmitterService;->getPSData()Ljava/lang/String;

    move-result-object v2

    .line 895
    .local v2, s:Ljava/lang/String;
    invoke-static {}, Lcom/caf/fmradio/FMTransmitterService;->access$800()Lqcom/fmradio/FmTransmitter;

    move-result-object v3

    invoke-virtual {v3, v2, v5, v7, v6}, Lqcom/fmradio/FmTransmitter;->startPSInfo(Ljava/lang/String;III)Z

    move-result v3

    if-ne v6, v3, :cond_1

    .line 897
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterService$3;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterService;->access$700(Lcom/caf/fmradio/FMTransmitterService;)Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 901
    :try_start_1
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterService$3;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterService;->access$700(Lcom/caf/fmradio/FMTransmitterService;)Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;->onPSInfoSent(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 909
    :cond_1
    :goto_1
    invoke-static {}, Lcom/caf/fmradio/FMTransmitterService;->access$800()Lqcom/fmradio/FmTransmitter;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 910
    invoke-static {}, Lcom/caf/fmradio/FMTransmitterService;->access$800()Lqcom/fmradio/FmTransmitter;

    move-result-object v3

    invoke-static {}, Lcom/caf/fmradio/FMTransmitterService;->access$900()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5, v7}, Lqcom/fmradio/FmTransmitter;->startRTInfo(Ljava/lang/String;II)Z

    .line 914
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterService$3;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterService;->access$700(Lcom/caf/fmradio/FMTransmitterService;)Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 915
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterService$3;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterService;->access$700(Lcom/caf/fmradio/FMTransmitterService;)Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    move-result-object v3

    invoke-static {}, Lcom/caf/fmradio/FMTransmitterService;->access$900()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;->onMetaDataChanged(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 923
    :goto_2
    return-void

    .line 886
    .end local v2           #s:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 888
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 902
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v2       #s:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 904
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 917
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    :try_start_3
    const-string v3, "FMTxService"

    const-string v4, "callback is not there"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 919
    :catch_2
    move-exception v1

    .line 920
    .local v1, ex:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method
