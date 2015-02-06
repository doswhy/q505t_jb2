.class Lcom/caf/fmradio/FMRadio$27;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Lcom/caf/utils/FrequencyPickerDialog$OnFrequencySetListener;


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
    .line 1527
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$27;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrequencySet(Lcom/caf/utils/FrequencyPicker;I)V
    .locals 3
    .parameter "view"
    .parameter "frequency"

    .prologue
    .line 1529
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFrequencyChangeListener: onFrequencyChanged to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$27;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->tuneRadio(I)V
    invoke-static {v0, p2}, Lcom/caf/fmradio/FMRadio;->access$800(Lcom/caf/fmradio/FMRadio;I)V

    .line 1532
    return-void
.end method
