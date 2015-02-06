.class Lcom/caf/fmradio/FMRadio$35;
.super Landroid/os/Handler;
.source "FMRadio.java"


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
    .line 2302
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$35;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x1

    .line 2304
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v7, :cond_1

    .line 2305
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$35;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$4200(Lcom/caf/fmradio/FMRadio;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2306
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$35;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mTunedStation:Lcom/caf/fmradio/PresetStation;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$900(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/PresetStation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caf/fmradio/PresetStation;->getFrequency()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x408f400000000000L

    div-double v0, v3, v5

    .line 2307
    .local v0, frequency:D
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$35;->this$0:Lcom/caf/fmradio/FMRadio;

    const v4, 0x7f06001b

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/caf/fmradio/FMRadio;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2308
    .local v2, titleStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$35;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$4200(Lcom/caf/fmradio/FMRadio;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2319
    .end local v0           #frequency:D
    .end local v2           #titleStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2310
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_2

    .line 2311
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$35;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mSearchProgressHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$4300(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2312
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$35;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mSearchProgressHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$4300(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 2313
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$35;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mSearchProgressHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$4300(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2314
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$35;->this$0:Lcom/caf/fmradio/FMRadio;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/caf/fmradio/FMRadio;->removeDialog(I)V

    .line 2315
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$35;->this$0:Lcom/caf/fmradio/FMRadio;

    const/4 v4, 0x0

    #setter for: Lcom/caf/fmradio/FMRadio;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3, v4}, Lcom/caf/fmradio/FMRadio;->access$4202(Lcom/caf/fmradio/FMRadio;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0

    .line 2316
    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v5, :cond_0

    .line 2317
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$35;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->cancelSearch()V
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$1500(Lcom/caf/fmradio/FMRadio;)V

    goto :goto_0
.end method
