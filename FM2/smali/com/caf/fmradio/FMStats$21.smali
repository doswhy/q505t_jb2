.class Lcom/caf/fmradio/FMStats$21;
.super Ljava/lang/Object;
.source "FMStats.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FMStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/fmradio/FMStats;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/FMStats;)V
    .locals 0
    .parameter

    .prologue
    .line 2041
    iput-object p1, p0, Lcom/caf/fmradio/FMStats$21;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 2043
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$21;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-static {p2}, Lcom/caf/fmradio/IFMRadioService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v2

    #setter for: Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v1, v2}, Lcom/caf/fmradio/FMStats;->access$602(Lcom/caf/fmradio/FMStats;Lcom/caf/fmradio/IFMRadioService;)Lcom/caf/fmradio/IFMRadioService;

    .line 2044
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ServiceConnection: onServiceConnected: "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$21;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v1}, Lcom/caf/fmradio/FMStats;->access$600(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2049
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$21;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v1}, Lcom/caf/fmradio/FMStats;->access$600(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v1

    iget-object v2, p0, Lcom/caf/fmradio/FMStats$21;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mServiceCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$4600(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/caf/fmradio/IFMRadioService;->registerCallbacks(Lcom/caf/fmradio/IFMRadioServiceCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2055
    :goto_0
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$21;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-virtual {v1}, Lcom/caf/fmradio/FMStats;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2056
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$21;->this$0:Lcom/caf/fmradio/FMStats;

    #calls: Lcom/caf/fmradio/FMStats;->initiateRecordThread()V
    invoke-static {v1}, Lcom/caf/fmradio/FMStats;->access$4700(Lcom/caf/fmradio/FMStats;)V

    .line 2064
    :cond_0
    :goto_1
    return-void

    .line 2051
    :catch_0
    move-exception v0

    .line 2053
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2061
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IFMRadioService onServiceConnected failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$21;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-virtual {v1}, Lcom/caf/fmradio/FMStats;->finish()V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "classname"

    .prologue
    .line 2066
    return-void
.end method
