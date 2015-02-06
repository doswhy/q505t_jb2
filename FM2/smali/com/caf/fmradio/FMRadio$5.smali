.class Lcom/caf/fmradio/FMRadio$5;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/caf/fmradio/FMRadio;->createPresetOptionsDlg(ILandroid/app/AlertDialog$Builder;)Landroid/app/Dialog;
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
    .line 1117
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$5;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$5;->this$0:Lcom/caf/fmradio/FMRadio;

    const/4 v1, 0x0

    #setter for: Lcom/caf/fmradio/FMRadio;->mPresetButtonStation:Lcom/caf/fmradio/PresetStation;
    invoke-static {v0, v1}, Lcom/caf/fmradio/FMRadio;->access$702(Lcom/caf/fmradio/FMRadio;Lcom/caf/fmradio/PresetStation;)Lcom/caf/fmradio/PresetStation;

    .line 1120
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$5;->this$0:Lcom/caf/fmradio/FMRadio;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/caf/fmradio/FMRadio;->removeDialog(I)V

    .line 1121
    return-void
.end method
