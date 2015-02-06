.class Lcom/caf/fmradio/FMRadio$48;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 2734
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$48;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2736
    const-string v1, ""

    .line 2737
    .local v1, str:Ljava/lang/String;
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio$48;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v2}, Lcom/caf/fmradio/FMRadio;->access$2800(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/caf/fmradio/FMRadio$48;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->isFmOn()Z
    invoke-static {v2}, Lcom/caf/fmradio/FMRadio;->access$3800(Lcom/caf/fmradio/FMRadio;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2740
    :try_start_0
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio$48;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v2}, Lcom/caf/fmradio/FMRadio;->access$2800(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v2

    invoke-interface {v2}, Lcom/caf/fmradio/IFMRadioService;->getExtenRadioText()Ljava/lang/String;

    move-result-object v1

    .line 2741
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2742
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio$48;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mERadioTextTV:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/caf/fmradio/FMRadio;->access$6800(Lcom/caf/fmradio/FMRadio;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2743
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio$48;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mERadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;
    invoke-static {v2}, Lcom/caf/fmradio/FMRadio;->access$6900(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/FMRadio$ScrollerText;

    move-result-object v2

    const-string v3, ""

    iput-object v3, v2, Lcom/caf/fmradio/FMRadio$ScrollerText;->mOriginalString:Ljava/lang/String;

    .line 2748
    :goto_0
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio$48;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mERadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;
    invoke-static {v2}, Lcom/caf/fmradio/FMRadio;->access$6900(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/FMRadio$ScrollerText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/caf/fmradio/FMRadio$ScrollerText;->startScroll()V

    .line 2753
    :cond_0
    :goto_1
    return-void

    .line 2745
    :cond_1
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio$48;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mERadioTextTV:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/caf/fmradio/FMRadio;->access$6800(Lcom/caf/fmradio/FMRadio;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2746
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio$48;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mERadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;
    invoke-static {v2}, Lcom/caf/fmradio/FMRadio;->access$6900(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/FMRadio$ScrollerText;

    move-result-object v2

    iput-object v1, v2, Lcom/caf/fmradio/FMRadio$ScrollerText;->mOriginalString:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2749
    :catch_0
    move-exception v0

    .line 2750
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
