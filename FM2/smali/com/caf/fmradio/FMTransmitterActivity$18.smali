.class Lcom/caf/fmradio/FMTransmitterActivity$18;
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
    .line 1164
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterActivity$18;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$18;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->updateSearchProgress()V
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$2200(Lcom/caf/fmradio/FMTransmitterActivity;)V

    .line 1167
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$18;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->resetFMStationInfoUI()V
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$2300(Lcom/caf/fmradio/FMTransmitterActivity;)V

    .line 1168
    return-void
.end method
