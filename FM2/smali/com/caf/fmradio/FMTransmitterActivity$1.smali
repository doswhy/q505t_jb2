.class Lcom/caf/fmradio/FMTransmitterActivity$1;
.super Ljava/lang/Object;
.source "FMTransmitterActivity.java"

# interfaces
.implements Lcom/caf/fmradio/HorizontalNumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/caf/fmradio/FMTransmitterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/fmradio/FMTransmitterActivity;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/FMTransmitterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterActivity$1;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/caf/fmradio/HorizontalNumberPicker;II)V
    .locals 2
    .parameter "picker"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$1;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-virtual {v0, p3}, Lcom/caf/fmradio/FMTransmitterActivity;->valueToFrequency(I)I

    .line 183
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$1;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$100(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$1;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mRadioChangeFrequency:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$000(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    return-void
.end method
