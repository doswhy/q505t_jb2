.class public Lcom/caf/utils/A2dpDeviceStatus;
.super Ljava/lang/Object;
.source "A2dpDeviceStatus.java"


# instance fields
.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "mContext"

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caf/utils/A2dpDeviceStatus;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 91
    new-instance v0, Lcom/caf/utils/A2dpDeviceStatus$1;

    invoke-direct {v0, p0}, Lcom/caf/utils/A2dpDeviceStatus$1;-><init>(Lcom/caf/utils/A2dpDeviceStatus;)V

    iput-object v0, p0, Lcom/caf/utils/A2dpDeviceStatus;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 87
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/caf/utils/A2dpDeviceStatus;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 88
    iget-object v0, p0, Lcom/caf/utils/A2dpDeviceStatus;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/caf/utils/A2dpDeviceStatus;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 90
    return-void
.end method

.method static synthetic access$002(Lcom/caf/utils/A2dpDeviceStatus;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/caf/utils/A2dpDeviceStatus;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method


# virtual methods
.method public getActionPlayStateChangedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    return-object v0
.end method

.method public getActionSinkStateChangedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    return-object v0
.end method

.method public isA2dpStateChange(Ljava/lang/String;)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 48
    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x1

    .line 51
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnected(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x2

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, isConnected:Z
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 63
    .local v1, state:I
    if-eq v1, v4, :cond_0

    if-ne v1, v4, :cond_1

    .line 64
    :cond_0
    const/4 v0, 0x1

    .line 66
    :cond_1
    return v0
.end method

.method public isDeviceAvailable()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/caf/utils/A2dpDeviceStatus;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/caf/utils/A2dpDeviceStatus;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
