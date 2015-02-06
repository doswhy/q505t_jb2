.class Lcom/caf/fmradio/FMTransmitterActivity$24;
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
    .line 1546
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterActivity$24;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1548
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$24;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioOnOffButton()V
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$4200(Lcom/caf/fmradio/FMTransmitterActivity;)V

    .line 1550
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$24;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->isFmOn()Z
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1100(Lcom/caf/fmradio/FMTransmitterActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1551
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$24;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioOnOffUI(Z)V
    invoke-static {v0, v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$3500(Lcom/caf/fmradio/FMTransmitterActivity;Z)V

    .line 1553
    sput-boolean v1, Lcom/caf/fmradio/FMTransmitterActivity;->mUpdatePickerValue:Z

    .line 1554
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$24;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->LoadPreferences()V

    .line 1555
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$24;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-static {}, Lcom/caf/fmradio/FMTransmitterActivity;->access$500()I

    move-result v1

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->tuneRadio(I)V
    invoke-static {v0, v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$400(Lcom/caf/fmradio/FMTransmitterActivity;I)V

    .line 1564
    :goto_0
    return-void

    .line 1558
    :cond_0
    invoke-static {}, Lcom/caf/fmradio/FMTransmitterActivity;->access$500()I

    move-result v0

    invoke-static {v0}, Lcom/caf/fmradio/FmSharedPreferences;->setTunedFrequency(I)V

    .line 1559
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$24;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->SavePreferences()V

    .line 1560
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$24;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-virtual {v0, v1}, Lcom/caf/fmradio/FMTransmitterActivity;->removeDialog(I)V

    .line 1561
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$24;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    const/4 v1, 0x0

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioOnOffUI(Z)V
    invoke-static {v0, v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$3500(Lcom/caf/fmradio/FMTransmitterActivity;Z)V

    goto :goto_0
.end method
