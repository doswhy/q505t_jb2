.class Lcom/caf/fmradio/FMRadio$38;
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
    .line 2563
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$38;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 2566
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2577
    :cond_0
    :goto_0
    return-void

    .line 2568
    :pswitch_0
    invoke-static {}, Lcom/caf/fmradio/FMRadio;->access$5000()I

    move-result v0

    if-lez v0, :cond_0

    .line 2569
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCommandTimeoutHandler: Cmd failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/caf/fmradio/FMRadio;->access$5000()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$38;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mCommandTimeoutHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$5100(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2571
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$38;->this$0:Lcom/caf/fmradio/FMRadio;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/caf/fmradio/FMRadio;->showDialog(I)V

    goto :goto_0

    .line 2566
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
