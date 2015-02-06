.class Lcom/caf/fmradio/FMTransmitterActivity$17;
.super Landroid/os/Handler;
.source "FMTransmitterActivity.java"


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
    .line 1123
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterActivity$17;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 1125
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_1

    .line 1126
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$17;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1900(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1127
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$17;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mTuneStationFrequencyTV:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$2000(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {}, Lcom/caf/fmradio/FMTransmitterActivity;->access$500()I

    move-result v2

    invoke-static {v2}, Lcom/caf/fmradio/PresetStation;->getFrequencyString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1128
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$17;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    const v2, 0x7f06001b

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/caf/fmradio/FMTransmitterActivity;->access$500()I

    move-result v5

    invoke-static {v5}, Lcom/caf/fmradio/PresetStation;->getFrequencyString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/caf/fmradio/FMTransmitterActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1131
    .local v0, titleStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$17;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1900(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1142
    .end local v0           #titleStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1133
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_2

    .line 1134
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$17;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mSearchProgressHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$2100(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1135
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$17;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mSearchProgressHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$2100(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1136
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$17;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mSearchProgressHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$2100(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1137
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$17;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/caf/fmradio/FMTransmitterActivity;->removeDialog(I)V

    .line 1138
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$17;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    const/4 v2, 0x0

    #setter for: Lcom/caf/fmradio/FMTransmitterActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1902(Lcom/caf/fmradio/FMTransmitterActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0

    .line 1139
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_0

    .line 1140
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$17;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->cancelSearch()V
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$800(Lcom/caf/fmradio/FMTransmitterActivity;)V

    goto :goto_0
.end method
