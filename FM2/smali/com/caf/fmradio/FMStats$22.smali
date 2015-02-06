.class Lcom/caf/fmradio/FMStats$22;
.super Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;
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
    .line 2071
    iput-object p1, p0, Lcom/caf/fmradio/FMStats$22;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-direct {p0}, Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlternateFrequencyChanged()V
    .locals 2

    .prologue
    .line 2112
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mServiceCallbacks.onAlternateFrequencyChanged :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    return-void
.end method

.method public onAudioUpdate(Z)V
    .locals 3
    .parameter "bStereo"

    .prologue
    .line 2142
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mServiceCallbacks.onAudioUpdate :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    return-void
.end method

.method public onDisabled()V
    .locals 2

    .prologue
    .line 2080
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mServiceCallbacks.onDisabled :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$22;->this$0:Lcom/caf/fmradio/FMStats;

    #calls: Lcom/caf/fmradio/FMStats;->stopAllOperations()V
    invoke-static {v0}, Lcom/caf/fmradio/FMStats;->access$4800(Lcom/caf/fmradio/FMStats;)V

    .line 2082
    return-void
.end method

.method public onEnabled()V
    .locals 2

    .prologue
    .line 2074
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mServiceCallbacks.onEnabled :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$22;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMStats;->invalidateOptionsMenu()V

    .line 2076
    return-void
.end method

.method public onExtenRadioTextChanged()V
    .locals 2

    .prologue
    .line 2108
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Extended Radio Text changed:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    return-void
.end method

.method public onMute(Z)V
    .locals 3
    .parameter "bMuted"

    .prologue
    .line 2137
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mServiceCallbacks.onMute :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    return-void
.end method

.method public onProgramServiceChanged()V
    .locals 2

    .prologue
    .line 2099
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mServiceCallbacks.onProgramServiceChanged :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    return-void
.end method

.method public onRadioReset()V
    .locals 2

    .prologue
    .line 2086
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mServiceCallbacks.onRadioReset :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$22;->this$0:Lcom/caf/fmradio/FMStats;

    #calls: Lcom/caf/fmradio/FMStats;->stopAllOperations()V
    invoke-static {v0}, Lcom/caf/fmradio/FMStats;->access$4800(Lcom/caf/fmradio/FMStats;)V

    .line 2088
    return-void
.end method

.method public onRadioTextChanged()V
    .locals 2

    .prologue
    .line 2104
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mServiceCallbacks.onRadioTextChanged :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    return-void
.end method

.method public onRecordingStarted()V
    .locals 4

    .prologue
    .line 2160
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mServiceCallbacks.onRecordingStarted:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getRecordDuration()I

    move-result v0

    .line 2162
    .local v0, durationInMins:I
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Fected duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$22;->this$0:Lcom/caf/fmradio/FMStats;

    int-to-long v2, v0

    #calls: Lcom/caf/fmradio/FMStats;->initiateRecordDurationTimer(J)V
    invoke-static {v1, v2, v3}, Lcom/caf/fmradio/FMStats;->access$5100(Lcom/caf/fmradio/FMStats;J)V

    .line 2164
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$22;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-virtual {v1}, Lcom/caf/fmradio/FMStats;->invalidateOptionsMenu()V

    .line 2165
    return-void
.end method

.method public onRecordingStopped()V
    .locals 2

    .prologue
    .line 2151
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mServiceCallbacks.onDisabled :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$22;->this$0:Lcom/caf/fmradio/FMStats;

    #calls: Lcom/caf/fmradio/FMStats;->stopRecording()V
    invoke-static {v0}, Lcom/caf/fmradio/FMStats;->access$4400(Lcom/caf/fmradio/FMStats;)V

    .line 2153
    return-void
.end method

.method public onSearchComplete()V
    .locals 3

    .prologue
    .line 2122
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mServiceCallbacks.onSearchComplete :"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$22;->this$0:Lcom/caf/fmradio/FMStats;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/caf/fmradio/FMStats;->mTestRunning:Z

    .line 2125
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2126
    .local v0, updateStop:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2127
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$22;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mUIUpdateHandlerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/caf/fmradio/FMStats;->access$3300(Lcom/caf/fmradio/FMStats;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2128
    return-void
.end method

.method public onSearchListComplete()V
    .locals 2

    .prologue
    .line 2131
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mServiceCallbacks.onSearchListComplete :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    return-void
.end method

.method public onSignalStrengthChanged()V
    .locals 2

    .prologue
    .line 2117
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mServiceCallbacks.onSignalStrengthChanged :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    return-void
.end method

.method public onStationRDSSupported(Z)V
    .locals 3
    .parameter "bRDSSupported"

    .prologue
    .line 2147
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mServiceCallbacks.onStationRDSSupported :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    return-void
.end method

.method public onTuneStatusChanged()V
    .locals 2

    .prologue
    .line 2092
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mServiceCallbacks.onTuneStatusChanged :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$22;->this$0:Lcom/caf/fmradio/FMStats;

    iget-boolean v0, v0, Lcom/caf/fmradio/FMStats;->mTestRunning:Z

    if-eqz v0, :cond_0

    .line 2094
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$22;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMStats;->access$5000(Lcom/caf/fmradio/FMStats;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMStats$22;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mTuneComplete:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/caf/fmradio/FMStats;->access$4900(Lcom/caf/fmradio/FMStats;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2095
    :cond_0
    return-void
.end method
