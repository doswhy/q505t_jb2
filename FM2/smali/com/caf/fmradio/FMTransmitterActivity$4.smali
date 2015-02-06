.class Lcom/caf/fmradio/FMTransmitterActivity$4;
.super Ljava/lang/Object;
.source "FMTransmitterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/caf/fmradio/FMTransmitterActivity;->createProgressDialog(I)Landroid/app/Dialog;
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
    .line 642
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterActivity$4;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 645
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$4;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->cancelSearch()V
    invoke-static {v0}, Lcom/caf/fmradio/FMTransmitterActivity;->access$800(Lcom/caf/fmradio/FMTransmitterActivity;)V

    .line 646
    return-void
.end method
