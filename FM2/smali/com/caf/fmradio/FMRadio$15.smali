.class Lcom/caf/fmradio/FMRadio$15;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/caf/fmradio/FMRadio;->createCmdFailedDlgHdmiOn(I)Landroid/app/Dialog;
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
    .line 1401
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$15;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$15;->this$0:Lcom/caf/fmradio/FMRadio;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/caf/fmradio/FMRadio;->removeDialog(I)V

    .line 1405
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$1702(I)I

    .line 1406
    return-void
.end method
