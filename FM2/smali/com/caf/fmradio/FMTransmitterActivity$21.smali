.class Lcom/caf/fmradio/FMTransmitterActivity$21;
.super Ljava/lang/Object;
.source "FMTransmitterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FMTransmitterActivity;
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
    .line 1253
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterActivity$21;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1255
    const/4 v0, 0x0

    sput-boolean v0, Lcom/caf/fmradio/FMTransmitterActivity;->mUpdatePickerValue:Z

    .line 1256
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$21;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$21;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mFrequency:I
    invoke-static {v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$3200(Lcom/caf/fmradio/FMTransmitterActivity;)I

    move-result v1

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->tuneRadio(I)V
    invoke-static {v0, v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$400(Lcom/caf/fmradio/FMTransmitterActivity;I)V

    .line 1257
    return-void
.end method
