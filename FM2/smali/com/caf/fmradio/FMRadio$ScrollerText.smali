.class final Lcom/caf/fmradio/FMRadio$ScrollerText;
.super Landroid/os/Handler;
.source "FMRadio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FMRadio;
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

.field final synthetic this$0:Lcom/caf/fmradio/FMRadio;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/FMRadio;Landroid/widget/TextView;)V
    .locals 2
    .parameter
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 2828
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$ScrollerText;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2823
    const/16 v0, 0x51

    iput-byte v0, p0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mStatus:B

    .line 2825
    iput v1, p0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mStringlength:I

    .line 2826
    iput v1, p0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mIteration:I

    .line 2829
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mView:Ljava/lang/ref/WeakReference;

    .line 2830
    return-void
.end method

.method private resetScroll()V
    .locals 2

    .prologue
    .line 2899
    const/4 v1, 0x0

    iput v1, p0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mIteration:I

    .line 2900
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2901
    .local v0, textView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 2902
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mOriginalString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2904
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/16 v1, 0x53

    .line 2837
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2851
    :cond_0
    :goto_0
    return-void

    .line 2839
    :pswitch_0
    iput-byte v1, p0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mStatus:B

    .line 2840
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio$ScrollerText;->updateText()V

    goto :goto_0

    .line 2843
    :pswitch_1
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio$ScrollerText;->updateText()V

    goto :goto_0

    .line 2846
    :pswitch_2
    iget-byte v0, p0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mStatus:B

    if-ne v0, v1, :cond_0

    .line 2847
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio$ScrollerText;->startScroll()V

    goto :goto_0

    .line 2837
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
    .line 2911
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2912
    .local v0, textView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 2913
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mOriginalString:Ljava/lang/String;

    .line 2914
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mOriginalString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mStringlength:I

    .line 2915
    iget v1, p0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mStringlength:I

    if-lez v1, :cond_0

    .line 2916
    const/16 v1, 0x52

    iput-byte v1, p0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mStatus:B

    .line 2917
    const/16 v1, 0xf1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/caf/fmradio/FMRadio$ScrollerText;->sendEmptyMessageDelayed(IJ)Z

    .line 2920
    :cond_0
    return-void
.end method

.method stopScroll()V
    .locals 1

    .prologue
    .line 2888
    const/16 v0, 0x51

    iput-byte v0, p0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mStatus:B

    .line 2889
    const/16 v0, 0xf2

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio$ScrollerText;->removeMessages(I)V

    .line 2890
    const/16 v0, 0xf3

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio$ScrollerText;->removeMessages(I)V

    .line 2891
    const/16 v0, 0xf1

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio$ScrollerText;->removeMessages(I)V

    .line 2892
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio$ScrollerText;->resetScroll()V

    .line 2893
    return-void
.end method

.method updateText()V
    .locals 5

    .prologue
    const/16 v4, 0xf2

    .line 2860
    iget-byte v2, p0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mStatus:B

    const/16 v3, 0x53

    if-eq v2, v3, :cond_1

    .line 2881
    :cond_0
    :goto_0
    return-void

    .line 2863
    :cond_1
    invoke-virtual {p0, v4}, Lcom/caf/fmradio/FMRadio$ScrollerText;->removeMessages(I)V

    .line 2864
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2865
    .local v1, textView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 2866
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mOriginalString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mStringlength:I

    .line 2867
    const-string v0, ""

    .line 2868
    .local v0, szStr2:Ljava/lang/String;
    iget v2, p0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mStringlength:I

    if-lez v2, :cond_2

    .line 2869
    iget v2, p0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mIteration:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mIteration:I

    .line 2870
    iget v2, p0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mIteration:I

    iget v3, p0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mStringlength:I

    if-lt v2, v3, :cond_3

    .line 2871
    const/4 v2, 0x0

    iput v2, p0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mIteration:I

    .line 2872
    const/16 v2, 0xf3

    const-wide/16 v3, 0xbb8

    invoke-virtual {p0, v2, v3, v4}, Lcom/caf/fmradio/FMRadio$ScrollerText;->sendEmptyMessageDelayed(IJ)Z

    .line 2876
    :goto_1
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mOriginalString:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mOriginalString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mIteration:I

    if-lt v2, v3, :cond_2

    .line 2877
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mOriginalString:Ljava/lang/String;

    iget v3, p0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mIteration:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2879
    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2874
    :cond_3
    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v4, v2, v3}, Lcom/caf/fmradio/FMRadio$ScrollerText;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method
