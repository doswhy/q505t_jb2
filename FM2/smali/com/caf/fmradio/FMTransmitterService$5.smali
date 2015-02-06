.class Lcom/caf/fmradio/FMTransmitterService$5;
.super Landroid/content/BroadcastReceiver;
.source "FMTransmitterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/caf/fmradio/FMTransmitterService;->registerHeadsetListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/fmradio/FMTransmitterService;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/FMTransmitterService;)V
    .locals 0
    .parameter

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterService$5;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1042
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1043
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1044
    const-string v3, "FMTxService"

    const-string v4, "ACTION_HEADSET_PLUG Intent received"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    const-string v3, "FMTxService"

    const-string v4, "mTransmitter: ACTION_HEADSET_PLUG"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    const-string v3, "FMTxService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==> intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const-string v3, "FMTxService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "state"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    const-string v3, "FMTxService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterService$5;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    const-string v4, "state"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_1

    :goto_0
    iput-boolean v1, v3, Lcom/caf/fmradio/FMTransmitterService;->mHeadsetPlugged:Z

    .line 1051
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService$5;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    iget-object v1, v1, Lcom/caf/fmradio/FMTransmitterService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterService$5;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    iget-object v2, v2, Lcom/caf/fmradio/FMTransmitterService;->mChangeFMTxState:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1076
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 1050
    goto :goto_0

    .line 1053
    :cond_2
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterService$5;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mA2dpDeviceState:Lcom/caf/utils/A2dpDeviceStatus;
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterService;->access$1200(Lcom/caf/fmradio/FMTransmitterService;)Lcom/caf/utils/A2dpDeviceStatus;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/caf/utils/A2dpDeviceStatus;->isA2dpStateChange(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1054
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterService$5;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mA2dpDeviceState:Lcom/caf/utils/A2dpDeviceStatus;
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterService;->access$1200(Lcom/caf/fmradio/FMTransmitterService;)Lcom/caf/utils/A2dpDeviceStatus;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/caf/utils/A2dpDeviceStatus;->isConnected(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1055
    const-string v2, "FMTxService"

    const-string v3, " A2DP connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterService$5;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    iput-boolean v1, v2, Lcom/caf/fmradio/FMTransmitterService;->mHeadsetPlugged:Z

    .line 1057
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterService$5;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mFMOn:Z
    invoke-static {v2}, Lcom/caf/fmradio/FMTransmitterService;->access$1000(Lcom/caf/fmradio/FMTransmitterService;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1059
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService$5;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    iget-object v1, v1, Lcom/caf/fmradio/FMTransmitterService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterService$5;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    iget-object v2, v2, Lcom/caf/fmradio/FMTransmitterService;->mChangeFMTxState:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1061
    :cond_3
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService$5;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mA2dpDeviceState:Lcom/caf/utils/A2dpDeviceStatus;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterService;->access$1200(Lcom/caf/fmradio/FMTransmitterService;)Lcom/caf/utils/A2dpDeviceStatus;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/caf/utils/A2dpDeviceStatus;->isConnected(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1062
    const-string v1, "FMTxService"

    const-string v3, "A2DP disconnected"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService$5;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    iput-boolean v2, v1, Lcom/caf/fmradio/FMTransmitterService;->mHeadsetPlugged:Z

    .line 1064
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService$5;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mFMOn:Z
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterService;->access$1000(Lcom/caf/fmradio/FMTransmitterService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1066
    const-string v1, "FMTxService"

    const-string v2, "posting for a2dp state change"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService$5;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    iget-object v1, v1, Lcom/caf/fmradio/FMTransmitterService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterService$5;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    iget-object v2, v2, Lcom/caf/fmradio/FMTransmitterService;->mChangeFMTxState:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1070
    :cond_4
    const-string v2, "HDMI_CONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1071
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterService$5;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mFMOn:Z
    invoke-static {v2}, Lcom/caf/fmradio/FMTransmitterService;->access$1000(Lcom/caf/fmradio/FMTransmitterService;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1072
    const-string v1, "FMTxService"

    const-string v2, "posting for hdmi state change"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService$5;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    iget-object v1, v1, Lcom/caf/fmradio/FMTransmitterService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterService$5;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    iget-object v2, v2, Lcom/caf/fmradio/FMTransmitterService;->mChangeFMTxState:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1
.end method
