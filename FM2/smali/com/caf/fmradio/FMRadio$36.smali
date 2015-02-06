.class Lcom/caf/fmradio/FMRadio$36;
.super Landroid/os/Handler;
.source "FMRadio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FMRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/fmradio/FMRadio;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/FMRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 2434
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$36;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 2436
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2465
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2466
    :cond_0
    :goto_1
    return-void

    .line 2438
    :pswitch_0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/caf/fmradio/FMRadio;->access$4402(J)J

    .line 2439
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$36;->this$0:Lcom/caf/fmradio/FMRadio;

    const-string v1, "Turning Off FM Radio"

    #calls: Lcom/caf/fmradio/FMRadio;->DebugToasts(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/caf/fmradio/FMRadio;->access$400(Lcom/caf/fmradio/FMRadio;Ljava/lang/String;I)V

    .line 2440
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$36;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->disableRadio()V
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$3700(Lcom/caf/fmradio/FMRadio;)V

    goto :goto_1

    .line 2444
    :pswitch_1
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$36;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->updateExpiredSleepTime()V
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$4500(Lcom/caf/fmradio/FMRadio;)V

    goto :goto_0

    .line 2448
    :pswitch_2
    const-string v0, "FMRadio"

    const-string v1, "mUIUpdateHandlerHandler - RECORDTIMER_EXPIRED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$36;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mRecordingMsgTV:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$4600(Lcom/caf/fmradio/FMRadio;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2451
    invoke-static {}, Lcom/caf/fmradio/FMRadio;->access$4700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2452
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$36;->this$0:Lcom/caf/fmradio/FMRadio;

    const-string v1, "Stop Recording"

    #calls: Lcom/caf/fmradio/FMRadio;->DebugToasts(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/caf/fmradio/FMRadio;->access$400(Lcom/caf/fmradio/FMRadio;Ljava/lang/String;I)V

    .line 2453
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$36;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->stopRecording()V
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$3100(Lcom/caf/fmradio/FMRadio;)V

    goto :goto_1

    .line 2458
    :pswitch_3
    const-string v0, "FMRadio"

    const-string v1, "mUIUpdateHandlerHandler - RECORDTIMER_UPDATE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$36;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->updateExpiredRecordTime()V
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$4800(Lcom/caf/fmradio/FMRadio;)V

    goto :goto_0

    .line 2436
    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
