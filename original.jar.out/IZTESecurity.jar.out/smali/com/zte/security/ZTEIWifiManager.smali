.class public Lcom/zte/security/ZTEIWifiManager;
.super Landroid/net/wifi/IWifiManager$Stub;
.source "ZTEIWifiManager.java"


# instance fields
.field private mIWifiManager:Landroid/net/wifi/IWifiManager;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .parameter "ib"

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/net/wifi/IWifiManager$Stub;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    .line 24
    invoke-static {p1}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    .line 25
    return-void
.end method


# virtual methods
.method public acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2
    .parameter "binder"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 369
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 373
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z
    .locals 2
    .parameter "lock"
    .parameter "lockType"
    .parameter "tag"
    .parameter "ws"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 304
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/net/wifi/IWifiManager;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 306
    :catch_0
    move-exception v0

    .line 308
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter "config"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 46
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public addToBlacklist(Ljava/lang/String;)V
    .locals 2
    .parameter "bssid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 473
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addToBlacklist(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    return-void

    .line 475
    :catch_0
    move-exception v0

    .line 477
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public captivePortalCheckComplete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 538
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->captivePortalCheckComplete()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    return-void

    .line 540
    :catch_0
    move-exception v0

    .line 542
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public clearBlacklist()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 486
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->clearBlacklist()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 490
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public disableNetwork(I)Z
    .locals 2
    .parameter "netId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->disableNetwork(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 85
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public disconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public enableNetwork(IZ)Z
    .locals 2
    .parameter "netId"
    .parameter "disableOthers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->enableNetwork(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 72
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 525
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConfigFile()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 527
    :catch_0
    move-exception v0

    .line 529
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConfiguredNetworks()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 33
    :catch_0
    move-exception v0

    .line 35
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 176
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 280
    :catch_0
    move-exception v0

    .line 282
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getFrequencyBand()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getFrequencyBand()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 241
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 577
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 579
    :catch_0
    move-exception v0

    .line 581
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getScanResults(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "callingPackage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->getScanResults(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 124
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 421
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 423
    :catch_0
    move-exception v0

    .line 425
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getWifiApEnabledState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 408
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 410
    :catch_0
    move-exception v0

    .line 412
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getWifiEnabledState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 202
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getWifiServiceMessenger()Landroid/os/Messenger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 499
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 501
    :catch_0
    move-exception v0

    .line 503
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getWifiStateMachineMessenger()Landroid/os/Messenger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 512
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiStateMachineMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 514
    :catch_0
    move-exception v0

    .line 516
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public initializeMulticastFiltering()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->initializeMulticastFiltering()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 347
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isDualBandSupported()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isDualBandSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 254
    :catch_0
    move-exception v0

    .line 256
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isMulticastEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 356
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isMulticastEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 358
    :catch_0
    move-exception v0

    .line 360
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isScanAlwaysAvailable()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isScanAlwaysAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 293
    :catch_0
    move-exception v0

    .line 295
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public pingSupplicant()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->pingSupplicant()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 98
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public reassociate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reassociate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public reconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public releaseMulticastLock()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 382
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->releaseMulticastLock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 386
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public releaseWifiLock(Landroid/os/IBinder;)Z
    .locals 2
    .parameter "lock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->releaseWifiLock(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 332
    :catch_0
    move-exception v0

    .line 334
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public removeNetwork(I)Z
    .locals 2
    .parameter "netId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->removeNetwork(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 59
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public saveConfiguration()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->saveConfiguration()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 267
    :catch_0
    move-exception v0

    .line 269
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 2
    .parameter "country"
    .parameter "persist"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setCountryCode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public setFrequencyBand(IZ)V
    .locals 2
    .parameter "band"
    .parameter "persist"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setFrequencyBand(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .parameter "wifiConfig"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 434
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    return-void

    .line 436
    :catch_0
    move-exception v0

    .line 438
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 2
    .parameter "wifiConfig"
    .parameter "enable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 395
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    return-void

    .line 397
    :catch_0
    move-exception v0

    .line 399
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public setWifiEnabled(Z)Z
    .locals 2
    .parameter "enable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 189
    :catch_0
    move-exception v0

    .line 191
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public startPPPOE(Landroid/net/wifi/PPPOEConfig;)V
    .locals 2
    .parameter "config"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 551
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->startPPPOE(Landroid/net/wifi/PPPOEConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    return-void

    .line 553
    :catch_0
    move-exception v0

    .line 555
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public startScan()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->startScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public startWifi()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 447
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->startWifi()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    return-void

    .line 449
    :catch_0
    move-exception v0

    .line 451
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public stopPPPOE()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 564
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->stopPPPOE()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    return-void

    .line 566
    :catch_0
    move-exception v0

    .line 568
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public stopWifi()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 460
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->stopWifi()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    return-void

    .line 462
    :catch_0
    move-exception v0

    .line 464
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 2
    .parameter "lock"
    .parameter "ws"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 317
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIWifiManager;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 321
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method
