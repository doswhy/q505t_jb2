.class public Lcom/zte/security/ZTEIConnectivityManager;
.super Landroid/net/IConnectivityManager$Stub;
.source "ZTEIConnectivityManager.java"


# instance fields
.field private mIConnectivityManager:Landroid/net/IConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .parameter "ib"

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/net/IConnectivityManager$Stub;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    .line 28
    invoke-static {p1}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    .line 29
    return-void
.end method


# virtual methods
.method public captivePortalCheckComplete(Landroid/net/NetworkInfo;)V
    .locals 2
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 620
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->captivePortalCheckComplete(Landroid/net/NetworkInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    return-void

    .line 622
    :catch_0
    move-exception v0

    .line 624
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public captivePortalCheckCompleted(Landroid/net/NetworkInfo;Z)V
    .locals 2
    .parameter "info"
    .parameter "isCaptivePortal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 633
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->captivePortalCheckCompleted(Landroid/net/NetworkInfo;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    return-void

    .line 635
    :catch_0
    move-exception v0

    .line 637
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public checkMobileProvisioning(ZILandroid/os/ResultReceiver;)I
    .locals 2
    .parameter "sendNotification"
    .parameter "suggestedTimeOutMs"
    .parameter "resultReceiver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 672
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/IConnectivityManager;->checkMobileProvisioning(ZILandroid/os/ResultReceiver;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 674
    :catch_0
    move-exception v0

    .line 676
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .parameter "config"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 568
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 570
    :catch_0
    move-exception v0

    .line 572
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public findConnectionTypeForIface(Ljava/lang/String;)I
    .locals 2
    .parameter "iface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 659
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->findConnectionTypeForIface(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 661
    :catch_0
    move-exception v0

    .line 663
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 128
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 63
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    .locals 2
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 76
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 167
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 102
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getAllNetworkState()[Landroid/net/NetworkState;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 154
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getGlobalProxy()Landroid/net/ProxyProperties;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 490
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getGlobalProxy()Landroid/net/ProxyProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 492
    :catch_0
    move-exception v0

    .line 494
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 2
    .parameter "iface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getLastTetherError(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 336
    :catch_0
    move-exception v0

    .line 338
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 594
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 596
    :catch_0
    move-exception v0

    .line 598
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getLinkProperties(I)Landroid/net/LinkProperties;
    .locals 2
    .parameter "networkType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 141
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getMobileDataEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 269
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getMobileDataEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 271
    :catch_0
    move-exception v0

    .line 273
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getMobileProvisioningUrl()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 685
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 687
    :catch_0
    move-exception v0

    .line 689
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getMobileRedirectedProvisioningUrl()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 698
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getMobileRedirectedProvisioningUrl()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 700
    :catch_0
    move-exception v0

    .line 702
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 2
    .parameter "networkType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 89
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getNetworkPreference()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getNetworkPreference()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 50
    :catch_0
    move-exception v0

    .line 52
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getProxy()Landroid/net/ProxyProperties;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 516
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getProxy()Landroid/net/ProxyProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 518
    :catch_0
    move-exception v0

    .line 520
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 440
    :catch_0
    move-exception v0

    .line 442
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 360
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 362
    :catch_0
    move-exception v0

    .line 364
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 412
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 414
    :catch_0
    move-exception v0

    .line 416
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 425
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 427
    :catch_0
    move-exception v0

    .line 429
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getTetheredIfacePairs()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 386
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheredIfacePairs()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 388
    :catch_0
    move-exception v0

    .line 390
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 373
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 375
    :catch_0
    move-exception v0

    .line 377
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 399
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 401
    :catch_0
    move-exception v0

    .line 403
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isActiveNetworkMetered()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->isActiveNetworkMetered()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 180
    :catch_0
    move-exception v0

    .line 182
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isNetworkSupported(I)Z
    .locals 2
    .parameter "networkType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->isNetworkSupported(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 115
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isTetheringSupported()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->isTetheringSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 349
    :catch_0
    move-exception v0

    .line 351
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "oldPackage"
    .parameter "newPackage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 555
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 557
    :catch_0
    move-exception v0

    .line 559
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public protectVpn(Landroid/os/ParcelFileDescriptor;)Z
    .locals 2
    .parameter "socket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 542
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->protectVpn(Landroid/os/ParcelFileDescriptor;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 544
    :catch_0
    move-exception v0

    .line 546
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public reportInetCondition(II)V
    .locals 2
    .parameter "networkType"
    .parameter "percentage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 477
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->reportInetCondition(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    return-void

    .line 479
    :catch_0
    move-exception v0

    .line 481
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public requestNetworkTransitionWakelock(Ljava/lang/String;)V
    .locals 2
    .parameter "forWhom"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 464
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->requestNetworkTransitionWakelock(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    return-void

    .line 466
    :catch_0
    move-exception v0

    .line 468
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public requestRouteToHost(II)Z
    .locals 2
    .parameter "networkType"
    .parameter "hostAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->requestRouteToHost(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 245
    :catch_0
    move-exception v0

    .line 247
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public requestRouteToHostAddress(I[B)Z
    .locals 2
    .parameter "networkType"
    .parameter "hostAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->requestRouteToHostAddress(I[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 258
    :catch_0
    move-exception v0

    .line 260
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public setDataDependency(IZ)V
    .locals 2
    .parameter "networkType"
    .parameter "met"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 529
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->setDataDependency(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    return-void

    .line 531
    :catch_0
    move-exception v0

    .line 533
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public setGlobalProxy(Landroid/net/ProxyProperties;)V
    .locals 2
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 503
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setGlobalProxy(Landroid/net/ProxyProperties;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    return-void

    .line 505
    :catch_0
    move-exception v0

    .line 507
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public setMobileDataEnabled(Ljava/lang/String;Z)V
    .locals 2
    .parameter "callingPackage"
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 282
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->setMobileDataEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 286
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public setNetworkPreference(I)V
    .locals 2
    .parameter "pref"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setNetworkPreference(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public setPolicyDataEnable(IZ)V
    .locals 2
    .parameter "networkType"
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->setPolicyDataEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 299
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public setRadio(IZ)Z
    .locals 2
    .parameter "networkType"
    .parameter "turnOn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->setRadio(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 206
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public setRadios(Z)Z
    .locals 2
    .parameter "onOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setRadios(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 193
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public setUsbTethering(Z)I
    .locals 2
    .parameter "enable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 451
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setUsbTethering(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 453
    :catch_0
    move-exception v0

    .line 455
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    .locals 2
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 581
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    return-void

    .line 583
    :catch_0
    move-exception v0

    .line 585
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I
    .locals 2
    .parameter "networkType"
    .parameter "feature"
    .parameter "binder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/IConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 219
    :catch_0
    move-exception v0

    .line 221
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .locals 2
    .parameter "networkType"
    .parameter "feature"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 232
    :catch_0
    move-exception v0

    .line 234
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public supplyMessenger(ILandroid/os/Messenger;)V
    .locals 2
    .parameter "networkType"
    .parameter "messenger"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 646
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    return-void

    .line 648
    :catch_0
    move-exception v0

    .line 650
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public tether(Ljava/lang/String;)I
    .locals 2
    .parameter "iface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 308
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->tether(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 310
    :catch_0
    move-exception v0

    .line 312
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public untether(Ljava/lang/String;)I
    .locals 2
    .parameter "iface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->untether(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 323
    :catch_0
    move-exception v0

    .line 325
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public updateLockdownVpn()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 607
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEIConnectivityManager;->mIConnectivityManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->updateLockdownVpn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 609
    :catch_0
    move-exception v0

    .line 611
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method
