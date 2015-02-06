.class Lcom/caf/fmradio/FMTransmitterActivity$8;
.super Ljava/lang/Object;
.source "FMTransmitterActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 700
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterActivity$8;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 702
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$8;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/caf/fmradio/FMTransmitterActivity;->showDialog(I)V

    .line 703
    const/4 v0, 0x1

    return v0
.end method
