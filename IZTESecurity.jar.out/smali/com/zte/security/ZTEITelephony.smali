.class public Lcom/zte/security/ZTEITelephony;
.super Lcom/android/internal/telephony/ITelephony$Stub;
.source "ZTEITelephony.java"


# instance fields
.field private mITelephony:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .parameter "ib"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephony$Stub;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 20
    invoke-static {p1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 21
    return-void
.end method


# virtual methods
.method public answerRingingCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "callingPackage"
    .parameter "number"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->call(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public cancelMissedCallsNotification()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public dial(Ljava/lang/String;)V
    .locals 2
    .parameter "number"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->dial(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 31
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public disableApnType(Ljava/lang/String;)I
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 367
    :catch_0
    move-exception v0

    .line 369
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public disableDataConnectivity()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 391
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 393
    :catch_0
    move-exception v0

    .line 395
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public disableLocationUpdates()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 339
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdates()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 343
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 354
    :catch_0
    move-exception v0

    .line 356
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public enableDataConnectivity()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 378
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 380
    :catch_0
    move-exception v0

    .line 382
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public enableLocationUpdates()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdates()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 330
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public endCall()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 81
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getActivePhoneType()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 482
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 484
    :catch_0
    move-exception v0

    .line 486
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 625
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getAllCellInfo()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 627
    :catch_0
    move-exception v0

    .line 629
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getCallState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 443
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 445
    :catch_0
    move-exception v0

    .line 447
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 495
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconIndex()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 497
    :catch_0
    move-exception v0

    .line 499
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getCdmaEriIconMode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 508
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 510
    :catch_0
    move-exception v0

    .line 512
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 521
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriText()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 523
    :catch_0
    move-exception v0

    .line 525
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getCellLocation()Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 417
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCellLocation()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 419
    :catch_0
    move-exception v0

    .line 421
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getDataActivity()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 456
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataActivity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 458
    :catch_0
    move-exception v0

    .line 460
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getDataNetworkType()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 573
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 575
    :catch_0
    move-exception v0

    .line 577
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getDataState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 469
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 471
    :catch_0
    move-exception v0

    .line 473
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getIccPin1RetryCount()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getIccPin1RetryCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 237
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getLteOnCdmaMode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 612
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getLteOnCdmaMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 614
    :catch_0
    move-exception v0

    .line 616
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getMissedCallCount()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 651
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getMissedCallCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 653
    :catch_0
    move-exception v0

    .line 655
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "callingPkg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 430
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 432
    :catch_0
    move-exception v0

    .line 434
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getNetworkType()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 560
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 562
    :catch_0
    move-exception v0

    .line 564
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getVoiceMessageCount()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 547
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 549
    :catch_0
    move-exception v0

    .line 551
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getVoiceNetworkType()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 586
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getVoiceNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 588
    :catch_0
    move-exception v0

    .line 590
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 2
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 263
    :catch_0
    move-exception v0

    .line 265
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public hasIccCard()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 599
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->hasIccCard()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 601
    :catch_0
    move-exception v0

    .line 603
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isDataConnectivityPossible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 406
    :catch_0
    move-exception v0

    .line 408
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isIdle()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 146
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isOffhook()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 120
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isRadioOn()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 159
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isRinging()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 133
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isSimPinEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isSimPinEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 172
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 534
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->needsOtaServiceProvisioning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 536
    :catch_0
    move-exception v0

    .line 538
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public setCellInfoListRate(I)V
    .locals 2
    .parameter "rateInMillis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 638
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setCellInfoListRate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    return-void

    .line 640
    :catch_0
    move-exception v0

    .line 642
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public setRadio(Z)Z
    .locals 2
    .parameter "turnOn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 289
    :catch_0
    move-exception v0

    .line 291
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public setRadioPower(Z)Z
    .locals 2
    .parameter "turnOn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setRadioPower(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 302
    :catch_0
    move-exception v0

    .line 304
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public showCallScreen()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 55
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public showCallScreenWithDialpad(Z)Z
    .locals 2
    .parameter "showDialpad"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->showCallScreenWithDialpad(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 68
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public silenceRinger()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public supplyPin(Ljava/lang/String;)Z
    .locals 2
    .parameter "pin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 198
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public supplyPinReportResult(Ljava/lang/String;)I
    .locals 2
    .parameter "pin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResult(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 211
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "puk"
    .parameter "pin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 250
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "puk"
    .parameter "pin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 224
    :catch_0
    move-exception v0

    .line 226
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public toggleRadioOnOff()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->toggleRadioOnOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 278
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public updateServiceLocation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->updateServiceLocation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 317
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method
