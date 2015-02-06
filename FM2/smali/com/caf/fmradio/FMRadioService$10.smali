.class Lcom/caf/fmradio/FMRadioService$10;
.super Landroid/telephony/PhoneStateListener;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/fmradio/FMRadioService;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 1103
    iput-object p1, p0, Lcom/caf/fmradio/FMRadioService$10;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 1106
    const-string v0, "FMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged: State - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    const-string v0, "FMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged: incomingNumber - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$10;->this$0:Lcom/caf/fmradio/FMRadioService;

    #calls: Lcom/caf/fmradio/FMRadioService;->fmActionOnCallState(I)V
    invoke-static {v0, p1}, Lcom/caf/fmradio/FMRadioService;->access$1800(Lcom/caf/fmradio/FMRadioService;I)V

    .line 1109
    return-void
.end method

.method public onDataActivity(I)V
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1113
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataActivity - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    if-eqz p1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 1116
    :cond_0
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$10;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$1900(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmReceiver;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1117
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$10;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$2000(Lcom/caf/fmradio/FMRadioService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1118
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$10;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$2000(Lcom/caf/fmradio/FMRadioService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1133
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 1121
    :cond_2
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$10;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$1900(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmReceiver;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1122
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$10;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mNotchFilterSet:Z
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$2100(Lcom/caf/fmradio/FMRadioService;)Z

    move-result v1

    if-ne v4, v1, :cond_3

    .line 1124
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$10;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$2000(Lcom/caf/fmradio/FMRadioService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1128
    :cond_3
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$10;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$1900(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmReceiver;

    move-result-object v1

    invoke-virtual {v1, v4}, Lqcom/fmradio/FmReceiver;->setNotchFilter(Z)V

    .line 1129
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$10;->this$0:Lcom/caf/fmradio/FMRadioService;

    #setter for: Lcom/caf/fmradio/FMRadioService;->mNotchFilterSet:Z
    invoke-static {v1, v4}, Lcom/caf/fmradio/FMRadioService;->access$2102(Lcom/caf/fmradio/FMRadioService;Z)Z

    goto :goto_0
.end method
