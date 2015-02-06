.class Lcom/caf/fmradio/FMRadioService$16;
.super Lqcom/fmradio/FmRxEvCallbacksAdaptor;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FMRadioService;
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
    .line 2586
    iput-object p1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-direct {p0}, Lqcom/fmradio/FmRxEvCallbacksAdaptor;-><init>()V

    return-void
.end method


# virtual methods
.method public FmRxEvDisableReceiver()V
    .locals 2

    .prologue
    .line 2593
    const-string v0, "FMService"

    const-string v1, "FmRxEvDisableReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    const/4 v1, 0x0

    #setter for: Lcom/caf/fmradio/FMRadioService;->mFMOn:Z
    invoke-static {v0, v1}, Lcom/caf/fmradio/FMRadioService;->access$3102(Lcom/caf/fmradio/FMRadioService;Z)Z

    .line 2595
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->clearTags()V

    .line 2596
    return-void
.end method

.method public FmRxEvERTInfo()V
    .locals 3

    .prologue
    .line 2862
    const-string v1, "FMService"

    const-string v2, "FmRxEvERTInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$1900(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmReceiver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2865
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;
    invoke-static {v2}, Lcom/caf/fmradio/FMRadioService;->access$1900(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lqcom/fmradio/FmReceiver;->getERTInfo()Lqcom/fmradio/FmRxRdsData;

    move-result-object v2

    #setter for: Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v1, v2}, Lcom/caf/fmradio/FMRadioService;->access$3402(Lcom/caf/fmradio/FMRadioService;Lqcom/fmradio/FmRxRdsData;)Lqcom/fmradio/FmRxRdsData;

    .line 2866
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2867
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v1

    invoke-interface {v1}, Lcom/caf/fmradio/IFMRadioServiceCallbacks;->onExtenRadioTextChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2872
    :cond_0
    :goto_0
    return-void

    .line 2869
    :catch_0
    move-exception v0

    .line 2870
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public FmRxEvEnableReceiver()V
    .locals 2

    .prologue
    .line 2588
    const-string v0, "FMService"

    const-string v1, "FmRxEvEnableReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadioService;->access$1900(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lqcom/fmradio/FmReceiver;->setRawRdsGrpMask()Z

    .line 2590
    return-void
.end method

.method public FmRxEvRTPlus()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2844
    const-string v1, "FMService"

    const-string v2, "FmRxEvRTPlusInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2845
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$1900(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmReceiver;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2846
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;
    invoke-static {v2}, Lcom/caf/fmradio/FMRadioService;->access$1900(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lqcom/fmradio/FmReceiver;->getRTPlusInfo()Lqcom/fmradio/FmRxRdsData;

    move-result-object v2

    #setter for: Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v1, v2}, Lcom/caf/fmradio/FMRadioService;->access$3402(Lcom/caf/fmradio/FMRadioService;Lqcom/fmradio/FmRxRdsData;)Lqcom/fmradio/FmRxRdsData;

    .line 2847
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$3400(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v1

    invoke-virtual {v1}, Lqcom/fmradio/FmRxRdsData;->getTagNums()I

    move-result v0

    .line 2848
    .local v0, tag_nums:I
    if-lt v0, v4, :cond_0

    .line 2849
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tag1 is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadioService;->access$3400(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v3

    invoke-virtual {v3, v4}, Lqcom/fmradio/FmRxRdsData;->getTagCode(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadioService;->access$3400(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v3

    invoke-virtual {v3, v4}, Lqcom/fmradio/FmRxRdsData;->getTagValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2851
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$3400(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v1

    invoke-virtual {v1, v4}, Lqcom/fmradio/FmRxRdsData;->getTagCode(I)B

    move-result v1

    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v2}, Lcom/caf/fmradio/FMRadioService;->access$3400(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v2

    invoke-virtual {v2, v4}, Lqcom/fmradio/FmRxRdsData;->getTagValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/caf/fmradio/FmSharedPreferences;->addTags(ILjava/lang/String;)V

    .line 2853
    :cond_0
    if-ne v0, v5, :cond_1

    .line 2854
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tag2 is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadioService;->access$3400(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v3

    invoke-virtual {v3, v5}, Lqcom/fmradio/FmRxRdsData;->getTagCode(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadioService;->access$3400(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v3

    invoke-virtual {v3, v5}, Lqcom/fmradio/FmRxRdsData;->getTagValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$3400(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v1

    invoke-virtual {v1, v5}, Lqcom/fmradio/FmRxRdsData;->getTagCode(I)B

    move-result v1

    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v2}, Lcom/caf/fmradio/FMRadioService;->access$3400(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v2

    invoke-virtual {v2, v5}, Lqcom/fmradio/FmRxRdsData;->getTagValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/caf/fmradio/FmSharedPreferences;->addTags(ILjava/lang/String;)V

    .line 2859
    .end local v0           #tag_nums:I
    :cond_1
    return-void
.end method

.method public FmRxEvRadioReset()V
    .locals 3

    .prologue
    .line 2599
    const-string v1, "FMService"

    const-string v2, "FmRxEvRadioReset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v1}, Lcom/caf/fmradio/FMRadioService;->isFmOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2602
    const-string v1, "FMService"

    const-string v2, "FM Radio reset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #calls: Lcom/caf/fmradio/FMRadioService;->fmRadioReset()Z
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$3200(Lcom/caf/fmradio/FMRadioService;)Z

    .line 2609
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mServiceInUse:Z
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$100(Lcom/caf/fmradio/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2611
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v1

    invoke-interface {v1}, Lcom/caf/fmradio/IFMRadioServiceCallbacks;->onRadioReset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2619
    :cond_0
    :goto_0
    return-void

    .line 2614
    :catch_0
    move-exception v0

    .line 2616
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public FmRxEvRadioTuneStatus(I)V
    .locals 4
    .parameter "frequency"

    .prologue
    .line 2647
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FmRxEvRadioTuneStatus: Tuned Frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    :try_start_0
    invoke-static {p1}, Lcom/caf/fmradio/FmSharedPreferences;->setTunedFrequency(I)V

    .line 2651
    invoke-static {}, Lcom/caf/fmradio/FMRadioService;->access$3300()Lcom/caf/fmradio/FmSharedPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/caf/fmradio/FmSharedPreferences;->Save()V

    .line 2654
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$1900(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmReceiver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2655
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v1}, Lcom/caf/fmradio/FMRadioService;->clearStationInfo()V

    .line 2657
    :cond_0
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2659
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v1

    invoke-interface {v1}, Lcom/caf/fmradio/IFMRadioServiceCallbacks;->onTuneStatusChanged()V

    .line 2662
    :cond_1
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v1}, Lcom/caf/fmradio/FMRadioService;->startNotification()V

    .line 2663
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getAudioOutputMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/caf/fmradio/FMRadioService;->enableStereo(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2669
    :goto_0
    return-void

    .line 2665
    :catch_0
    move-exception v0

    .line 2667
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public FmRxEvRdsAfInfo()V
    .locals 2

    .prologue
    .line 2838
    const-string v0, "FMService"

    const-string v1, "FmRxEvRdsAfInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2839
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadioService;->access$1900(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lqcom/fmradio/FmReceiver;->getAFInfo()[I

    .line 2840
    return-void
.end method

.method public FmRxEvRdsGroupData()V
    .locals 2

    .prologue
    .line 2783
    const-string v0, "FMService"

    const-string v1, "FmRxEvRdsGroupData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    return-void
.end method

.method public FmRxEvRdsLockStatus(Z)V
    .locals 4
    .parameter "bRDSSupported"

    .prologue
    .line 2678
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FmRxEvRdsLockStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2683
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/caf/fmradio/IFMRadioServiceCallbacks;->onStationRDSSupported(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2690
    :cond_0
    :goto_0
    return-void

    .line 2686
    :catch_0
    move-exception v0

    .line 2688
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public FmRxEvRdsPsInfo()V
    .locals 4

    .prologue
    .line 2787
    const-string v1, "FMService"

    const-string v2, "FmRxEvRdsPsInfo: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$1900(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmReceiver;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2792
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;
    invoke-static {v2}, Lcom/caf/fmradio/FMRadioService;->access$1900(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lqcom/fmradio/FmReceiver;->getPSInfo()Lqcom/fmradio/FmRxRdsData;

    move-result-object v2

    #setter for: Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v1, v2}, Lcom/caf/fmradio/FMRadioService;->access$3402(Lcom/caf/fmradio/FMRadioService;Lqcom/fmradio/FmRxRdsData;)Lqcom/fmradio/FmRxRdsData;

    .line 2793
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$3400(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2795
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PI: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadioService;->access$3400(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v3

    invoke-virtual {v3}, Lqcom/fmradio/FmRxRdsData;->getPrgmId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PTY: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadioService;->access$3400(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v3

    invoke-virtual {v3}, Lqcom/fmradio/FmRxRdsData;->getPrgmType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PS: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadioService;->access$3400(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v3

    invoke-virtual {v3}, Lqcom/fmradio/FmRxRdsData;->getPrgmServices()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2799
    :cond_0
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2801
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v1

    invoke-interface {v1}, Lcom/caf/fmradio/IFMRadioServiceCallbacks;->onProgramServiceChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2808
    :cond_1
    :goto_0
    return-void

    .line 2804
    :catch_0
    move-exception v0

    .line 2806
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public FmRxEvRdsRtInfo()V
    .locals 4

    .prologue
    .line 2811
    const-string v1, "FMService"

    const-string v2, "FmRxEvRdsRtInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$1900(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmReceiver;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2817
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;
    invoke-static {v2}, Lcom/caf/fmradio/FMRadioService;->access$1900(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lqcom/fmradio/FmReceiver;->getRTInfo()Lqcom/fmradio/FmRxRdsData;

    move-result-object v2

    #setter for: Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v1, v2}, Lcom/caf/fmradio/FMRadioService;->access$3402(Lcom/caf/fmradio/FMRadioService;Lqcom/fmradio/FmRxRdsData;)Lqcom/fmradio/FmRxRdsData;

    .line 2818
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$3400(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2820
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PI: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadioService;->access$3400(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v3

    invoke-virtual {v3}, Lqcom/fmradio/FmRxRdsData;->getPrgmId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PTY: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadioService;->access$3400(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v3

    invoke-virtual {v3}, Lqcom/fmradio/FmRxRdsData;->getPrgmType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RT: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadioService;->access$3400(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v3

    invoke-virtual {v3}, Lqcom/fmradio/FmRxRdsData;->getRadioText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2824
    :cond_0
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2826
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v1

    invoke-interface {v1}, Lcom/caf/fmradio/IFMRadioServiceCallbacks;->onRadioTextChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2834
    :cond_1
    :goto_0
    return-void

    .line 2829
    :catch_0
    move-exception v0

    .line 2831
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public FmRxEvSearchCancelled()V
    .locals 2

    .prologue
    .line 2779
    const-string v0, "FMService"

    const-string v1, "FmRxEvSearchCancelled: Cancelled the on-going search operation."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    return-void
.end method

.method public FmRxEvSearchComplete(I)V
    .locals 4
    .parameter "frequency"

    .prologue
    .line 2735
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FmRxEvSearchComplete: Tuned Frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    :try_start_0
    invoke-static {p1}, Lcom/caf/fmradio/FmSharedPreferences;->setTunedFrequency(I)V

    .line 2741
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$1900(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmReceiver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2742
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v1}, Lcom/caf/fmradio/FMRadioService;->clearStationInfo()V

    .line 2744
    :cond_0
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2746
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v1

    invoke-interface {v1}, Lcom/caf/fmradio/IFMRadioServiceCallbacks;->onSearchComplete()V

    .line 2749
    :cond_1
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v1}, Lcom/caf/fmradio/FMRadioService;->startNotification()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2755
    :goto_0
    return-void

    .line 2751
    :catch_0
    move-exception v0

    .line 2753
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public FmRxEvSearchInProgress()V
    .locals 2

    .prologue
    .line 2723
    const-string v0, "FMService"

    const-string v1, "FmRxEvSearchInProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    return-void
.end method

.method public FmRxEvSearchListComplete()V
    .locals 3

    .prologue
    .line 2764
    const-string v1, "FMService"

    const-string v2, "FmRxEvSearchListComplete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2769
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v1

    invoke-interface {v1}, Lcom/caf/fmradio/IFMRadioServiceCallbacks;->onSearchListComplete()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2775
    :cond_0
    :goto_0
    return-void

    .line 2771
    :catch_0
    move-exception v0

    .line 2773
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public FmRxEvServiceAvailable(Z)V
    .locals 2
    .parameter "signal"

    .prologue
    .line 2709
    const-string v0, "FMService"

    const-string v1, "FmRxEvServiceAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    if-eqz p1, :cond_0

    .line 2711
    const-string v0, "FMService"

    const-string v1, "FmRxEvServiceAvailable: Tuned frequency is above signal threshold level"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    :goto_0
    return-void

    .line 2714
    :cond_0
    const-string v0, "FMService"

    const-string v1, "FmRxEvServiceAvailable: Tuned frequency is below signal threshold level"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public FmRxEvStereoStatus(Z)V
    .locals 4
    .parameter "stereo"

    .prologue
    .line 2694
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FmRxEvStereoStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2699
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$16;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/caf/fmradio/IFMRadioServiceCallbacks;->onAudioUpdate(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2706
    :cond_0
    :goto_0
    return-void

    .line 2702
    :catch_0
    move-exception v0

    .line 2704
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
