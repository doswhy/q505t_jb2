.class Lcom/caf/fmradio/FMRadio$34;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1615
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$34;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1617
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$34;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mOnOffButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$3500(Lcom/caf/fmradio/FMRadio;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1618
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$34;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mOnOffButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$3500(Lcom/caf/fmradio/FMRadio;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1619
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$34;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mOnOffButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$3500(Lcom/caf/fmradio/FMRadio;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1620
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$34;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->isFmOn()Z
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$3800(Lcom/caf/fmradio/FMRadio;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1621
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$34;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mEnableRadioHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$3900(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$34;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mEnableRadioTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadio;->access$2400(Lcom/caf/fmradio/FMRadio;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1622
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$34;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mDisableRadioHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$4100(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$34;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mDisableRadioTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadio;->access$4000(Lcom/caf/fmradio/FMRadio;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1623
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$34;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mDisableRadioHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$4100(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$34;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mDisableRadioTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadio;->access$4000(Lcom/caf/fmradio/FMRadio;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1629
    :goto_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$34;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->cleanupTimeoutHandler()V
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$1600(Lcom/caf/fmradio/FMRadio;)V

    .line 1630
    return-void

    .line 1625
    :cond_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$34;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mDisableRadioHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$4100(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$34;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mDisableRadioTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadio;->access$4000(Lcom/caf/fmradio/FMRadio;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1626
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$34;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mEnableRadioHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$3900(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$34;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mEnableRadioTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadio;->access$2400(Lcom/caf/fmradio/FMRadio;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1627
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$34;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mEnableRadioHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$3900(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$34;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mEnableRadioTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadio;->access$2400(Lcom/caf/fmradio/FMRadio;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
