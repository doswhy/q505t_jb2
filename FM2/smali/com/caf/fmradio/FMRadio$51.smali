.class Lcom/caf/fmradio/FMRadio$51;
.super Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;
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
    .line 3023
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$51;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct {p0}, Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlternateFrequencyChanged()V
    .locals 2

    .prologue
    .line 3067
    const-string v0, "FMRadio"

    const-string v1, "mServiceCallbacks.onAlternateFrequencyChanged :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3068
    return-void
.end method

.method public onAudioUpdate(Z)V
    .locals 3
    .parameter "bStereo"

    .prologue
    .line 3089
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getAudioOutputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3090
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$51;->this$0:Lcom/caf/fmradio/FMRadio;

    const/4 v1, 0x1

    #setter for: Lcom/caf/fmradio/FMRadio;->mStereo:I
    invoke-static {v0, v1}, Lcom/caf/fmradio/FMRadio;->access$6102(Lcom/caf/fmradio/FMRadio;I)I

    .line 3094
    :goto_0
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mServiceCallbacks.onAudioUpdate :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/caf/fmradio/FMRadio$51;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mStereo:I
    invoke-static {v2}, Lcom/caf/fmradio/FMRadio;->access$6100(Lcom/caf/fmradio/FMRadio;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3095
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$51;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$000(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$51;->this$0:Lcom/caf/fmradio/FMRadio;

    iget-object v1, v1, Lcom/caf/fmradio/FMRadio;->mOnStereo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3096
    return-void

    .line 3092
    :cond_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$51;->this$0:Lcom/caf/fmradio/FMRadio;

    const/4 v1, 0x2

    #setter for: Lcom/caf/fmradio/FMRadio;->mStereo:I
    invoke-static {v0, v1}, Lcom/caf/fmradio/FMRadio;->access$6102(Lcom/caf/fmradio/FMRadio;I)I

    goto :goto_0
.end method

.method public onDisabled()V
    .locals 2

    .prologue
    .line 3029
    const-string v0, "FMRadio"

    const-string v1, "mServiceCallbacks.onDisabled :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3030
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$51;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$000(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$51;->this$0:Lcom/caf/fmradio/FMRadio;

    iget-object v1, v1, Lcom/caf/fmradio/FMRadio;->mRadioDisabled:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3031
    return-void
.end method

.method public onEnabled()V
    .locals 2

    .prologue
    .line 3025
    const-string v0, "FMRadio"

    const-string v1, "mServiceCallbacks.onEnabled :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$51;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$000(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$51;->this$0:Lcom/caf/fmradio/FMRadio;

    iget-object v1, v1, Lcom/caf/fmradio/FMRadio;->mRadioEnabled:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3027
    return-void
.end method

.method public onExtenRadioTextChanged()V
    .locals 2

    .prologue
    .line 3064
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$51;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$000(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$51;->this$0:Lcom/caf/fmradio/FMRadio;

    iget-object v1, v1, Lcom/caf/fmradio/FMRadio;->mUpdateExtenRadioText:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3065
    return-void
.end method

.method public onMute(Z)V
    .locals 3
    .parameter "bMuted"

    .prologue
    .line 3085
    const-string v0, "FMRadio"

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

    .line 3086
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$51;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$000(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$51;->this$0:Lcom/caf/fmradio/FMRadio;

    iget-object v1, v1, Lcom/caf/fmradio/FMRadio;->mOnMute:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3087
    return-void
.end method

.method public onProgramServiceChanged()V
    .locals 2

    .prologue
    .line 3056
    const-string v0, "FMRadio"

    const-string v1, "mServiceCallbacks.onProgramServiceChanged :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$51;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$000(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$51;->this$0:Lcom/caf/fmradio/FMRadio;

    iget-object v1, v1, Lcom/caf/fmradio/FMRadio;->mUpdateProgramService:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3058
    return-void
.end method

.method public onRadioReset()V
    .locals 2

    .prologue
    .line 3033
    const-string v0, "FMRadio"

    const-string v1, "mServiceCallbacks.onRadioReset :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3034
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$51;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$000(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$51;->this$0:Lcom/caf/fmradio/FMRadio;

    iget-object v1, v1, Lcom/caf/fmradio/FMRadio;->mRadioReset:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3035
    return-void
.end method

.method public onRadioTextChanged()V
    .locals 2

    .prologue
    .line 3060
    const-string v0, "FMRadio"

    const-string v1, "mServiceCallbacks.onRadioTextChanged :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$51;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$000(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$51;->this$0:Lcom/caf/fmradio/FMRadio;

    iget-object v1, v1, Lcom/caf/fmradio/FMRadio;->mUpdateRadioText:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3062
    return-void
.end method

.method public onRecordingStarted()V
    .locals 2

    .prologue
    .line 3114
    const-string v0, "FMRadio"

    const-string v1, "mServiceCallbacks.onRecordingStarted:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3115
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$51;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->startRecordingTimer()V
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$7600(Lcom/caf/fmradio/FMRadio;)V

    .line 3116
    return-void
.end method

.method public onRecordingStopped()V
    .locals 2

    .prologue
    .line 3109
    const-string v0, "FMRadio"

    const-string v1, "mServiceCallbacks.onRecordingStopped:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3110
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$51;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->stopRecording()V
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$3100(Lcom/caf/fmradio/FMRadio;)V

    .line 3111
    return-void
.end method

.method public onSearchComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3073
    const-string v0, "FMRadio"

    const-string v1, "mServiceCallbacks.onSearchComplete :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3074
    invoke-static {v2}, Lcom/caf/fmradio/FMRadio;->access$5702(I)I

    .line 3075
    invoke-static {v2}, Lcom/caf/fmradio/FMRadio;->access$502(I)I

    .line 3076
    invoke-static {v2}, Lcom/caf/fmradio/FMRadio;->access$5802(Z)Z

    .line 3077
    invoke-static {v2}, Lcom/caf/fmradio/FMRadio;->access$5902(Z)Z

    .line 3078
    invoke-static {v2}, Lcom/caf/fmradio/FMRadio;->access$6002(Z)Z

    .line 3079
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$51;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$000(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$51;->this$0:Lcom/caf/fmradio/FMRadio;

    iget-object v1, v1, Lcom/caf/fmradio/FMRadio;->mSearchComplete:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3080
    return-void
.end method

.method public onSearchListComplete()V
    .locals 2

    .prologue
    .line 3082
    const-string v0, "FMRadio"

    const-string v1, "mServiceCallbacks.onSearchListComplete :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3083
    return-void
.end method

.method public onSignalStrengthChanged()V
    .locals 2

    .prologue
    .line 3070
    const-string v0, "FMRadio"

    const-string v1, "mServiceCallbacks.onSignalStrengthChanged :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    return-void
.end method

.method public onStationRDSSupported(Z)V
    .locals 3
    .parameter "bRDSSupported"

    .prologue
    .line 3098
    const-string v0, "FMRadio"

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

    .line 3104
    if-eqz p1, :cond_0

    .line 3105
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$51;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mTunedStation:Lcom/caf/fmradio/PresetStation;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$900(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/PresetStation;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/caf/fmradio/PresetStation;->setRDSSupported(Z)V

    .line 3107
    :cond_0
    return-void
.end method

.method public onTuneStatusChanged()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3037
    const-string v3, "FMRadio"

    const-string v4, "mServiceCallbacks.onTuneStatusChanged: "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    invoke-static {}, Lcom/caf/fmradio/FMRadio;->access$5800()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3039
    const-string v3, "FMRadio"

    const-string v4, "isScanning...................."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3040
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$51;->this$0:Lcom/caf/fmradio/FMRadio;

    const-string v4, "scan_station_list"

    invoke-virtual {v3, v4, v5}, Lcom/caf/fmradio/FMRadio;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3041
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3042
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "number_of_stations"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 3043
    .local v2, station_number:I
    add-int/lit8 v2, v2, 0x1

    .line 3044
    const-string v3, "number_of_stations"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3045
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name_of_station"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3046
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frequency_of_station"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getTunedFrequency()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3048
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3050
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #sp:Landroid/content/SharedPreferences;
    .end local v2           #station_number:I
    :cond_0
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$51;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->cleanupTimeoutHandler()V
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$1600(Lcom/caf/fmradio/FMRadio;)V

    .line 3051
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$51;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$000(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/caf/fmradio/FMRadio$51;->this$0:Lcom/caf/fmradio/FMRadio;

    iget-object v4, v4, Lcom/caf/fmradio/FMRadio;->mUpdateStationInfo:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3052
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$51;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$000(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/caf/fmradio/FMRadio$51;->this$0:Lcom/caf/fmradio/FMRadio;

    iget-object v4, v4, Lcom/caf/fmradio/FMRadio;->mOnStereo:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3053
    return-void
.end method
