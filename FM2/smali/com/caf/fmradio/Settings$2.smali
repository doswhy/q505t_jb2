.class Lcom/caf/fmradio/Settings$2;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/caf/fmradio/Settings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/fmradio/Settings;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/caf/fmradio/Settings$2;->this$0:Lcom/caf/fmradio/Settings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 429
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.caf.fmradio.settings.revert_to_defaults"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .local v0, data:Landroid/content/Intent;
    iget-object v1, p0, Lcom/caf/fmradio/Settings$2;->this$0:Lcom/caf/fmradio/Settings;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/caf/fmradio/Settings;->setResult(ILandroid/content/Intent;)V

    .line 432
    iget-object v1, p0, Lcom/caf/fmradio/Settings$2;->this$0:Lcom/caf/fmradio/Settings;

    #calls: Lcom/caf/fmradio/Settings;->restoreSettingsDefault()V
    invoke-static {v1}, Lcom/caf/fmradio/Settings;->access$000(Lcom/caf/fmradio/Settings;)V

    .line 433
    iget-object v1, p0, Lcom/caf/fmradio/Settings$2;->this$0:Lcom/caf/fmradio/Settings;

    invoke-virtual {v1}, Lcom/caf/fmradio/Settings;->finish()V

    .line 434
    return-void
.end method
