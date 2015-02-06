.class Lcom/caf/fmradio/FMRadio$33;
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
    .line 1606
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$33;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1608
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$33;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->disableRadio()V
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$3700(Lcom/caf/fmradio/FMRadio;)V

    .line 1609
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$33;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mOnOffButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$3500(Lcom/caf/fmradio/FMRadio;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1610
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$33;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mOnOffButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$3500(Lcom/caf/fmradio/FMRadio;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1611
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$33;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mOnOffButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$3500(Lcom/caf/fmradio/FMRadio;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$33;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mTurnOnOffClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadio;->access$3600(Lcom/caf/fmradio/FMRadio;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1612
    return-void
.end method
