.class Lcom/caf/fmradio/FMTransmitterActivity$19;
.super Ljava/lang/Object;
.source "FMTransmitterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FMTransmitterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/fmradio/FMTransmitterActivity;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/FMTransmitterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1171
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterActivity$19;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1173
    const-string v3, "FMTransmitterActivity"

    const-string v4, "mSearchListComplete: "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterActivity;->access$2402(Z)Z

    .line 1176
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$19;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterActivity;->access$2500(Lcom/caf/fmradio/FMTransmitterActivity;)Lcom/caf/fmradio/IFMTransmitterService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1178
    :try_start_0
    invoke-static {}, Lcom/caf/fmradio/FMTransmitterActivity;->access$2600()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1179
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$19;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterActivity;->access$2500(Lcom/caf/fmradio/FMTransmitterActivity;)Lcom/caf/fmradio/IFMTransmitterService;

    move-result-object v3

    invoke-interface {v3}, Lcom/caf/fmradio/IFMTransmitterService;->getSearchList()[I

    move-result-object v1

    .line 1180
    .local v1, searchList:[I
    if-eqz v1, :cond_0

    .line 1181
    const/4 v2, 0x0

    .line 1182
    .local v2, station:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    .line 1183
    const-string v3, "FMTransmitterActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSearchListComplete: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$19;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mPresetFrequencies:[I
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterActivity;->access$300(Lcom/caf/fmradio/FMTransmitterActivity;)[I

    move-result-object v3

    aget v4, v1, v2

    aput v4, v3, v2

    .line 1182
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1189
    .end local v1           #searchList:[I
    .end local v2           #station:I
    :cond_0
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$19;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterActivity;->access$2500(Lcom/caf/fmradio/FMTransmitterActivity;)Lcom/caf/fmradio/IFMTransmitterService;

    move-result-object v3

    invoke-interface {v3}, Lcom/caf/fmradio/IFMTransmitterService;->isHeadsetPlugged()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1190
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$19;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterActivity;->access$2500(Lcom/caf/fmradio/FMTransmitterActivity;)Lcom/caf/fmradio/IFMTransmitterService;

    move-result-object v3

    invoke-interface {v3}, Lcom/caf/fmradio/IFMTransmitterService;->fmRestart()Z

    .line 1192
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$19;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-static {}, Lcom/caf/fmradio/FMTransmitterActivity;->access$500()I

    move-result v4

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->tuneRadio(I)V
    invoke-static {v3, v4}, Lcom/caf/fmradio/FMTransmitterActivity;->access$400(Lcom/caf/fmradio/FMTransmitterActivity;I)V

    .line 1193
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$19;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->updateSearchProgress()V
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterActivity;->access$2200(Lcom/caf/fmradio/FMTransmitterActivity;)V

    .line 1194
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$19;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->resetFMStationInfoUI()V
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterActivity;->access$2300(Lcom/caf/fmradio/FMTransmitterActivity;)V

    .line 1195
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$19;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->setupPresetLayout()V
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterActivity;->access$700(Lcom/caf/fmradio/FMTransmitterActivity;)V

    .line 1196
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$19;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-virtual {v3}, Lcom/caf/fmradio/FMTransmitterActivity;->SavePreferences()V

    .line 1207
    :cond_1
    :goto_1
    return-void

    .line 1198
    :cond_2
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$19;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->updateSearchProgress()V
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterActivity;->access$2200(Lcom/caf/fmradio/FMTransmitterActivity;)V

    .line 1199
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$19;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1300(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/caf/fmradio/FMTransmitterActivity$19;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioTask:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1200(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1200
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$19;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->disableRadioHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1500(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/caf/fmradio/FMTransmitterActivity$19;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->disableRadioTask:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1400(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1201
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$19;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->disableRadioHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1500(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/caf/fmradio/FMTransmitterActivity$19;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->disableRadioTask:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1400(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1203
    :catch_0
    move-exception v0

    .line 1204
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
