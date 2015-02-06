.class Lcom/caf/fmradio/FMRadioService$9;
.super Ljava/lang/Object;
.source "FMRadioService.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 868
    iput-object p1, p0, Lcom/caf/fmradio/FMRadioService$9;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 871
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 873
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$9;->this$0:Lcom/caf/fmradio/FMRadioService;

    #calls: Lcom/caf/fmradio/FMRadioService;->getRecordServiceStatus()Z
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$1700(Lcom/caf/fmradio/FMRadioService;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 874
    const-string v1, "FMService"

    const-string v2, "FM Recording Service stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$9;->this$0:Lcom/caf/fmradio/FMRadioService;

    const/4 v2, 0x0

    #setter for: Lcom/caf/fmradio/FMRadioService;->mFmRecordingOn:Z
    invoke-static {v1, v2}, Lcom/caf/fmradio/FMRadioService;->access$002(Lcom/caf/fmradio/FMRadioService;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 877
    :try_start_1
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$9;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mServiceInUse:Z
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$100(Lcom/caf/fmradio/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$9;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 878
    const-string v1, "FMService"

    const-string v2, "Callback for stop recording"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$9;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v1

    invoke-interface {v1}, Lcom/caf/fmradio/IFMRadioServiceCallbacks;->onRecordingStopped()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 884
    :cond_0
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$9;->this$0:Lcom/caf/fmradio/FMRadioService;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/caf/fmradio/FMRadioService;->mSampleStart:J

    .line 893
    :cond_1
    :goto_2
    return-void

    .line 881
    :catch_0
    move-exception v0

    .line 882
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 888
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 889
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FMService"

    const-string v2, "RecordService status check thread interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 887
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const-wide/16 v1, 0x1f4

    :try_start_3
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
