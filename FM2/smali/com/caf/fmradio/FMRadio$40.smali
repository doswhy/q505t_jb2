.class Lcom/caf/fmradio/FMRadio$40;
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
    .line 2623
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$40;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2626
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$40;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->cleanupTimeoutHandler()V
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$1600(Lcom/caf/fmradio/FMRadio;)V

    .line 2627
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$40;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->endSleepTimer()V
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$5300(Lcom/caf/fmradio/FMRadio;)V

    .line 2628
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$40;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->stopRecording()V
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$3100(Lcom/caf/fmradio/FMRadio;)V

    .line 2629
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$40;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->cancelSearch()V
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$1500(Lcom/caf/fmradio/FMRadio;)V

    .line 2630
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$40;->this$0:Lcom/caf/fmradio/FMRadio;

    const/4 v1, 0x0

    #calls: Lcom/caf/fmradio/FMRadio;->enableRadioOnOffUI(Z)V
    invoke-static {v0, v1}, Lcom/caf/fmradio/FMRadio;->access$5200(Lcom/caf/fmradio/FMRadio;Z)V

    .line 2631
    return-void
.end method
