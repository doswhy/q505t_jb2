.class Lcom/caf/fmradio/FMStats$1;
.super Ljava/lang/Object;
.source "FMStats.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 400
    iput-object p1, p0, Lcom/caf/fmradio/FMStats$1;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 402
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$1;->this$0:Lcom/caf/fmradio/FMStats;

    iget-boolean v1, v1, Lcom/caf/fmradio/FMStats;->mTestRunning:Z

    if-nez v1, :cond_2

    .line 403
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$1;->this$0:Lcom/caf/fmradio/FMStats;

    #calls: Lcom/caf/fmradio/FMStats;->clearPreviousTestResults()V
    invoke-static {v1}, Lcom/caf/fmradio/FMStats;->access$100(Lcom/caf/fmradio/FMStats;)V

    .line 404
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$1;->this$0:Lcom/caf/fmradio/FMStats;

    iput-boolean v3, v1, Lcom/caf/fmradio/FMStats;->mTestRunning:Z

    .line 405
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$1;->this$0:Lcom/caf/fmradio/FMStats;

    iget v1, v1, Lcom/caf/fmradio/FMStats;->mTestSelected:I

    if-ne v1, v4, :cond_0

    .line 406
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$1;->this$0:Lcom/caf/fmradio/FMStats;

    #calls: Lcom/caf/fmradio/FMStats;->disableBandSweepSetting()V
    invoke-static {v1}, Lcom/caf/fmradio/FMStats;->access$200(Lcom/caf/fmradio/FMStats;)V

    .line 408
    :cond_0
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$1;->this$0:Lcom/caf/fmradio/FMStats;

    #calls: Lcom/caf/fmradio/FMStats;->runCurrentTest()V
    invoke-static {v1}, Lcom/caf/fmradio/FMStats;->access$300(Lcom/caf/fmradio/FMStats;)V

    .line 431
    :cond_1
    :goto_0
    return-void

    .line 410
    :cond_2
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$1;->this$0:Lcom/caf/fmradio/FMStats;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/caf/fmradio/FMStats;->mTestRunning:Z

    .line 411
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$1;->this$0:Lcom/caf/fmradio/FMStats;

    #calls: Lcom/caf/fmradio/FMStats;->SetButtonState(Z)V
    invoke-static {v1, v3}, Lcom/caf/fmradio/FMStats;->access$400(Lcom/caf/fmradio/FMStats;Z)V

    .line 413
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$1;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mMultiUpdateThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/caf/fmradio/FMStats;->access$500(Lcom/caf/fmradio/FMStats;)Ljava/lang/Thread;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 414
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$1;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mMultiUpdateThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/caf/fmradio/FMStats;->access$500(Lcom/caf/fmradio/FMStats;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 415
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$1;->this$0:Lcom/caf/fmradio/FMStats;

    const/4 v2, 0x0

    #setter for: Lcom/caf/fmradio/FMStats;->mMultiUpdateThread:Ljava/lang/Thread;
    invoke-static {v1, v2}, Lcom/caf/fmradio/FMStats;->access$502(Lcom/caf/fmradio/FMStats;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 418
    :cond_3
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/caf/fmradio/FMStats$1;->this$0:Lcom/caf/fmradio/FMStats;

    iget v2, v2, Lcom/caf/fmradio/FMStats;->mTestSelected:I

    if-ne v1, v2, :cond_4

    .line 420
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$1;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v1}, Lcom/caf/fmradio/FMStats;->access$600(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v1

    invoke-interface {v1}, Lcom/caf/fmradio/IFMRadioService;->cancelSearch()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$1;->this$0:Lcom/caf/fmradio/FMStats;

    iget v1, v1, Lcom/caf/fmradio/FMStats;->mTestSelected:I

    if-ne v1, v4, :cond_1

    .line 426
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$1;->this$0:Lcom/caf/fmradio/FMStats;

    #calls: Lcom/caf/fmradio/FMStats;->stopBandSweep()V
    invoke-static {v1}, Lcom/caf/fmradio/FMStats;->access$700(Lcom/caf/fmradio/FMStats;)V

    .line 427
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$1;->this$0:Lcom/caf/fmradio/FMStats;

    #calls: Lcom/caf/fmradio/FMStats;->sendStatusDoneMsg()V
    invoke-static {v1}, Lcom/caf/fmradio/FMStats;->access$800(Lcom/caf/fmradio/FMStats;)V

    .line 428
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$1;->this$0:Lcom/caf/fmradio/FMStats;

    #calls: Lcom/caf/fmradio/FMStats;->enableBandSweepSetting()V
    invoke-static {v1}, Lcom/caf/fmradio/FMStats;->access$900(Lcom/caf/fmradio/FMStats;)V

    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
