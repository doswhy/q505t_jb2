.class Lcom/caf/fmradio/FMRadio$42;
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
    .line 2641
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$42;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2643
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$42;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->cleanupTimeoutHandler()V
    invoke-static {v1}, Lcom/caf/fmradio/FMRadio;->access$1600(Lcom/caf/fmradio/FMRadio;)V

    .line 2644
    new-instance v0, Lcom/caf/fmradio/PresetStation;

    const-string v1, ""

    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getTunedFrequency()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/caf/fmradio/PresetStation;-><init>(Ljava/lang/String;I)V

    .line 2645
    .local v0, station:Lcom/caf/fmradio/PresetStation;
    if-eqz v0, :cond_0

    .line 2646
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$42;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mTunedStation:Lcom/caf/fmradio/PresetStation;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadio;->access$900(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/PresetStation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/caf/fmradio/PresetStation;->Copy(Lcom/caf/fmradio/PresetStation;)V

    .line 2648
    :cond_0
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$42;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->updateSearchProgress()V
    invoke-static {v1}, Lcom/caf/fmradio/FMRadio;->access$5500(Lcom/caf/fmradio/FMRadio;)V

    .line 2649
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$42;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->resetFMStationInfoUI()V
    invoke-static {v1}, Lcom/caf/fmradio/FMRadio;->access$5600(Lcom/caf/fmradio/FMRadio;)V

    .line 2650
    return-void
.end method
