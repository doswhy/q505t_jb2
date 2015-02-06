.class Lcom/caf/fmradio/FMRadio$31;
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
    .line 1585
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$31;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$31;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->isRecording()Z
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$100(Lcom/caf/fmradio/FMRadio;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1588
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$31;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->stopRecording()V
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$3100(Lcom/caf/fmradio/FMRadio;)V

    .line 1592
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$31;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadio;->invalidateOptionsMenu()V

    .line 1593
    return-void

    .line 1589
    :cond_1
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$31;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->isAnalogModeEnabled()Z
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$3200(Lcom/caf/fmradio/FMRadio;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1590
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$31;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->startRecording()V
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$3300(Lcom/caf/fmradio/FMRadio;)V

    goto :goto_0
.end method
