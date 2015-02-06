.class Lcom/caf/fmradio/FMRadioService$8;
.super Ljava/lang/Object;
.source "FMRadioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/fmradio/FMRadioService;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 599
    iput-object p1, p0, Lcom/caf/fmradio/FMRadioService$8;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 602
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$8;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v1}, Lcom/caf/fmradio/FMRadioService;->isAntennaAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 605
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$8;->this$0:Lcom/caf/fmradio/FMRadioService;

    #calls: Lcom/caf/fmradio/FMRadioService;->fmOff()Z
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$1100(Lcom/caf/fmradio/FMRadioService;)Z

    .line 611
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$8;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mServiceInUse:Z
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$100(Lcom/caf/fmradio/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$8;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 613
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$8;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v1

    invoke-interface {v1}, Lcom/caf/fmradio/IFMRadioServiceCallbacks;->onDisabled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 615
    :catch_0
    move-exception v0

    .line 617
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 629
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$8;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v1}, Lcom/caf/fmradio/FMRadioService;->isFmOn()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$8;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mServiceInUse:Z
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$100(Lcom/caf/fmradio/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$8;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$8;->this$0:Lcom/caf/fmradio/FMRadioService;

    #calls: Lcom/caf/fmradio/FMRadioService;->isFMProcessForeground()Z
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$1600(Lcom/caf/fmradio/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 632
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService$8;->this$0:Lcom/caf/fmradio/FMRadioService;

    #calls: Lcom/caf/fmradio/FMRadioService;->fmOn()Z
    invoke-static {v2}, Lcom/caf/fmradio/FMRadioService;->access$1300(Lcom/caf/fmradio/FMRadioService;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 637
    :try_start_1
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$8;->this$0:Lcom/caf/fmradio/FMRadioService;

    #getter for: Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadioService;->access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v1

    invoke-interface {v1}, Lcom/caf/fmradio/IFMRadioServiceCallbacks;->onEnabled()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 638
    :catch_1
    move-exception v0

    .line 640
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
