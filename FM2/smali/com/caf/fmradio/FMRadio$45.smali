.class Lcom/caf/fmradio/FMRadio$45;
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
    .line 2673
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$45;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2675
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$45;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mStereo:I
    invoke-static {v1}, Lcom/caf/fmradio/FMRadio;->access$6100(Lcom/caf/fmradio/FMRadio;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2676
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$45;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mStereoTV:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$6200(Lcom/caf/fmradio/FMRadio;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f060058

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2682
    :goto_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$45;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mStereo:I
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$6100(Lcom/caf/fmradio/FMRadio;)I

    move-result v0

    invoke-static {v0}, Lcom/caf/fmradio/FmSharedPreferences;->setLastAudioMode(I)V

    .line 2683
    return-void

    .line 2677
    :cond_0
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$45;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mStereo:I
    invoke-static {v1}, Lcom/caf/fmradio/FMRadio;->access$6100(Lcom/caf/fmradio/FMRadio;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2678
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$45;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mStereoTV:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$6200(Lcom/caf/fmradio/FMRadio;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f060059

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2680
    :cond_1
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$45;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mStereoTV:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$6200(Lcom/caf/fmradio/FMRadio;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
