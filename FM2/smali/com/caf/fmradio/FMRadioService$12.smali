.class Lcom/caf/fmradio/FMRadioService$12;
.super Landroid/os/Handler;
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
    .line 1145
    iput-object p1, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1148
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1223
    :cond_0
    :goto_0
    return-void

    .line 1151
    :pswitch_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->isFmOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mServiceInUse:Z
    invoke-static {v0}, Lcom/caf/fmradio/FMRadioService;->access$100(Lcom/caf/fmradio/FMRadioService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1155
    const-string v0, "FMService"

    const-string v1, "mDelayedStopHandler: stopSelf"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mServiceStartId:I
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$1500(Lcom/caf/fmradio/FMRadioService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/caf/fmradio/FMRadioService;->stopSelf(I)V

    goto :goto_0

    .line 1159
    :pswitch_1
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadioService;->access$1900(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadioService;->access$1900(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmReceiver;

    move-result-object v0

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmReceiver;->setNotchFilter(Z)V

    .line 1161
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    #setter for: Lcom/caf/fmradio/FMRadioService;->mNotchFilterSet:Z
    invoke-static {v0, v3}, Lcom/caf/fmradio/FMRadioService;->access$2102(Lcom/caf/fmradio/FMRadioService;Z)Z

    goto :goto_0

    .line 1165
    :pswitch_2
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    #calls: Lcom/caf/fmradio/FMRadioService;->fmOff()Z
    invoke-static {v0}, Lcom/caf/fmradio/FMRadioService;->access$1100(Lcom/caf/fmradio/FMRadioService;)Z

    goto :goto_0

    .line 1168
    :pswitch_3
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->stopRecording()V

    goto :goto_0

    .line 1171
    :pswitch_4
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->isFmOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1172
    const-string v0, "FMService"

    const-string v1, "FM is not running, not handling change"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1175
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_1

    .line 1219
    :pswitch_5
    const-string v0, "FMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown audio focus change code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1177
    :pswitch_6
    const-string v0, "FMService"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->isFmRecordingOn()Z

    move-result v0

    if-ne v2, v0, :cond_2

    .line 1180
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->stopRecording()V

    .line 1181
    :cond_2
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mSpeakerPhoneOn:Z
    invoke-static {v0}, Lcom/caf/fmradio/FMRadioService;->access$2200(Lcom/caf/fmradio/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1182
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mSpeakerDisableHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadioService;->access$2400(Lcom/caf/fmradio/FMRadioService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mSpeakerDisableTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$2300(Lcom/caf/fmradio/FMRadioService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1183
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mSpeakerDisableHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadioService;->access$2400(Lcom/caf/fmradio/FMRadioService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mSpeakerDisableTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$2300(Lcom/caf/fmradio/FMRadioService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1185
    :cond_3
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mPlaybackInProgress:Z
    invoke-static {v0}, Lcom/caf/fmradio/FMRadioService;->access$2500(Lcom/caf/fmradio/FMRadioService;)Z

    move-result v0

    if-ne v2, v0, :cond_4

    .line 1186
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    #calls: Lcom/caf/fmradio/FMRadioService;->fmOff()Z
    invoke-static {v0}, Lcom/caf/fmradio/FMRadioService;->access$1100(Lcom/caf/fmradio/FMRadioService;)Z

    .line 1188
    :cond_4
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    #setter for: Lcom/caf/fmradio/FMRadioService;->mStoppedOnFocusLoss:Z
    invoke-static {v0, v2}, Lcom/caf/fmradio/FMRadioService;->access$802(Lcom/caf/fmradio/FMRadioService;Z)Z

    goto/16 :goto_0

    .line 1193
    :pswitch_7
    const-string v0, "FMService"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    #setter for: Lcom/caf/fmradio/FMRadioService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v2}, Lcom/caf/fmradio/FMRadioService;->access$2602(Lcom/caf/fmradio/FMRadioService;Z)Z

    .line 1196
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->isFmRecordingOn()Z

    move-result v0

    if-ne v2, v0, :cond_5

    .line 1197
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadioService;->stopRecording()V

    .line 1198
    :cond_5
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mSpeakerPhoneOn:Z
    invoke-static {v0}, Lcom/caf/fmradio/FMRadioService;->access$2200(Lcom/caf/fmradio/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1199
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mSpeakerDisableHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadioService;->access$2400(Lcom/caf/fmradio/FMRadioService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mSpeakerDisableTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$2300(Lcom/caf/fmradio/FMRadioService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1200
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mSpeakerDisableHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadioService;->access$2400(Lcom/caf/fmradio/FMRadioService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mSpeakerDisableTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$2300(Lcom/caf/fmradio/FMRadioService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1202
    :cond_6
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mPlaybackInProgress:Z
    invoke-static {v0}, Lcom/caf/fmradio/FMRadioService;->access$2500(Lcom/caf/fmradio/FMRadioService;)Z

    move-result v0

    if-ne v2, v0, :cond_7

    .line 1205
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    #calls: Lcom/caf/fmradio/FMRadioService;->fmOperationsOff()V
    invoke-static {v0}, Lcom/caf/fmradio/FMRadioService;->access$2700(Lcom/caf/fmradio/FMRadioService;)V

    .line 1206
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    #setter for: Lcom/caf/fmradio/FMRadioService;->mPlaybackInProgress:Z
    invoke-static {v0, v3}, Lcom/caf/fmradio/FMRadioService;->access$2502(Lcom/caf/fmradio/FMRadioService;Z)Z

    .line 1209
    :cond_7
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    #setter for: Lcom/caf/fmradio/FMRadioService;->mStoppedOnFocusLoss:Z
    invoke-static {v0, v2}, Lcom/caf/fmradio/FMRadioService;->access$802(Lcom/caf/fmradio/FMRadioService;Z)Z

    goto/16 :goto_0

    .line 1212
    :pswitch_8
    const-string v0, "FMService"

    const-string v1, "AudioFocus: received AUDIOFOCUS_GAIN"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mPlaybackInProgress:Z
    invoke-static {v0}, Lcom/caf/fmradio/FMRadioService;->access$2500(Lcom/caf/fmradio/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0}, Lcom/caf/fmradio/FMRadioService;->access$2600(Lcom/caf/fmradio/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1214
    :cond_8
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    #calls: Lcom/caf/fmradio/FMRadioService;->startFM()V
    invoke-static {v0}, Lcom/caf/fmradio/FMRadioService;->access$1000(Lcom/caf/fmradio/FMRadioService;)V

    .line 1215
    :cond_9
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$12;->this$0:Lcom/caf/fmradio/FMRadioService;

    #setter for: Lcom/caf/fmradio/FMRadioService;->mStoppedOnFocusLoss:Z
    invoke-static {v0, v3}, Lcom/caf/fmradio/FMRadioService;->access$802(Lcom/caf/fmradio/FMRadioService;Z)Z

    goto/16 :goto_0

    .line 1148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1175
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method
