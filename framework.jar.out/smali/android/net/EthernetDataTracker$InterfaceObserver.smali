.class Landroid/net/EthernetDataTracker$InterfaceObserver;
.super Landroid/net/INetworkManagementEventObserver$Stub;
.source "EthernetDataTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/EthernetDataTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InterfaceObserver"
.end annotation


# instance fields
.field private mTracker:Landroid/net/EthernetDataTracker;


# direct methods
.method constructor <init>(Landroid/net/EthernetDataTracker;)V
    .locals 0
    .parameter "tracker"

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/net/INetworkManagementEventObserver$Stub;-><init>()V

    .line 70
    iput-object p1, p0, Landroid/net/EthernetDataTracker$InterfaceObserver;->mTracker:Landroid/net/EthernetDataTracker;

    .line 71
    return-void
.end method


# virtual methods
.method public interfaceAdded(Ljava/lang/String;)V
    .locals 1
    .parameter "iface"

    .prologue
    .line 93
    iget-object v0, p0, Landroid/net/EthernetDataTracker$InterfaceObserver;->mTracker:Landroid/net/EthernetDataTracker;

    #calls: Landroid/net/EthernetDataTracker;->interfaceAdded(Ljava/lang/String;)V
    invoke-static {v0, p1}, Landroid/net/EthernetDataTracker;->access$300(Landroid/net/EthernetDataTracker;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public interfaceClassDataActivityChanged(Ljava/lang/String;Z)V
    .locals 0
    .parameter "label"
    .parameter "active"

    .prologue
    .line 106
    return-void
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 3
    .parameter "iface"
    .parameter "up"

    .prologue
    .line 78
    invoke-static {}, Landroid/net/EthernetDataTracker;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const-string v1, "Ethernet"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " link "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_1

    const-string/jumbo v0, "up"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {p2}, Landroid/net/EthernetDataTracker;->access$102(Z)Z

    .line 81
    iget-object v0, p0, Landroid/net/EthernetDataTracker$InterfaceObserver;->mTracker:Landroid/net/EthernetDataTracker;

    #getter for: Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Landroid/net/EthernetDataTracker;->access$200(Landroid/net/EthernetDataTracker;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 84
    if-eqz p2, :cond_2

    .line 85
    iget-object v0, p0, Landroid/net/EthernetDataTracker$InterfaceObserver;->mTracker:Landroid/net/EthernetDataTracker;

    invoke-virtual {v0}, Landroid/net/EthernetDataTracker;->reconnect()Z

    .line 90
    :cond_0
    :goto_1
    return-void

    .line 79
    :cond_1
    const-string v0, "down"

    goto :goto_0

    .line 87
    :cond_2
    iget-object v0, p0, Landroid/net/EthernetDataTracker$InterfaceObserver;->mTracker:Landroid/net/EthernetDataTracker;

    invoke-virtual {v0}, Landroid/net/EthernetDataTracker;->disconnect()V

    goto :goto_1
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 1
    .parameter "iface"

    .prologue
    .line 97
    iget-object v0, p0, Landroid/net/EthernetDataTracker$InterfaceObserver;->mTracker:Landroid/net/EthernetDataTracker;

    #calls: Landroid/net/EthernetDataTracker;->interfaceRemoved(Ljava/lang/String;)V
    invoke-static {v0, p1}, Landroid/net/EthernetDataTracker;->access$400(Landroid/net/EthernetDataTracker;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 3
    .parameter "iface"
    .parameter "up"

    .prologue
    .line 74
    const-string v1, "Ethernet"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface status changed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string/jumbo v0, "up"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void

    .line 74
    :cond_0
    const-string v0, "down"

    goto :goto_0
.end method

.method public limitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "limitName"
    .parameter "iface"

    .prologue
    .line 102
    return-void
.end method
