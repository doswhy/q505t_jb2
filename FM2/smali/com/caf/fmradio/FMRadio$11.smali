.class Lcom/caf/fmradio/FMRadio$11;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/caf/fmradio/FMRadio;->createPresetRenameDlg(ILandroid/app/AlertDialog$Builder;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/fmradio/FMRadio;

.field final synthetic val$textEntryView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/FMRadio;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1331
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$11;->this$0:Lcom/caf/fmradio/FMRadio;

    iput-object p2, p0, Lcom/caf/fmradio/FMRadio$11;->val$textEntryView:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1335
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$11;->val$textEntryView:Landroid/view/View;

    const v4, 0x7f090001

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1337
    .local v0, mTV:Landroid/widget/EditText;
    const/4 v2, 0x0

    .line 1338
    .local v2, newName:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 1339
    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    .line 1341
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1342
    .local v1, nName:Ljava/lang/String;
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$11;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mPresetButtonStation:Lcom/caf/fmradio/PresetStation;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$700(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/PresetStation;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/caf/fmradio/PresetStation;->setName(Ljava/lang/String;)V

    .line 1343
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$11;->this$0:Lcom/caf/fmradio/FMRadio;

    const/4 v4, 0x0

    #setter for: Lcom/caf/fmradio/FMRadio;->mPresetButtonStation:Lcom/caf/fmradio/PresetStation;
    invoke-static {v3, v4}, Lcom/caf/fmradio/FMRadio;->access$702(Lcom/caf/fmradio/FMRadio;Lcom/caf/fmradio/PresetStation;)Lcom/caf/fmradio/PresetStation;

    .line 1344
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$11;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->setupPresetLayout()V
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$1100(Lcom/caf/fmradio/FMRadio;)V

    .line 1345
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$11;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$1200(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/FmSharedPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caf/fmradio/FmSharedPreferences;->Save()V

    .line 1346
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$11;->this$0:Lcom/caf/fmradio/FMRadio;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/caf/fmradio/FMRadio;->removeDialog(I)V

    .line 1347
    return-void
.end method
