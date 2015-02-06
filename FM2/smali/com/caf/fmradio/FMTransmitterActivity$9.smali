.class Lcom/caf/fmradio/FMTransmitterActivity$9;
.super Ljava/lang/Object;
.source "FMTransmitterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 707
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterActivity$9;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 709
    invoke-static {}, Lcom/caf/fmradio/FMTransmitterActivity;->access$500()I

    move-result v1

    invoke-static {v1}, Lcom/caf/fmradio/FmSharedPreferences;->getNextTuneFrequency(I)I

    move-result v0

    .line 711
    .local v0, frequency:I
    const-string v1, "FMTransmitterActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tune Up: to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity$9;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->tuneRadio(I)V
    invoke-static {v1, v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$400(Lcom/caf/fmradio/FMTransmitterActivity;I)V

    .line 713
    return-void
.end method
