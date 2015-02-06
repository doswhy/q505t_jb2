.class Lcom/caf/fmradio/FMTransmitterActivity$11;
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
    .line 726
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterActivity$11;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 728
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 729
    .local v1, indexInteger:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 730
    .local v0, index:I
    if-ltz v0, :cond_0

    const/4 v2, 0x7

    if-gt v0, v2, :cond_0

    .line 731
    const-string v2, "FMTransmitterActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "station - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterActivity$11;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mPresetFrequencies:[I
    invoke-static {v2}, Lcom/caf/fmradio/FMTransmitterActivity;->access$300(Lcom/caf/fmradio/FMTransmitterActivity;)[I

    move-result-object v2

    aget v2, v2, v0

    if-eqz v2, :cond_0

    .line 733
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterActivity$11;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mPresetFrequencies:[I
    invoke-static {v2}, Lcom/caf/fmradio/FMTransmitterActivity;->access$300(Lcom/caf/fmradio/FMTransmitterActivity;)[I

    move-result-object v2

    aget v2, v2, v0

    invoke-static {v2}, Lcom/caf/fmradio/FMTransmitterActivity;->access$502(I)I

    .line 734
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterActivity$11;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-static {}, Lcom/caf/fmradio/FMTransmitterActivity;->access$500()I

    move-result v3

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->tuneRadio(I)V
    invoke-static {v2, v3}, Lcom/caf/fmradio/FMTransmitterActivity;->access$400(Lcom/caf/fmradio/FMTransmitterActivity;I)V

    .line 735
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterActivity$11;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mAnimation:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1000(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 738
    :cond_0
    return-void
.end method
