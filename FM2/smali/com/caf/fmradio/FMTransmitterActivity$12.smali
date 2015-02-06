.class Lcom/caf/fmradio/FMTransmitterActivity$12;
.super Ljava/lang/Object;
.source "FMTransmitterActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 755
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterActivity$12;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "view"

    .prologue
    .line 757
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 758
    .local v2, indexInteger:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 759
    .local v1, index:I
    if-ltz v1, :cond_0

    const/4 v3, 0x7

    if-gt v1, v3, :cond_0

    .line 760
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$12;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mPresetFrequencies:[I
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterActivity;->access$300(Lcom/caf/fmradio/FMTransmitterActivity;)[I

    move-result-object v3

    aget v0, v3, v1

    .line 761
    .local v0, frequency:I
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$12;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #setter for: Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtonIndex:I
    invoke-static {v3, v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$202(Lcom/caf/fmradio/FMTransmitterActivity;I)I

    .line 762
    if-lez v0, :cond_1

    .line 763
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$12;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/caf/fmradio/FMTransmitterActivity;->showDialog(I)V

    .line 771
    .end local v0           #frequency:I
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 764
    .restart local v0       #frequency:I
    :cond_1
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$12;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-static {}, Lcom/caf/fmradio/FMTransmitterActivity;->access$500()I

    move-result v4

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->stationExists(I)Z
    invoke-static {v3, v4}, Lcom/caf/fmradio/FMTransmitterActivity;->access$600(Lcom/caf/fmradio/FMTransmitterActivity;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 765
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$12;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mPresetFrequencies:[I
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterActivity;->access$300(Lcom/caf/fmradio/FMTransmitterActivity;)[I

    move-result-object v3

    invoke-static {}, Lcom/caf/fmradio/FMTransmitterActivity;->access$500()I

    move-result v4

    aput v4, v3, v1

    .line 766
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$12;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mAnimation:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1000(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 767
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$12;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->setupPresetLayout()V
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterActivity;->access$700(Lcom/caf/fmradio/FMTransmitterActivity;)V

    .line 768
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$12;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-virtual {v3}, Lcom/caf/fmradio/FMTransmitterActivity;->SavePreferences()V

    goto :goto_0
.end method
