.class Lcom/caf/fmradio/FMRadio$30;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1556
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$30;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 1558
    const/4 v0, 0x0

    .line 1559
    .local v0, bStatus:Z
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio$30;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v2}, Lcom/caf/fmradio/FMRadio;->access$2800(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1561
    :try_start_0
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio$30;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->isMuted()Z
    invoke-static {v2}, Lcom/caf/fmradio/FMRadio;->access$2900(Lcom/caf/fmradio/FMRadio;)Z

    move-result v2

    if-ne v3, v2, :cond_1

    .line 1562
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio$30;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v2}, Lcom/caf/fmradio/FMRadio;->access$2800(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v2

    invoke-interface {v2}, Lcom/caf/fmradio/IFMRadioService;->unMute()Z

    move-result v0

    .line 1566
    :goto_0
    if-eqz v0, :cond_2

    .line 1567
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio$30;->this$0:Lcom/caf/fmradio/FMRadio;

    const/4 v3, 0x1

    #calls: Lcom/caf/fmradio/FMRadio;->setMuteModeButtonImage(Z)V
    invoke-static {v2, v3}, Lcom/caf/fmradio/FMRadio;->access$3000(Lcom/caf/fmradio/FMRadio;Z)V

    .line 1568
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio$30;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mAnimation:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/caf/fmradio/FMRadio;->access$2100(Lcom/caf/fmradio/FMRadio;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1581
    :cond_0
    :goto_1
    return-void

    .line 1564
    :cond_1
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio$30;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v2}, Lcom/caf/fmradio/FMRadio;->access$2800(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v2

    invoke-interface {v2}, Lcom/caf/fmradio/IFMRadioService;->mute()Z

    move-result v0

    goto :goto_0

    .line 1570
    :cond_2
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/caf/fmradio/FMRadio;->access$1702(I)I

    .line 1571
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio$30;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-virtual {v2}, Lcom/caf/fmradio/FMRadio;->isCallActive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1572
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio$30;->this$0:Lcom/caf/fmradio/FMRadio;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/caf/fmradio/FMRadio;->showDialog(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1577
    :catch_0
    move-exception v1

    .line 1578
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1574
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio$30;->this$0:Lcom/caf/fmradio/FMRadio;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/caf/fmradio/FMRadio;->showDialog(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
