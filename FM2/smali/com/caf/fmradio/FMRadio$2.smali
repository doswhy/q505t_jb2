.class Lcom/caf/fmradio/FMRadio$2;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 788
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$2;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 790
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$2;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->isRecording()Z
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$100(Lcom/caf/fmradio/FMRadio;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 795
    const-wide/16 v3, 0x1f4

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 796
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 797
    .local v2, statusUpdate:Landroid/os/Message;
    const/16 v3, 0x1004

    iput v3, v2, Landroid/os/Message;->what:I

    .line 798
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$2;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mUIUpdateHandlerHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$200(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$2;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->isRecording()Z
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$100(Lcom/caf/fmradio/FMRadio;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 804
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 805
    .local v1, finished:Landroid/os/Message;
    const/16 v3, 0x1003

    iput v3, v1, Landroid/os/Message;->what:I

    .line 806
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$2;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mUIUpdateHandlerHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$200(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 799
    .end local v1           #finished:Landroid/os/Message;
    .end local v2           #statusUpdate:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 809
    :cond_1
    return-void
.end method
