.class Lcom/caf/fmradio/FMTransmitterService$6;
.super Ljava/lang/Object;
.source "FMTransmitterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FMTransmitterService;
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
    .line 1087
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterService$6;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1089
    const/4 v0, 0x0

    .line 1091
    .local v0, bStatus:Z
    const-string v2, "FMTxService"

    const-string v3, "Enter change FM Tx State"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterService$6;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    iget-boolean v2, v2, Lcom/caf/fmradio/FMTransmitterService;->mHeadsetPlugged:Z

    if-eqz v2, :cond_5

    .line 1094
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterService$6;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    invoke-virtual {v2}, Lcom/caf/fmradio/FMTransmitterService;->cancelSearch()Z

    move-result v0

    .line 1095
    if-nez v0, :cond_0

    .line 1096
    const-string v2, "FMTxService"

    const-string v3, "Error in cancelling the search"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_0
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterService$6;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    invoke-virtual {v2}, Lcom/caf/fmradio/FMTransmitterService;->isFmOn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1098
    const-string v2, "FMTxService"

    const-string v3, "disable called from headset handler"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterService$6;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #calls: Lcom/caf/fmradio/FMTransmitterService;->fmOff()Z
    invoke-static {v2}, Lcom/caf/fmradio/FMTransmitterService;->access$400(Lcom/caf/fmradio/FMTransmitterService;)Z

    move-result v0

    .line 1100
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterService$6;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mServiceInUse:Z
    invoke-static {v2}, Lcom/caf/fmradio/FMTransmitterService;->access$100(Lcom/caf/fmradio/FMTransmitterService;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterService$6;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;
    invoke-static {v2}, Lcom/caf/fmradio/FMTransmitterService;->access$700(Lcom/caf/fmradio/FMTransmitterService;)Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    move-result-object v2

    if-eqz v2, :cond_2

    if-ne v0, v4, :cond_2

    .line 1102
    :try_start_0
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterService$6;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;
    invoke-static {v2}, Lcom/caf/fmradio/FMTransmitterService;->access$700(Lcom/caf/fmradio/FMTransmitterService;)Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    move-result-object v2

    invoke-interface {v2}, Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;->onDisabled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1130
    :cond_1
    :goto_0
    return-void

    .line 1103
    :catch_0
    move-exception v1

    .line 1104
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1106
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    if-nez v0, :cond_1

    .line 1107
    const-string v2, "FMTxService"

    const-string v3, "Error in turning off the FM TX "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1109
    :cond_3
    invoke-static {}, Lcom/caf/fmradio/FMTransmitterService;->access$1100()Lqcom/fmradio/FmReceiver;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1110
    invoke-static {}, Lcom/caf/fmradio/FMTransmitterService;->access$1100()Lqcom/fmradio/FmReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lqcom/fmradio/FmReceiver;->disable()Z

    move-result v0

    .line 1111
    if-ne v0, v4, :cond_4

    .line 1112
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/caf/fmradio/FMTransmitterService;->access$1102(Lqcom/fmradio/FmReceiver;)Lqcom/fmradio/FmReceiver;

    goto :goto_0

    .line 1114
    :cond_4
    const-string v2, "FMTxService"

    const-string v3, "Error in disabling the FM RX"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1117
    :cond_5
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterService$6;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    invoke-virtual {v2}, Lcom/caf/fmradio/FMTransmitterService;->isFmOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1118
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterService$6;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #calls: Lcom/caf/fmradio/FMTransmitterService;->fmOn()Z
    invoke-static {v2}, Lcom/caf/fmradio/FMTransmitterService;->access$300(Lcom/caf/fmradio/FMTransmitterService;)Z

    move-result v0

    .line 1119
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterService$6;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mServiceInUse:Z
    invoke-static {v2}, Lcom/caf/fmradio/FMTransmitterService;->access$100(Lcom/caf/fmradio/FMTransmitterService;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterService$6;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;
    invoke-static {v2}, Lcom/caf/fmradio/FMTransmitterService;->access$700(Lcom/caf/fmradio/FMTransmitterService;)Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    move-result-object v2

    if-eqz v2, :cond_6

    if-ne v0, v4, :cond_6

    .line 1121
    :try_start_1
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterService$6;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #getter for: Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;
    invoke-static {v2}, Lcom/caf/fmradio/FMTransmitterService;->access$700(Lcom/caf/fmradio/FMTransmitterService;)Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;->onEnabled(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1122
    :catch_1
    move-exception v1

    .line 1123
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1125
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_6
    if-nez v0, :cond_1

    .line 1126
    const-string v2, "FMTxService"

    const-string v3, "Error in enabling the FM TX"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
