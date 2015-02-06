.class Lcom/caf/fmradio/FMTransmitterActivity$6;
.super Ljava/lang/Object;
.source "FMTransmitterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/caf/fmradio/FMTransmitterActivity;->createPresetListAutoSelectWarnDlg(I)Landroid/app/Dialog;
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
    .line 670
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterActivity$6;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 676
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$6;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->initiateSearchList()V
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$900(Lcom/caf/fmradio/FMTransmitterActivity;)V

    .line 677
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$6;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->setupPresetLayout()V
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$700(Lcom/caf/fmradio/FMTransmitterActivity;)V

    .line 678
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$6;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->SavePreferences()V

    .line 679
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$6;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/caf/fmradio/FMTransmitterActivity;->removeDialog(I)V

    .line 680
    return-void
.end method
