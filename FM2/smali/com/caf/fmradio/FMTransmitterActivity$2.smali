.class Lcom/caf/fmradio/FMTransmitterActivity$2;
.super Ljava/lang/Object;
.source "FMTransmitterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/caf/fmradio/FMTransmitterActivity;->createPresetOptionsDlg(I)Landroid/app/Dialog;
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
    .line 565
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterActivity$2;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 567
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$2;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    const/4 v1, -0x1

    #setter for: Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtonIndex:I
    invoke-static {v0, v1}, Lcom/caf/fmradio/FMTransmitterActivity;->access$202(Lcom/caf/fmradio/FMTransmitterActivity;I)I

    .line 568
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$2;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/caf/fmradio/FMTransmitterActivity;->removeDialog(I)V

    .line 569
    return-void
.end method
