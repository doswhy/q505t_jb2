.class final Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;
.super Landroid/os/Handler;
.source "FMTransmitterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FMTransmitterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScrollerText"
.end annotation


# instance fields
.field mIteration:I

.field mOriginalString:Ljava/lang/String;

.field private mStatus:B

.field mStringlength:I

.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/caf/fmradio/FMTransmitterActivity;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/FMTransmitterActivity;Landroid/widget/TextView;)V
    .locals 2
    .parameter
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 1297
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1292
    const/16 v0, 0x51

    iput-byte v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->mStatus:B

    .line 1294
    iput v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->mStringlength:I

    .line 1295
    iput v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->mIteration:I

    .line 1298
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->mView:Ljava/lang/ref/WeakReference;

    .line 1299
    return-void
.end method

.method private resetScroll()V
    .locals 2

    .prologue
    .line 1370
    const/4 v1, 0x0

    iput v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->mIteration:I

    .line 1371
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1372
    .local v0, textView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 1373
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->mOriginalString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1375
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/16 v1, 0x53

    .line 1306
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1320
    :cond_0
    :goto_0
    return-void

    .line 1308
    :pswitch_0
    iput-byte v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->mStatus:B

    .line 1309
    invoke-virtual {p0}, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->updateText()V

    goto :goto_0

    .line 1312
    :pswitch_1
    invoke-virtual {p0}, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->updateText()V

    goto :goto_0

    .line 1315
    :pswitch_2
    iget-byte v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->mStatus:B

    if-ne v0, v1, :cond_0

    .line 1316
    invoke-virtual {p0}, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->startScroll()V

    goto :goto_0

    .line 1306
    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method startScroll()V
    .locals 4

    .prologue
    .line 1382
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1383
    .local v0, textView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 1384
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->mOriginalString:Ljava/lang/String;

    .line 1385
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->mOriginalString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->mStringlength:I

    .line 1386
    iget v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->mStringlength:I

    if-lez v1, :cond_0

    .line 1387
    const/16 v1, 0x52

    iput-byte v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->mStatus:B

    .line 1388
    const/16 v1, 0xf1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->sendEmptyMessageDelayed(IJ)Z

    .line 1392
    :cond_0
    return-void
.end method

.method stopScroll()V
    .locals 1

    .prologue
    .line 1358
    const/16 v0, 0x51

    iput-byte v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->mStatus:B

    .line 1359
    const/16 v0, 0xf2

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->removeMessages(I)V

    .line 1360
    const/16 v0, 0xf3

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->removeMessages(I)V

    .line 1361
    const/16 v0, 0xf1

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->removeMessages(I)V

    .line 1362
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->resetScroll()V

    .line 1363
    return-void
.end method

.method updateText()V
    .locals 5

    .prologue
    const/16 v4, 0xf2

    .line 1329
    iget-byte v2, p0, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->mStatus:B

    const/16 v3, 0x53

    if-eq v2, v3, :cond_1

    .line 1352
    :cond_0
    :goto_0
    return-void

    .line 1333
    :cond_1
    invoke-virtual {p0, v4}, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->removeMessages(I)V

    .line 1335
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1336
    .local v1, textView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 1337
    const-string v0, ""

    .line 1338
    .local v0, szStr2:Ljava/lang/String;
    iget v2, p0, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->mStringlength:I

    if-lez v2, :cond_2

    .line 1339
    iget v2, p0, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->mIteration:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->mIteration:I

    .line 1340
    iget v2, p0, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->mIteration:I

    iget v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->mStringlength:I

    if-lt v2, v3, :cond_3

    .line 1341
    const/4 v2, 0x0

    iput v2, p0, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->mIteration:I

    .line 1342
    const/16 v2, 0xf3

    const-wide/16 v3, 0xbb8

    invoke-virtual {p0, v2, v3, v4}, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->sendEmptyMessageDelayed(IJ)Z

    .line 1348
    :goto_1
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->mOriginalString:Ljava/lang/String;

    iget v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->mIteration:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1350
    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1345
    :cond_3
    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v4, v2, v3}, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method
