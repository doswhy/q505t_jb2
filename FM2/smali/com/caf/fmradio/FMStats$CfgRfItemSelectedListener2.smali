.class public Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;
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
    name = "CfgRfItemSelectedListener2"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/fmradio/FMStats;


# direct methods
.method public constructor <init>(Lcom/caf/fmradio/FMStats;)V
    .locals 0
    .parameter

    .prologue
    .line 909
    iput-object p1, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    const/16 v9, 0x7f

    const/16 v8, -0x80

    const v7, 0x7f06009a

    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 912
    const-string v2, "Table"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemSelected is hit with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    const v1, 0x7fffffff

    .line 914
    .local v1, ret:I
    iget-object v3, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    const v4, 0x7f090022

    invoke-virtual {v2, v4}, Lcom/caf/fmradio/FMStats;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v3, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    .line 915
    iget-object v3, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    const v4, 0x7f090021

    invoke-virtual {v2, v4}, Lcom/caf/fmradio/FMStats;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    .line 916
    iget-object v3, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    const v4, 0x7f090024

    invoke-virtual {v2, v4}, Lcom/caf/fmradio/FMStats;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v3, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    .line 917
    iget-object v3, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    const v4, 0x7f090025

    invoke-virtual {v2, v4}, Lcom/caf/fmradio/FMStats;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v3, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    .line 918
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    const v3, 0x7f090023

    invoke-virtual {v2, v3}, Lcom/caf/fmradio/FMStats;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 919
    .local v0, SetButton:Landroid/widget/Button;
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tLayout:Landroid/widget/TableLayout;

    invoke-virtual {v2, v5}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 920
    packed-switch p3, :pswitch_data_0

    .line 1458
    :cond_0
    :goto_0
    return-void

    .line 923
    :pswitch_0
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 924
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(I)V

    .line 925
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 927
    :cond_1
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 928
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    const v3, 0x7f06009f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 929
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 931
    :cond_2
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    if-eqz v2, :cond_3

    .line 932
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 934
    :cond_3
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    if-eqz v2, :cond_4

    .line 935
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 937
    :cond_4
    if-eqz v0, :cond_0

    .line 938
    const v2, 0x7f0600a0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 939
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 940
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mOnSetSinrSmplCntListener:Landroid/view/View$OnClickListener;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$1500(Lcom/caf/fmradio/FMStats;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 944
    :pswitch_1
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    if-eqz v2, :cond_5

    .line 945
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(I)V

    .line 946
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 948
    :cond_5
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 949
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    const v3, 0x7f0600a1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 950
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 952
    :cond_6
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    if-eqz v2, :cond_7

    .line 953
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 955
    :cond_7
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    if-eqz v2, :cond_8

    .line 956
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 958
    :cond_8
    if-eqz v0, :cond_0

    .line 959
    const v2, 0x7f0600a2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 960
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 961
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mOnSetSinrThListener:Landroid/view/View$OnClickListener;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$1600(Lcom/caf/fmradio/FMStats;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 965
    :pswitch_2
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    if-eqz v2, :cond_9

    .line 966
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(I)V

    .line 967
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 969
    :cond_9
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    if-eqz v2, :cond_a

    .line 970
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    const v3, 0x7f0600a3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 971
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 973
    :cond_a
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    if-eqz v2, :cond_b

    .line 974
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 976
    :cond_b
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    if-eqz v2, :cond_c

    .line 977
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 979
    :cond_c
    if-eqz v0, :cond_0

    .line 980
    const v2, 0x7f0600a4

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 981
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 982
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mOnSetIntfLowThListener:Landroid/view/View$OnClickListener;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$1700(Lcom/caf/fmradio/FMStats;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 986
    :pswitch_3
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    if-eqz v2, :cond_d

    .line 987
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(I)V

    .line 988
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 990
    :cond_d
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    if-eqz v2, :cond_e

    .line 991
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    const v3, 0x7f0600a5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 992
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 994
    :cond_e
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    if-eqz v2, :cond_f

    .line 995
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 997
    :cond_f
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    if-eqz v2, :cond_10

    .line 998
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1000
    :cond_10
    if-eqz v0, :cond_0

    .line 1001
    const v2, 0x7f0600a6

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 1002
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1003
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mOnSetIntfHighThListener:Landroid/view/View$OnClickListener;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$1800(Lcom/caf/fmradio/FMStats;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1007
    :pswitch_4
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    if-eqz v2, :cond_11

    .line 1008
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(I)V

    .line 1009
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1011
    :cond_11
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    if-eqz v2, :cond_12

    .line 1012
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    const v3, 0x7f0600ad

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1013
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1015
    :cond_12
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    if-eqz v2, :cond_13

    .line 1016
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1018
    :cond_13
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    if-eqz v2, :cond_14

    .line 1019
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1021
    :cond_14
    if-eqz v0, :cond_0

    .line 1022
    const v2, 0x7f0600ae

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 1023
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1024
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mOnSetSinrFirstStageListener:Landroid/view/View$OnClickListener;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$1900(Lcom/caf/fmradio/FMStats;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1028
    :pswitch_5
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    if-eqz v2, :cond_15

    .line 1029
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(I)V

    .line 1030
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1032
    :cond_15
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    if-eqz v2, :cond_16

    .line 1033
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    const v3, 0x7f0600af

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1034
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1036
    :cond_16
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    if-eqz v2, :cond_17

    .line 1037
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1039
    :cond_17
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    if-eqz v2, :cond_18

    .line 1040
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1042
    :cond_18
    if-eqz v0, :cond_0

    .line 1043
    const v2, 0x7f0600b0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 1044
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1045
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mOnSetRmssiFirstStageListener:Landroid/view/View$OnClickListener;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$2000(Lcom/caf/fmradio/FMStats;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1049
    :pswitch_6
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    if-eqz v2, :cond_19

    .line 1050
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(I)V

    .line 1051
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1053
    :cond_19
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    if-eqz v2, :cond_1a

    .line 1054
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    const v3, 0x7f0600b1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1055
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1057
    :cond_1a
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    if-eqz v2, :cond_1b

    .line 1058
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1060
    :cond_1b
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    if-eqz v2, :cond_1c

    .line 1061
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1063
    :cond_1c
    if-eqz v0, :cond_0

    .line 1064
    const v2, 0x7f0600b2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 1065
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1066
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mOnSetCFOMeanThListener:Landroid/view/View$OnClickListener;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$2100(Lcom/caf/fmradio/FMStats;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1070
    :pswitch_7
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    if-eqz v2, :cond_1d

    .line 1071
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1073
    :cond_1d
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    if-eqz v2, :cond_1e

    .line 1074
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1076
    :cond_1e
    if-eqz v0, :cond_1f

    .line 1077
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1079
    :cond_1f
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    if-eqz v2, :cond_20

    .line 1080
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    const v3, 0x7f0600b3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 1081
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1082
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    iget-object v3, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mOnSetSearchMPXDCCListener:Landroid/view/View$OnClickListener;
    invoke-static {v3}, Lcom/caf/fmradio/FMStats;->access$2200(Lcom/caf/fmradio/FMStats;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1084
    :cond_20
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 1085
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    const v3, 0x7f0600b4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 1086
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1087
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    iget-object v3, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mOnSetSearchSinrIntfListener:Landroid/view/View$OnClickListener;
    invoke-static {v3}, Lcom/caf/fmradio/FMStats;->access$2300(Lcom/caf/fmradio/FMStats;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1091
    :pswitch_8
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    if-eqz v2, :cond_21

    .line 1092
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1094
    :cond_21
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    if-eqz v2, :cond_22

    .line 1095
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1096
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1098
    :cond_22
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    if-eqz v2, :cond_23

    .line 1099
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1101
    :cond_23
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    if-eqz v2, :cond_24

    .line 1102
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1104
    :cond_24
    if-eqz v0, :cond_25

    .line 1105
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1108
    :cond_25
    :try_start_0
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$600(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 1109
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$600(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v2

    invoke-interface {v2}, Lcom/caf/fmradio/IFMRadioService;->getSinrSamplesCnt()I

    move-result v1

    .line 1110
    :cond_26
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get Sinr Samples Count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    if-ltz v1, :cond_0

    const/16 v2, 0xff

    if-gt v1, v2, :cond_0

    .line 1113
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1114
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 1118
    :pswitch_9
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    if-eqz v2, :cond_27

    .line 1119
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1121
    :cond_27
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    if-eqz v2, :cond_28

    .line 1122
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1123
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1125
    :cond_28
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    if-eqz v2, :cond_29

    .line 1126
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1128
    :cond_29
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    if-eqz v2, :cond_2a

    .line 1129
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1131
    :cond_2a
    if-eqz v0, :cond_2b

    .line 1132
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1135
    :cond_2b
    :try_start_1
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$600(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 1136
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$600(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v2

    invoke-interface {v2}, Lcom/caf/fmradio/IFMRadioService;->getSinrTh()I

    move-result v1

    .line 1137
    :cond_2c
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get Sinr Threshold: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    if-lt v1, v8, :cond_0

    if-gt v1, v9, :cond_0

    .line 1140
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1141
    :catch_1
    move-exception v2

    goto/16 :goto_0

    .line 1146
    :pswitch_a
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    if-eqz v2, :cond_2d

    .line 1147
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1149
    :cond_2d
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    if-eqz v2, :cond_2e

    .line 1150
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1151
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1153
    :cond_2e
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    if-eqz v2, :cond_2f

    .line 1154
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1156
    :cond_2f
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    if-eqz v2, :cond_30

    .line 1157
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1159
    :cond_30
    if-eqz v0, :cond_31

    .line 1160
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1163
    :cond_31
    :try_start_2
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$600(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1164
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$600(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v2

    invoke-interface {v2}, Lcom/caf/fmradio/IFMRadioService;->getSinrFirstStage()I

    move-result v1

    .line 1165
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get Sinr First Stage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    if-lt v1, v8, :cond_0

    if-gt v1, v9, :cond_0

    .line 1168
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1170
    :catch_2
    move-exception v2

    goto/16 :goto_0

    .line 1175
    :pswitch_b
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    if-eqz v2, :cond_32

    .line 1176
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1178
    :cond_32
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    if-eqz v2, :cond_33

    .line 1179
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1180
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1182
    :cond_33
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    if-eqz v2, :cond_34

    .line 1183
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1185
    :cond_34
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    if-eqz v2, :cond_35

    .line 1186
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1188
    :cond_35
    if-eqz v0, :cond_36

    .line 1189
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1192
    :cond_36
    :try_start_3
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$600(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1193
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$600(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v2

    invoke-interface {v2}, Lcom/caf/fmradio/IFMRadioService;->getRmssiFirstStage()I

    move-result v1

    .line 1194
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get Rmssi First Stage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    if-lt v1, v8, :cond_0

    if-gt v1, v9, :cond_0

    .line 1197
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1199
    :catch_3
    move-exception v2

    goto/16 :goto_0

    .line 1204
    :pswitch_c
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    if-eqz v2, :cond_37

    .line 1205
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1207
    :cond_37
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    if-eqz v2, :cond_38

    .line 1208
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1209
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1211
    :cond_38
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    if-eqz v2, :cond_39

    .line 1212
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1214
    :cond_39
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    if-eqz v2, :cond_3a

    .line 1215
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1217
    :cond_3a
    if-eqz v0, :cond_3b

    .line 1218
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1221
    :cond_3b
    :try_start_4
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$600(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1222
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$600(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v2

    invoke-interface {v2}, Lcom/caf/fmradio/IFMRadioService;->getCFOMeanTh()I

    move-result v1

    .line 1223
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get CF0 Threshold: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    const/high16 v2, -0x8000

    if-lt v1, v2, :cond_0

    const v2, 0x7fffffff

    if-gt v1, v2, :cond_0

    .line 1226
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 1228
    :catch_4
    move-exception v2

    goto/16 :goto_0

    .line 1233
    :pswitch_d
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    if-eqz v2, :cond_3c

    .line 1234
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1236
    :cond_3c
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    if-eqz v2, :cond_3d

    .line 1237
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1238
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1240
    :cond_3d
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    if-eqz v2, :cond_3e

    .line 1241
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1243
    :cond_3e
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    if-eqz v2, :cond_3f

    .line 1244
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1246
    :cond_3f
    if-eqz v0, :cond_40

    .line 1247
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1250
    :cond_40
    :try_start_5
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$600(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1251
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$600(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v2

    invoke-interface {v2}, Lcom/caf/fmradio/IFMRadioService;->getSearchAlgoType()I

    move-result v1

    .line 1252
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Search Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    if-nez v1, :cond_41

    .line 1254
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    const v3, 0x7f0600b3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 1258
    :catch_5
    move-exception v2

    goto/16 :goto_0

    .line 1255
    :cond_41
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1256
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    const v3, 0x7f0600b4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 1263
    :pswitch_e
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    if-eqz v2, :cond_42

    .line 1264
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(I)V

    .line 1265
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1267
    :cond_42
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    if-eqz v2, :cond_43

    .line 1268
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    const v3, 0x7f0600b5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1269
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1271
    :cond_43
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    if-eqz v2, :cond_44

    .line 1272
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1274
    :cond_44
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    if-eqz v2, :cond_45

    .line 1275
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1277
    :cond_45
    if-eqz v0, :cond_0

    .line 1278
    const v2, 0x7f0600b6

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 1279
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1280
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mOnSetAfJmpRmssiThListener:Landroid/view/View$OnClickListener;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$2400(Lcom/caf/fmradio/FMStats;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1284
    :pswitch_f
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    if-eqz v2, :cond_46

    .line 1285
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(I)V

    .line 1286
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1288
    :cond_46
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    if-eqz v2, :cond_47

    .line 1289
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    const v3, 0x7f0600b7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1290
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1292
    :cond_47
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    if-eqz v2, :cond_48

    .line 1293
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1295
    :cond_48
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    if-eqz v2, :cond_49

    .line 1296
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1298
    :cond_49
    if-eqz v0, :cond_0

    .line 1299
    const v2, 0x7f0600b8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 1300
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1301
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mOnSetGdChRmssiThListener:Landroid/view/View$OnClickListener;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$2500(Lcom/caf/fmradio/FMStats;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1305
    :pswitch_10
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    if-eqz v2, :cond_4a

    .line 1306
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(I)V

    .line 1307
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1309
    :cond_4a
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    if-eqz v2, :cond_4b

    .line 1310
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    const v3, 0x7f0600b9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1311
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1313
    :cond_4b
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    if-eqz v2, :cond_4c

    .line 1314
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1316
    :cond_4c
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    if-eqz v2, :cond_4d

    .line 1317
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1319
    :cond_4d
    if-eqz v0, :cond_0

    .line 1320
    const v2, 0x7f0600ba

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 1321
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1322
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mOnSetAfJmpRmssiSmplsCntListener:Landroid/view/View$OnClickListener;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$2600(Lcom/caf/fmradio/FMStats;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1326
    :pswitch_11
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    if-eqz v2, :cond_4e

    .line 1327
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1329
    :cond_4e
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    if-eqz v2, :cond_4f

    .line 1330
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1331
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1333
    :cond_4f
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    if-eqz v2, :cond_50

    .line 1334
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1336
    :cond_50
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    if-eqz v2, :cond_51

    .line 1337
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1339
    :cond_51
    if-eqz v0, :cond_52

    .line 1340
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1343
    :cond_52
    :try_start_6
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$600(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1344
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$600(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v2

    invoke-interface {v2}, Lcom/caf/fmradio/IFMRadioService;->getAfJmpRmssiTh()I

    move-result v1

    .line 1345
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get Af Jmp Rmssi Th: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    if-ltz v1, :cond_0

    const v2, 0xffff

    if-gt v1, v2, :cond_0

    .line 1348
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 1350
    :catch_6
    move-exception v2

    goto/16 :goto_0

    .line 1355
    :pswitch_12
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    if-eqz v2, :cond_53

    .line 1356
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1358
    :cond_53
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    if-eqz v2, :cond_54

    .line 1359
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1360
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1362
    :cond_54
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    if-eqz v2, :cond_55

    .line 1363
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1365
    :cond_55
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    if-eqz v2, :cond_56

    .line 1366
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1368
    :cond_56
    if-eqz v0, :cond_57

    .line 1369
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1372
    :cond_57
    :try_start_7
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$600(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1373
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$600(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v2

    invoke-interface {v2}, Lcom/caf/fmradio/IFMRadioService;->getGoodChRmssiTh()I

    move-result v1

    .line 1374
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get GoodChRmssi Threshold: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    if-lt v1, v8, :cond_0

    if-gt v1, v9, :cond_0

    .line 1377
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    .line 1379
    :catch_7
    move-exception v2

    goto/16 :goto_0

    .line 1384
    :pswitch_13
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    if-eqz v2, :cond_58

    .line 1385
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1387
    :cond_58
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    if-eqz v2, :cond_59

    .line 1388
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1389
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1391
    :cond_59
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    if-eqz v2, :cond_5a

    .line 1392
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1394
    :cond_5a
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    if-eqz v2, :cond_5b

    .line 1395
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1397
    :cond_5b
    if-eqz v0, :cond_5c

    .line 1398
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1401
    :cond_5c
    :try_start_8
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$600(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1402
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$600(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v2

    invoke-interface {v2}, Lcom/caf/fmradio/IFMRadioService;->getAfJmpRmssiSamplesCnt()I

    move-result v1

    .line 1403
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get AfJmpRmssiSamples count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    if-ltz v1, :cond_0

    const/16 v2, 0xff

    if-gt v1, v2, :cond_0

    .line 1406
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_0

    .line 1408
    :catch_8
    move-exception v2

    goto/16 :goto_0

    .line 1413
    :pswitch_14
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tLayout:Landroid/widget/TableLayout;

    invoke-virtual {v2}, Landroid/widget/TableLayout;->removeAllViewsInLayout()V

    .line 1414
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    const/16 v3, 0x12c

    #setter for: Lcom/caf/fmradio/FMStats;->mNewRowIds:I
    invoke-static {v2, v3}, Lcom/caf/fmradio/FMStats;->access$1402(Lcom/caf/fmradio/FMStats;I)I

    .line 1415
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tLayout:Landroid/widget/TableLayout;

    invoke-virtual {v2, v6}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 1416
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    if-eqz v2, :cond_5d

    .line 1417
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1419
    :cond_5d
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    if-eqz v2, :cond_5e

    .line 1420
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1422
    :cond_5e
    if-eqz v0, :cond_5f

    .line 1423
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1425
    :cond_5f
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    if-eqz v2, :cond_60

    .line 1426
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1428
    :cond_60
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    if-eqz v2, :cond_61

    .line 1429
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1431
    :cond_61
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->adaptRfCfg:Landroid/widget/ArrayAdapter;

    const v3, 0x1090009

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1433
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->spinOptionFmRf:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v3, v3, Lcom/caf/fmradio/FMStats;->adaptRfCfg:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1434
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->spinOptionFmRf:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v3, v3, Lcom/caf/fmradio/FMStats;->mSpinRfCfgListener:Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto/16 :goto_0

    .line 1437
    :pswitch_15
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    if-eqz v2, :cond_62

    .line 1438
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(I)V

    .line 1439
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1441
    :cond_62
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    if-eqz v2, :cond_63

    .line 1442
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    const v3, 0x7f0600bc

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1443
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1445
    :cond_63
    if-eqz v0, :cond_64

    .line 1446
    const v2, 0x7f0600bd

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 1447
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1448
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mOnSetRxRePeatCount:Landroid/view/View$OnClickListener;
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$2700(Lcom/caf/fmradio/FMStats;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1450
    :cond_64
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    if-eqz v2, :cond_65

    .line 1451
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button1:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1453
    :cond_65
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 1454
    iget-object v2, p0, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, v2, Lcom/caf/fmradio/FMStats;->button2:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 920
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
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
    .line 1461
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
