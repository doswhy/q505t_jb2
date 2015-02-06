.class Lcom/caf/fmradio/FMStats$23;
.super Ljava/lang/Object;
.source "FMStats.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 2170
    iput-object p1, p0, Lcom/caf/fmradio/FMStats$23;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 2172
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$23;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mMultiUpdateThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$500(Lcom/caf/fmradio/FMStats;)Ljava/lang/Thread;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/caf/fmradio/FMStats$23;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mSync:Lcom/caf/fmradio/FMStats$Band;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$5200(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/FMStats$Band;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2174
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$23;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mSync:Lcom/caf/fmradio/FMStats$Band;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$5200(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/FMStats$Band;

    move-result-object v3

    monitor-enter v3

    .line 2175
    :try_start_0
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$23;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mSync:Lcom/caf/fmradio/FMStats$Band;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$5200(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/FMStats$Band;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 2176
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2178
    :cond_0
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$23;->this$0:Lcom/caf/fmradio/FMStats;

    iget v2, v2, Lcom/caf/fmradio/FMStats;->mTestSelected:I

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/caf/fmradio/FMStats$23;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$600(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2181
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2182
    .local v1, updateUI:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2183
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getTunedFrequency()I

    move-result v0

    .line 2184
    .local v0, freq:I
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$23;->this$0:Lcom/caf/fmradio/FMStats;

    #calls: Lcom/caf/fmradio/FMStats;->GetFMStatsForFreq(I)Lcom/caf/fmradio/FMStats$Result;
    invoke-static {v2, v0}, Lcom/caf/fmradio/FMStats;->access$3200(Lcom/caf/fmradio/FMStats;I)Lcom/caf/fmradio/FMStats$Result;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2185
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 2186
    iput v4, v1, Landroid/os/Message;->what:I

    .line 2187
    :cond_1
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$23;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mUIUpdateHandlerHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$3300(Lcom/caf/fmradio/FMStats;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2189
    .end local v0           #freq:I
    .end local v1           #updateUI:Landroid/os/Message;
    :cond_2
    return-void

    .line 2176
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
