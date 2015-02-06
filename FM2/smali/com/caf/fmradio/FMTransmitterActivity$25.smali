.class Lcom/caf/fmradio/FMTransmitterActivity$25;
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
    .line 1567
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterActivity$25;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$25;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->resetSearchProgress()V
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$4300(Lcom/caf/fmradio/FMTransmitterActivity;)V

    .line 1571
    invoke-static {}, Lcom/caf/fmradio/FMTransmitterActivity;->access$500()I

    move-result v0

    invoke-static {v0}, Lcom/caf/fmradio/FmSharedPreferences;->setTunedFrequency(I)V

    .line 1572
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$25;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->SavePreferences()V

    .line 1573
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$25;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    const/4 v1, 0x0

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioOnOffUI(Z)V
    invoke-static {v0, v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$3500(Lcom/caf/fmradio/FMTransmitterActivity;Z)V

    .line 1574
    return-void
.end method
