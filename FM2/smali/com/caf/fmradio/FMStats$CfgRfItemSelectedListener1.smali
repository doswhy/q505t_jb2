.class public Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;
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
    name = "CfgRfItemSelectedListener1"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/fmradio/FMStats;


# direct methods
.method public constructor <init>(Lcom/caf/fmradio/FMStats;)V
    .locals 0
    .parameter

    .prologue
    .line 842
    iput-object p1, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    const v6, 0x7f06009a

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 845
    const-string v1, "Table"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemSelected is hit with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v1, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    const v3, 0x7f090022

    invoke-virtual {v1, v3}, Lcom/caf/fmradio/FMStats;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    .line 847
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v1, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    const v3, 0x7f090021

    invoke-virtual {v1, v3}, Lcom/caf/fmradio/FMStats;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    .line 848
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    const v2, 0x7f090023

    invoke-virtual {v1, v2}, Lcom/caf/fmradio/FMStats;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 849
    .local v0, SetButton:Landroid/widget/Button;
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v1, v1, Lcom/caf/fmradio/FMStats;->tLayout:Landroid/widget/TableLayout;

    invoke-virtual {v1, v5}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 850
    packed-switch p3, :pswitch_data_0

    .line 902
    :cond_0
    :goto_0
    return-void

    .line 853
    :pswitch_0
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v1, v1, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 854
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v1, v1, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setText(I)V

    .line 855
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v1, v1, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 857
    :cond_1
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v1, v1, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 858
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v1, v1, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    const v2, 0x7f06009d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 859
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v1, v1, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 861
    :cond_2
    if-eqz v0, :cond_0

    .line 862
    const v1, 0x7f060098

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 863
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 864
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mOnSetRmssitListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/caf/fmradio/FMStats;->access$1200(Lcom/caf/fmradio/FMStats;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 868
    :pswitch_1
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v1, v1, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    if-eqz v1, :cond_3

    .line 869
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v1, v1, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setText(I)V

    .line 870
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v1, v1, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 872
    :cond_3
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v1, v1, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 873
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v1, v1, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    const v2, 0x7f06009e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 874
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v1, v1, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 876
    :cond_4
    if-eqz v0, :cond_0

    .line 877
    const v1, 0x7f060099

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 878
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 879
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mOnSetSigThListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/caf/fmradio/FMStats;->access$1300(Lcom/caf/fmradio/FMStats;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 883
    :pswitch_2
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v1, v1, Lcom/caf/fmradio/FMStats;->tLayout:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->removeAllViewsInLayout()V

    .line 884
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    const/16 v2, 0x12c

    #setter for: Lcom/caf/fmradio/FMStats;->mNewRowIds:I
    invoke-static {v1, v2}, Lcom/caf/fmradio/FMStats;->access$1402(Lcom/caf/fmradio/FMStats;I)I

    .line 885
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v1, v1, Lcom/caf/fmradio/FMStats;->tLayout:Landroid/widget/TableLayout;

    invoke-virtual {v1, v4}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 886
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v1, v1, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    if-eqz v1, :cond_5

    .line 887
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v1, v1, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 889
    :cond_5
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v1, v1, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 890
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v1, v1, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 892
    :cond_6
    if-eqz v0, :cond_7

    .line 893
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 895
    :cond_7
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v1, v1, Lcom/caf/fmradio/FMStats;->adaptRfCfg:Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 897
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v1, v1, Lcom/caf/fmradio/FMStats;->spinOptionFmRf:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->adaptRfCfg:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 898
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v1, v1, Lcom/caf/fmradio/FMStats;->spinOptionFmRf:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->mSpinRfCfgListener:Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto/16 :goto_0

    .line 850
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
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
    .line 906
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
