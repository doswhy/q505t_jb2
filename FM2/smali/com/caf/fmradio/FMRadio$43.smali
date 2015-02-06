.class Lcom/caf/fmradio/FMRadio$43;
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
    .line 2653
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$43;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2655
    const-string v0, "FMRadio"

    const-string v1, "mSearchComplete: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    invoke-static {v2}, Lcom/caf/fmradio/FMRadio;->access$5702(I)I

    .line 2657
    invoke-static {v2}, Lcom/caf/fmradio/FMRadio;->access$502(I)I

    .line 2658
    invoke-static {v2}, Lcom/caf/fmradio/FMRadio;->access$5802(Z)Z

    .line 2659
    invoke-static {v2}, Lcom/caf/fmradio/FMRadio;->access$5902(Z)Z

    .line 2660
    invoke-static {v2}, Lcom/caf/fmradio/FMRadio;->access$6002(Z)Z

    .line 2661
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$43;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->updateSearchProgress()V
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$5500(Lcom/caf/fmradio/FMRadio;)V

    .line 2662
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$43;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->resetFMStationInfoUI()V
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$5600(Lcom/caf/fmradio/FMRadio;)V

    .line 2663
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$43;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadio;->invalidateOptionsMenu()V

    .line 2664
    return-void
.end method
