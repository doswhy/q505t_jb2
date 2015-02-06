.class Lcom/caf/fmradio/FMTransmitterActivity$23;
.super Lcom/caf/fmradio/IFMTransmitterServiceCallbacks$Stub;
.source "FMTransmitterActivity.java"


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
    .line 1498
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterActivity$23;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-direct {p0}, Lcom/caf/fmradio/IFMTransmitterServiceCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisabled()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$23;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$100(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$23;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mRadioStateUpdated:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$3600(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1502
    return-void
.end method

.method public onEnabled(Z)V
    .locals 2
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$23;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$100(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$23;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mRadioStateUpdated:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$3600(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1510
    return-void
.end method

.method public onMetaDataChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "metaStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1534
    const-string v0, "FMTransmitterActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "meta data is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$23;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/caf/fmradio/FMTransmitterActivity;->mMetaData:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$2702(Lcom/caf/fmradio/FMTransmitterActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1536
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$23;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$100(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$23;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mUpdateRadioText:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$4100(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1537
    return-void
.end method

.method public onPSInfoSent(Ljava/lang/String;)V
    .locals 3
    .parameter "psStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1540
    const-string v0, "FMTransmitterActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PS String data is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$23;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/caf/fmradio/FMTransmitterActivity;->mPSData:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$3002(Lcom/caf/fmradio/FMTransmitterActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1542
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$23;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$100(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$23;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mUpdateRadioText:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$4100(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1543
    return-void
.end method

.method public onRadioReset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$23;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$100(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$23;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mRadioReset:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$3700(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1506
    return-void
.end method

.method public onRadioTextChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1513
    return-void
.end method

.method public onReconfigured()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$23;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->RestoreDefaults()V
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$4000(Lcom/caf/fmradio/FMTransmitterActivity;)V

    .line 1531
    return-void
.end method

.method public onSearchListComplete(Z)V
    .locals 2
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1516
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$2402(Z)Z

    .line 1517
    invoke-static {p1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$2602(Z)Z

    .line 1518
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$23;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$100(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$23;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mSearchListComplete:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$3800(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1519
    return-void
.end method

.method public onTuneStatusChanged(I)V
    .locals 3
    .parameter "frequency"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1522
    invoke-static {p1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$502(I)I

    .line 1523
    const-string v0, "FMTransmitterActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTuneStatusChanged: Frequency : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/caf/fmradio/FMTransmitterActivity;->access$500()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    invoke-static {}, Lcom/caf/fmradio/FMTransmitterActivity;->access$500()I

    move-result v0

    invoke-static {v0}, Lcom/caf/fmradio/FmSharedPreferences;->setTunedFrequency(I)V

    .line 1525
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$23;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->SavePreferences()V

    .line 1526
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$23;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$100(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$23;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mUpdateStationInfo:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$3900(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1527
    return-void
.end method
