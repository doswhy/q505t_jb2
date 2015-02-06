.class Lcom/caf/fmradio/FMRadioService$ServiceStub;
.super Lcom/caf/fmradio/IFMRadioService$Stub;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceStub"
.end annotation


# instance fields
.field mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/caf/fmradio/FMRadioService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/caf/fmradio/FMRadioService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 1345
    invoke-direct {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;-><init>()V

    .line 1346
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    .line 1347
    return-void
.end method


# virtual methods
.method public cancelDelayedStop(I)V
    .locals 1
    .parameter "nType"

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    #calls: Lcom/caf/fmradio/FMRadioService;->cancelDelayedStop(I)V
    invoke-static {v0, p1}, Lcom/caf/fmradio/FMRadioService;->access$2900(Lcom/caf/fmradio/FMRadioService;I)V

    .line 1544
    return-void
.end method

.method public cancelSearch()Z
    .locals 1

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->cancelSearch()Z

    move-result v0

    return v0
.end method

.method public delayedStop(JI)V
    .locals 1
    .parameter "duration"
    .parameter "nType"

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    #calls: Lcom/caf/fmradio/FMRadioService;->delayedStop(JI)V
    invoke-static {v0, p1, p2, p3}, Lcom/caf/fmradio/FMRadioService;->access$2800(Lcom/caf/fmradio/FMRadioService;JI)V

    .line 1540
    return-void
.end method

.method public enableAutoAF(Z)Z
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/caf/fmradio/FMRadioService;->enableAutoAF(Z)Z

    move-result v0

    return v0
.end method

.method public enableSpeaker(Z)V
    .locals 1
    .parameter "speakerOn"

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/caf/fmradio/FMRadioService;->enableSpeaker(Z)V

    .line 1442
    return-void
.end method

.method public enableStereo(Z)Z
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/caf/fmradio/FMRadioService;->enableStereo(Z)Z

    move-result v0

    return v0
.end method

.method public fmOff()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    #calls: Lcom/caf/fmradio/FMRadioService;->fmOff()Z
    invoke-static {v0}, Lcom/caf/fmradio/FMRadioService;->access$1100(Lcom/caf/fmradio/FMRadioService;)Z

    move-result v0

    return v0
.end method

.method public fmOn()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    #calls: Lcom/caf/fmradio/FMRadioService;->fmOn()Z
    invoke-static {v0}, Lcom/caf/fmradio/FMRadioService;->access$1300(Lcom/caf/fmradio/FMRadioService;)Z

    move-result v0

    return v0
.end method

.method public fmRadioReset()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1361
    const/4 v0, 0x1

    return v0
.end method

.method public fmReconfigure()Z
    .locals 1

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->fmReconfigure()Z

    move-result v0

    return v0
.end method

.method public getAfJmpRmssiSamplesCnt()I
    .locals 1

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->getAfJmpRmssiSamplesCnt()I

    move-result v0

    return v0
.end method

.method public getAfJmpRmssiTh()I
    .locals 1

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->getAfJmpRmssiTh()I

    move-result v0

    return v0
.end method

.method public getCFOMeanTh()I
    .locals 1

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->getCFOMeanTh()I

    move-result v0

    return v0
.end method

.method public getExtenRadioText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->getExtenRadioText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGoodChRmssiTh()I
    .locals 1

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->getGoodChRmssiTh()I

    move-result v0

    return v0
.end method

.method public getIntDet()I
    .locals 1

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->getIntDet()I

    move-result v0

    return v0
.end method

.method public getIoC()I
    .locals 1

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->getIoC()I

    move-result v0

    return v0
.end method

.method public getMpxDcc()I
    .locals 1

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->getMpxDcc()I

    move-result v0

    return v0
.end method

.method public getPowerMode()I
    .locals 1

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->getPowerMode()I

    move-result v0

    return v0
.end method

.method public getProgramID()I
    .locals 1

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->getProgramID()I

    move-result v0

    return v0
.end method

.method public getProgramService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->getProgramService()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgramType()I
    .locals 1

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->getProgramType()I

    move-result v0

    return v0
.end method

.method public getRadioText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->getRadioText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecordingStartTime()J
    .locals 2

    .prologue
    .line 1639
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->getRecordingStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRmssiFirstStage()I
    .locals 1

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->getRmssiFirstStage()I

    move-result v0

    return v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->getRssi()I

    move-result v0

    return v0
.end method

.method public getSINR()I
    .locals 1

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->getSINR()I

    move-result v0

    return v0
.end method

.method public getSearchAlgoType()I
    .locals 1

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->getSearchAlgoType()I

    move-result v0

    return v0
.end method

.method public getSearchList()[I
    .locals 1

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->getSearchList()[I

    move-result-object v0

    return-object v0
.end method

.method public getSinrFirstStage()I
    .locals 1

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->getSinrFirstStage()I

    move-result v0

    return v0
.end method

.method public getSinrSamplesCnt()I
    .locals 1

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->getSinrSamplesCnt()I

    move-result v0

    return v0
.end method

.method public getSinrTh()I
    .locals 1

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->getSinrTh()I

    move-result v0

    return v0
.end method

.method public isAnalogModeEnabled()Z
    .locals 1

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->isAnalogModeEnabled()Z

    move-result v0

    return v0
.end method

.method public isAntennaAvailable()Z
    .locals 1

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->isAntennaAvailable()Z

    move-result v0

    return v0
.end method

.method public isCallActive()Z
    .locals 1

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->isCallActive()Z

    move-result v0

    return v0
.end method

.method public isFmOn()Z
    .locals 1

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->isFmOn()Z

    move-result v0

    return v0
.end method

.method public isFmRecordingOn()Z
    .locals 1

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->isFmRecordingOn()Z

    move-result v0

    return v0
.end method

.method public isMuted()Z
    .locals 1

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->isMuted()Z

    move-result v0

    return v0
.end method

.method public isSleepTimerActive()Z
    .locals 1

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->isSleepTimerActive()Z

    move-result v0

    return v0
.end method

.method public isSpeakerEnabled()Z
    .locals 1

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->isSpeakerEnabled()Z

    move-result v0

    return v0
.end method

.method public isWiredHeadsetAvailable()Z
    .locals 1

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->isWiredHeadsetAvailable()Z

    move-result v0

    return v0
.end method

.method public mute()Z
    .locals 1

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->mute()Z

    move-result v0

    return v0
.end method

.method public registerCallbacks(Lcom/caf/fmradio/IFMRadioServiceCallbacks;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/caf/fmradio/FMRadioService;->registerCallbacks(Lcom/caf/fmradio/IFMRadioServiceCallbacks;)V

    .line 1392
    return-void
.end method

.method public requestFocus()V
    .locals 1

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    #calls: Lcom/caf/fmradio/FMRadioService;->requestFocus()V
    invoke-static {v0}, Lcom/caf/fmradio/FMRadioService;->access$3000(Lcom/caf/fmradio/FMRadioService;)V

    .line 1548
    return-void
.end method

.method public routeAudio(I)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/caf/fmradio/FMRadioService;->routeAudio(I)Z

    move-result v0

    return v0
.end method

.method public scan(I)Z
    .locals 1
    .parameter "pty"

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/caf/fmradio/FMRadioService;->scan(I)Z

    move-result v0

    return v0
.end method

.method public searchStrongStationList(I)Z
    .locals 1
    .parameter "numStations"

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/caf/fmradio/FMRadioService;->searchStrongStationList(I)Z

    move-result v0

    return v0
.end method

.method public seek(Z)Z
    .locals 1
    .parameter "up"

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/caf/fmradio/FMRadioService;->seek(Z)Z

    move-result v0

    return v0
.end method

.method public seekPI(I)Z
    .locals 1
    .parameter "piCode"

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/caf/fmradio/FMRadioService;->seekPI(I)Z

    move-result v0

    return v0
.end method

.method public setAfJmpRmssiSamplesCnt(I)Z
    .locals 1
    .parameter "afJmpRmssiSmplsCnt"

    .prologue
    .line 1631
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/caf/fmradio/FMRadioService;->setAfJmpRmssiSamplesCnt(I)Z

    move-result v0

    return v0
.end method

.method public setAfJmpRmssiTh(I)Z
    .locals 1
    .parameter "afJmpRmssiTh"

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/caf/fmradio/FMRadioService;->setAfJmpRmssiTh(I)Z

    move-result v0

    return v0
.end method

.method public setCFOMeanTh(I)Z
    .locals 1
    .parameter "th"

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/caf/fmradio/FMRadioService;->setCFOMeanTh(I)Z

    move-result v0

    return v0
.end method

.method public setGoodChRmssiTh(I)Z
    .locals 1
    .parameter "gdChRmssiTh"

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/caf/fmradio/FMRadioService;->setGoodChRmssiTh(I)Z

    move-result v0

    return v0
.end method

.method public setHiLoInj(I)V
    .locals 1
    .parameter "inj"

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/caf/fmradio/FMRadioService;->setHiLoInj(I)V

    .line 1536
    return-void
.end method

.method public setIntfDetHighTh(I)Z
    .locals 1
    .parameter "intfHighTh"

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/caf/fmradio/FMRadioService;->setIntfDetHighTh(I)Z

    move-result v0

    return v0
.end method

.method public setIntfDetLowTh(I)Z
    .locals 1
    .parameter "intfLowTh"

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/caf/fmradio/FMRadioService;->setIntfDetLowTh(I)Z

    move-result v0

    return v0
.end method

.method public setLowPowerMode(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/caf/fmradio/FMRadioService;->setLowPowerMode(Z)Z

    move-result v0

    return v0
.end method

.method public setRmssiFirstStage(I)Z
    .locals 1
    .parameter "rmssi"

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/caf/fmradio/FMRadioService;->setRmssiFirstStage(I)Z

    move-result v0

    return v0
.end method

.method public setRxRepeatCount(I)Z
    .locals 1
    .parameter "count"

    .prologue
    .line 1635
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/caf/fmradio/FMRadioService;->setRxRepeatCount(I)Z

    move-result v0

    return v0
.end method

.method public setSearchAlgoType(I)Z
    .locals 1
    .parameter "searchType"

    .prologue
    .line 1575
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/caf/fmradio/FMRadioService;->setSearchAlgoType(I)Z

    move-result v0

    return v0
.end method

.method public setSinrFirstStage(I)Z
    .locals 1
    .parameter "sinr"

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/caf/fmradio/FMRadioService;->setSinrFirstStage(I)Z

    move-result v0

    return v0
.end method

.method public setSinrSamplesCnt(I)Z
    .locals 1
    .parameter "samplesCnt"

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/caf/fmradio/FMRadioService;->setSinrSamplesCnt(I)Z

    move-result v0

    return v0
.end method

.method public setSinrTh(I)Z
    .locals 1
    .parameter "sinr"

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/caf/fmradio/FMRadioService;->setSinrTh(I)Z

    move-result v0

    return v0
.end method

.method public startRecording()V
    .locals 1

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->startRecording()V

    .line 1422
    return-void
.end method

.method public stopRecording()V
    .locals 1

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->stopRecording()V

    .line 1427
    return-void
.end method

.method public tune(I)Z
    .locals 1
    .parameter "frequency"

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/caf/fmradio/FMRadioService;->tune(I)Z

    move-result v0

    return v0
.end method

.method public unMute()Z
    .locals 1

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->unMute()Z

    move-result v0

    return v0
.end method

.method public unregisterCallbacks()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->unregisterCallbacks()V

    .line 1397
    return-void
.end method
