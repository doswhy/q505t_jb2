.class Lcom/caf/utils/A2dpDeviceStatus$1;
.super Ljava/lang/Object;
.source "A2dpDeviceStatus.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/utils/A2dpDeviceStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/utils/A2dpDeviceStatus;


# direct methods
.method constructor <init>(Lcom/caf/utils/A2dpDeviceStatus;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/caf/utils/A2dpDeviceStatus$1;->this$0:Lcom/caf/utils/A2dpDeviceStatus;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 94
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/caf/utils/A2dpDeviceStatus$1;->this$0:Lcom/caf/utils/A2dpDeviceStatus;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2
    #setter for: Lcom/caf/utils/A2dpDeviceStatus;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, p2}, Lcom/caf/utils/A2dpDeviceStatus;->access$002(Lcom/caf/utils/A2dpDeviceStatus;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 97
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 99
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/caf/utils/A2dpDeviceStatus$1;->this$0:Lcom/caf/utils/A2dpDeviceStatus;

    const/4 v1, 0x0

    #setter for: Lcom/caf/utils/A2dpDeviceStatus;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, v1}, Lcom/caf/utils/A2dpDeviceStatus;->access$002(Lcom/caf/utils/A2dpDeviceStatus;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 102
    :cond_0
    return-void
.end method
