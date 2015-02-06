.class Lcom/caf/fmradio/FMTransmitterService$ServiceStub;
.super Lcom/caf/fmradio/IFMTransmitterService$Stub;
.source "FMTransmitterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FMTransmitterService;
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
            "Lcom/caf/fmradio/FMTransmitterService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/caf/fmradio/FMTransmitterService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/caf/fmradio/IFMTransmitterService$Stub;-><init>()V

    .line 332
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    .line 333
    return-void
.end method


# virtual methods
.method public cancelSearch()Z
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMTransmitterService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMTransmitterService;->cancelSearch()Z

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
    .line 342
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMTransmitterService;

    #calls: Lcom/caf/fmradio/FMTransmitterService;->fmOff()Z
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterService;->access$400(Lcom/caf/fmradio/FMTransmitterService;)Z

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
    .line 337
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMTransmitterService;

    #calls: Lcom/caf/fmradio/FMTransmitterService;->fmOn()Z
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterService;->access$300(Lcom/caf/fmradio/FMTransmitterService;)Z

    move-result v0

    return v0
.end method

.method public fmReconfigure()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMTransmitterService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMTransmitterService;->fmReconfigure()Z

    move-result v0

    return v0
.end method

.method public fmRestart()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMTransmitterService;

    #calls: Lcom/caf/fmradio/FMTransmitterService;->fmRestart()Z
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterService;->access$600(Lcom/caf/fmradio/FMTransmitterService;)Z

    move-result v0

    return v0
.end method

.method public getPSData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMTransmitterService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMTransmitterService;->getPSData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRadioText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMTransmitterService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMTransmitterService;->getRadioText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchList()[I
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMTransmitterService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMTransmitterService;->getSearchList()[I

    move-result-object v0

    return-object v0
.end method

.method public isCallActive()Z
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMTransmitterService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMTransmitterService;->isCallActive()Z

    move-result v0

    return v0
.end method

.method public isFmOn()Z
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMTransmitterService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMTransmitterService;->isFmOn()Z

    move-result v0

    return v0
.end method

.method public isHeadsetPlugged()Z
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMTransmitterService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMTransmitterService;->isHeadsetPlugged()Z

    move-result v0

    return v0
.end method

.method public isInternalAntennaAvailable()Z
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMTransmitterService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMTransmitterService;->isInternalAntennaAvailable()Z

    move-result v0

    return v0
.end method

.method public registerCallbacks(Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMTransmitterService;

    invoke-virtual {v0, p1}, Lcom/caf/fmradio/FMTransmitterService;->registerCallbacks(Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;)V

    .line 365
    return-void
.end method

.method public searchWeakStationList(I)Z
    .locals 1
    .parameter "numStations"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMTransmitterService;

    invoke-virtual {v0, p1}, Lcom/caf/fmradio/FMTransmitterService;->searchWeakStationList(I)Z

    move-result v0

    return v0
.end method

.method public tune(I)Z
    .locals 1
    .parameter "frequency"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMTransmitterService;

    invoke-virtual {v0, p1}, Lcom/caf/fmradio/FMTransmitterService;->tune(I)Z

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
    .line 374
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMTransmitterService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMTransmitterService;->unregisterCallbacks()V

    .line 375
    return-void
.end method
