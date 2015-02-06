.class Lcom/caf/fmradio/FMTransmitterActivity$3;
.super Ljava/lang/Object;
.source "FMTransmitterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/caf/fmradio/FMTransmitterActivity;->createPresetOptionsDlg(I)Landroid/app/Dialog;
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
    .line 573
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterActivity$3;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "item"

    .prologue
    const/4 v4, -0x1

    .line 575
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$3;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtonIndex:I
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$200(Lcom/caf/fmradio/FMTransmitterActivity;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$3;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtonIndex:I
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$200(Lcom/caf/fmradio/FMTransmitterActivity;)I

    move-result v1

    const/4 v2, 0x7

    if-gt v1, v2, :cond_0

    .line 577
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$3;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mPresetFrequencies:[I
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$300(Lcom/caf/fmradio/FMTransmitterActivity;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterActivity$3;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtonIndex:I
    invoke-static {v2}, Lcom/caf/fmradio/FMTransmitterActivity;->access$200(Lcom/caf/fmradio/FMTransmitterActivity;)I

    move-result v2

    aget v0, v1, v2

    .line 578
    .local v0, frequency:I
    packed-switch p2, :pswitch_data_0

    .line 608
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$3;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #setter for: Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtonIndex:I
    invoke-static {v1, v4}, Lcom/caf/fmradio/FMTransmitterActivity;->access$202(Lcom/caf/fmradio/FMTransmitterActivity;I)I

    .line 613
    .end local v0           #frequency:I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$3;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/caf/fmradio/FMTransmitterActivity;->removeDialog(I)V

    .line 614
    return-void

    .line 581
    .restart local v0       #frequency:I
    :pswitch_0
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$3;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #setter for: Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtonIndex:I
    invoke-static {v1, v4}, Lcom/caf/fmradio/FMTransmitterActivity;->access$202(Lcom/caf/fmradio/FMTransmitterActivity;I)I

    .line 582
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$3;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->tuneRadio(I)V
    invoke-static {v1, v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$400(Lcom/caf/fmradio/FMTransmitterActivity;I)V

    goto :goto_0

    .line 588
    :pswitch_1
    const-string v1, "FMTransmitterActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Replace station - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/caf/fmradio/FMTransmitterActivity;->access$500()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$3;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-static {}, Lcom/caf/fmradio/FMTransmitterActivity;->access$500()I

    move-result v2

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->stationExists(I)Z
    invoke-static {v1, v2}, Lcom/caf/fmradio/FMTransmitterActivity;->access$600(Lcom/caf/fmradio/FMTransmitterActivity;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 591
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$3;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mPresetFrequencies:[I
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$300(Lcom/caf/fmradio/FMTransmitterActivity;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterActivity$3;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtonIndex:I
    invoke-static {v2}, Lcom/caf/fmradio/FMTransmitterActivity;->access$200(Lcom/caf/fmradio/FMTransmitterActivity;)I

    move-result v2

    invoke-static {}, Lcom/caf/fmradio/FMTransmitterActivity;->access$500()I

    move-result v3

    aput v3, v1, v2

    .line 592
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$3;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #setter for: Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtonIndex:I
    invoke-static {v1, v4}, Lcom/caf/fmradio/FMTransmitterActivity;->access$202(Lcom/caf/fmradio/FMTransmitterActivity;I)I

    .line 593
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$3;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->setupPresetLayout()V
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$700(Lcom/caf/fmradio/FMTransmitterActivity;)V

    .line 594
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$3;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-virtual {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->SavePreferences()V

    goto :goto_0

    .line 600
    :pswitch_2
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$3;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mPresetFrequencies:[I
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$300(Lcom/caf/fmradio/FMTransmitterActivity;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterActivity$3;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtonIndex:I
    invoke-static {v2}, Lcom/caf/fmradio/FMTransmitterActivity;->access$200(Lcom/caf/fmradio/FMTransmitterActivity;)I

    move-result v2

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 601
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$3;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #setter for: Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtonIndex:I
    invoke-static {v1, v4}, Lcom/caf/fmradio/FMTransmitterActivity;->access$202(Lcom/caf/fmradio/FMTransmitterActivity;I)I

    .line 602
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$3;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->setupPresetLayout()V
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$700(Lcom/caf/fmradio/FMTransmitterActivity;)V

    .line 603
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$3;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-virtual {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->SavePreferences()V

    goto/16 :goto_0

    .line 578
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
