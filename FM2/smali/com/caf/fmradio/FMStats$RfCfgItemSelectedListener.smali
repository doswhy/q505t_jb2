.class public Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;
.super Ljava/lang/Object;
.source "FMStats.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FMStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RfCfgItemSelectedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/fmradio/FMStats;


# direct methods
.method public constructor <init>(Lcom/caf/fmradio/FMStats;)V
    .locals 0
    .parameter

    .prologue
    .line 1464
    iput-object p1, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v5, 0x7f09001e

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 1467
    const-string v0, "Table"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemSelected is hit with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v0, v0, Lcom/caf/fmradio/FMStats;->tLayout:Landroid/widget/TableLayout;

    invoke-virtual {v0, v3}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 1469
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    iget-boolean v0, v0, Lcom/caf/fmradio/FMStats;->mTestRunning:Z

    if-eqz v0, :cond_0

    .line 1470
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    #calls: Lcom/caf/fmradio/FMStats;->stopCurTest()V
    invoke-static {v0}, Lcom/caf/fmradio/FMStats;->access$2800(Lcom/caf/fmradio/FMStats;)V

    .line 1471
    :cond_0
    packed-switch p3, :pswitch_data_0

    .line 1512
    :goto_0
    return-void

    .line 1477
    :pswitch_0
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    iput p3, v0, Lcom/caf/fmradio/FMStats;->mTestSelected:I

    .line 1478
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v0, v0, Lcom/caf/fmradio/FMStats;->tLayout:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->removeAllViewsInLayout()V

    .line 1479
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    const/16 v1, 0x12c

    #setter for: Lcom/caf/fmradio/FMStats;->mNewRowIds:I
    invoke-static {v0, v1}, Lcom/caf/fmradio/FMStats;->access$1402(Lcom/caf/fmradio/FMStats;I)I

    .line 1480
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v0, v0, Lcom/caf/fmradio/FMStats;->tLayout:Landroid/widget/TableLayout;

    invoke-virtual {v0, v4}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 1481
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v0, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-virtual {v0, v5}, Lcom/caf/fmradio/FMStats;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/caf/fmradio/FMStats;->RunButton:Landroid/widget/Button;

    .line 1482
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v0, v0, Lcom/caf/fmradio/FMStats;->RunButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1483
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v0, v0, Lcom/caf/fmradio/FMStats;->RunButton:Landroid/widget/Button;

    const v1, 0x7f060097

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1484
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v0, v0, Lcom/caf/fmradio/FMStats;->RunButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1485
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v0, v0, Lcom/caf/fmradio/FMStats;->RunButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mOnRunListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/caf/fmradio/FMStats;->access$2900(Lcom/caf/fmradio/FMStats;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1487
    :cond_1
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    iget v0, v0, Lcom/caf/fmradio/FMStats;->mTestSelected:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1488
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    #calls: Lcom/caf/fmradio/FMStats;->enableBandSweepSetting()V
    invoke-static {v0}, Lcom/caf/fmradio/FMStats;->access$900(Lcom/caf/fmradio/FMStats;)V

    goto :goto_0

    .line 1490
    :cond_2
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    #calls: Lcom/caf/fmradio/FMStats;->disableBandSweepSetting()V
    invoke-static {v0}, Lcom/caf/fmradio/FMStats;->access$200(Lcom/caf/fmradio/FMStats;)V

    goto :goto_0

    .line 1494
    :pswitch_1
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v0, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-virtual {v0, v5}, Lcom/caf/fmradio/FMStats;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/caf/fmradio/FMStats;->RunButton:Landroid/widget/Button;

    .line 1495
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v0, v0, Lcom/caf/fmradio/FMStats;->RunButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 1496
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v0, v0, Lcom/caf/fmradio/FMStats;->RunButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1498
    :cond_3
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v0, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    const v2, 0x7f090020

    invoke-virtual {v0, v2}, Lcom/caf/fmradio/FMStats;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/caf/fmradio/FMStats;->pbar:Landroid/widget/ProgressBar;

    .line 1499
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v0, v0, Lcom/caf/fmradio/FMStats;->pbar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_4

    .line 1500
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v0, v0, Lcom/caf/fmradio/FMStats;->pbar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1502
    :cond_4
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v0, v0, Lcom/caf/fmradio/FMStats;->adaptCfgRf:Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1504
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v0, v0, Lcom/caf/fmradio/FMStats;->spinOptionFmRf:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v1, v1, Lcom/caf/fmradio/FMStats;->adaptCfgRf:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1505
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    #calls: Lcom/caf/fmradio/FMStats;->isTransportLayerSMD()Z
    invoke-static {v0}, Lcom/caf/fmradio/FMStats;->access$3000(Lcom/caf/fmradio/FMStats;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1506
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v0, v0, Lcom/caf/fmradio/FMStats;->spinOptionFmRf:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v1, v1, Lcom/caf/fmradio/FMStats;->mSpinCfgRfListener2:Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1509
    :goto_1
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    #calls: Lcom/caf/fmradio/FMStats;->disableBandSweepSetting()V
    invoke-static {v0}, Lcom/caf/fmradio/FMStats;->access$200(Lcom/caf/fmradio/FMStats;)V

    goto/16 :goto_0

    .line 1508
    :cond_5
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v0, v0, Lcom/caf/fmradio/FMStats;->spinOptionFmRf:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v1, v1, Lcom/caf/fmradio/FMStats;->mSpinCfgRfListener1:Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_1

    .line 1471
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1516
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
