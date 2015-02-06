.class Lcom/caf/fmradio/FMRadio$47;
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
    .line 2727
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$47;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2729
    const/4 v0, 0x0

    sput-boolean v0, Lcom/caf/fmradio/FMRadio;->mUpdatePickerValue:Z

    .line 2730
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$47;->this$0:Lcom/caf/fmradio/FMRadio;

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$47;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mFrequency:I
    invoke-static {v1}, Lcom/caf/fmradio/FMRadio;->access$6700(Lcom/caf/fmradio/FMRadio;)I

    move-result v1

    #calls: Lcom/caf/fmradio/FMRadio;->tuneRadio(I)V
    invoke-static {v0, v1}, Lcom/caf/fmradio/FMRadio;->access$800(Lcom/caf/fmradio/FMRadio;I)V

    .line 2731
    return-void
.end method
