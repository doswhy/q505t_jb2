.class Lcom/caf/fmradio/FMRadio$1;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Lcom/caf/fmradio/HorizontalNumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/caf/fmradio/FMRadio;->onCreate(Landroid/os/Bundle;)V
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
    .line 301
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$1;->this$0:Lcom/caf/fmradio/FMRadio;

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
    .line 306
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$1;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-virtual {v0, p3}, Lcom/caf/fmradio/FMRadio;->valueToFrequency(I)I

    .line 307
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$1;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$000(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$1;->this$0:Lcom/caf/fmradio/FMRadio;

    iget-object v1, v1, Lcom/caf/fmradio/FMRadio;->mRadioChangeFrequency:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 308
    return-void
.end method
