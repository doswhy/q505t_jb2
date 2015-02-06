.class Lcom/caf/fmradio/FMStats$20;
.super Landroid/os/Handler;
.source "FMStats.java"


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
    .line 1954
    iput-object p1, p0, Lcom/caf/fmradio/FMStats$20;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1956
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1978
    :cond_0
    :goto_0
    return-void

    .line 1959
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/caf/fmradio/FMStats$Result;

    .line 1960
    .local v0, myRes:Lcom/caf/fmradio/FMStats$Result;
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Status update is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Lcom/caf/fmradio/FMStats$Result;->mFreq:Ljava/lang/String;
    invoke-static {v0}, Lcom/caf/fmradio/FMStats$Result;->access$4200(Lcom/caf/fmradio/FMStats$Result;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$20;->this$0:Lcom/caf/fmradio/FMStats;

    #calls: Lcom/caf/fmradio/FMStats;->createResult(Lcom/caf/fmradio/FMStats$Result;)V
    invoke-static {v1, v0}, Lcom/caf/fmradio/FMStats;->access$4300(Lcom/caf/fmradio/FMStats;Lcom/caf/fmradio/FMStats$Result;)V

    goto :goto_0

    .line 1964
    .end local v0           #myRes:Lcom/caf/fmradio/FMStats$Result;
    :pswitch_1
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$20;->this$0:Lcom/caf/fmradio/FMStats;

    const/4 v2, 0x1

    #calls: Lcom/caf/fmradio/FMStats;->SetButtonState(Z)V
    invoke-static {v1, v2}, Lcom/caf/fmradio/FMStats;->access$400(Lcom/caf/fmradio/FMStats;Z)V

    goto :goto_0

    .line 1967
    :pswitch_2
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mUIUpdateHandlerHandler - RECORDTIMER_EXPIRED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$20;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-virtual {v1}, Lcom/caf/fmradio/FMStats;->isRecording()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1969
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Stop Recording"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$20;->this$0:Lcom/caf/fmradio/FMStats;

    #calls: Lcom/caf/fmradio/FMStats;->stopRecording()V
    invoke-static {v1}, Lcom/caf/fmradio/FMStats;->access$4400(Lcom/caf/fmradio/FMStats;)V

    goto :goto_0

    .line 1974
    :pswitch_3
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mUIUpdateHandlerHandler - RECORDTIMER_UPDATE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$20;->this$0:Lcom/caf/fmradio/FMStats;

    #calls: Lcom/caf/fmradio/FMStats;->updateExpiredRecordTime()V
    invoke-static {v1}, Lcom/caf/fmradio/FMStats;->access$4500(Lcom/caf/fmradio/FMStats;)V

    goto :goto_0

    .line 1956
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
