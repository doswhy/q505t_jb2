.class Lcom/caf/fmradio/FMRadio$28;
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
    .line 1536
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$28;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$28;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mSpeakerButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$2300(Lcom/caf/fmradio/FMRadio;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1541
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$28;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mSpeakerButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$2300(Lcom/caf/fmradio/FMRadio;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1542
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$28;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$000(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$28;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mEnableRadioTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadio;->access$2400(Lcom/caf/fmradio/FMRadio;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1543
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$28;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$000(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$28;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mEnableSpeakerTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadio;->access$2500(Lcom/caf/fmradio/FMRadio;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1544
    return-void
.end method
