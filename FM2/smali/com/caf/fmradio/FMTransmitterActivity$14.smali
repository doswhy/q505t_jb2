.class Lcom/caf/fmradio/FMTransmitterActivity$14;
.super Ljava/lang/Object;
.source "FMTransmitterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 790
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterActivity$14;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const-wide/16 v2, 0x0

    .line 793
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$14;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->isFmOn()Z
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1100(Lcom/caf/fmradio/FMTransmitterActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$14;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1300(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$14;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1200(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 795
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$14;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->disableRadioHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1500(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$14;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->disableRadioTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1400(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 796
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$14;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->disableRadioHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1500(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$14;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->disableRadioTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1400(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 802
    :goto_0
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$14;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->setTurnOnOffButtonImage()V
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1600(Lcom/caf/fmradio/FMTransmitterActivity;)V

    .line 803
    return-void

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$14;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1300(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$14;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1200(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 799
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$14;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->disableRadioHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1500(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$14;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->disableRadioTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1400(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 800
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$14;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1300(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$14;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1200(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
