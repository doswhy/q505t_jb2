.class Lcom/caf/fmradio/FMStats$13;
.super Ljava/lang/Object;
.source "FMStats.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FMStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/fmradio/FMStats;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/FMStats;)V
    .locals 0
    .parameter

    .prologue
    .line 754
    iput-object p1, p0, Lcom/caf/fmradio/FMStats$13;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 756
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Value entered for search is: SINR INTF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$13;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v1}, Lcom/caf/fmradio/FMStats;->access$600(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 759
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$13;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v1}, Lcom/caf/fmradio/FMStats;->access$600(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/caf/fmradio/IFMRadioService;->setSearchAlgoType(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 760
    :catch_0
    move-exception v0

    .line 761
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
