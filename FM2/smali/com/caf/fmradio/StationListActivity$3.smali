.class Lcom/caf/fmradio/StationListActivity$3;
.super Ljava/lang/Object;
.source "StationListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/caf/fmradio/StationListActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/fmradio/StationListActivity;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/StationListActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/caf/fmradio/StationListActivity$3;->this$0:Lcom/caf/fmradio/StationListActivity;

    iput-object p2, p0, Lcom/caf/fmradio/StationListActivity$3;->val$editText:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/16 v7, 0x11

    const/4 v6, 0x0

    .line 198
    iget-object v3, p0, Lcom/caf/fmradio/StationListActivity$3;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, rename:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 200
    :cond_0
    iget-object v3, p0, Lcom/caf/fmradio/StationListActivity$3;->this$0:Lcom/caf/fmradio/StationListActivity;

    invoke-virtual {v3}, Lcom/caf/fmradio/StationListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 201
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/caf/fmradio/StationListActivity$3;->this$0:Lcom/caf/fmradio/StationListActivity;

    const v4, 0x7f0600ab

    invoke-virtual {v3, v4}, Lcom/caf/fmradio/StationListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 203
    .local v2, toast:Landroid/widget/Toast;
    invoke-virtual {v2, v7, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 204
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 215
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #toast:Landroid/widget/Toast;
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v3, p0, Lcom/caf/fmradio/StationListActivity$3;->this$0:Lcom/caf/fmradio/StationListActivity;

    #calls: Lcom/caf/fmradio/StationListActivity;->stationNameExist(Ljava/lang/String;)Z
    invoke-static {v3, v1}, Lcom/caf/fmradio/StationListActivity;->access$200(Lcom/caf/fmradio/StationListActivity;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 206
    iget-object v3, p0, Lcom/caf/fmradio/StationListActivity$3;->this$0:Lcom/caf/fmradio/StationListActivity;

    invoke-virtual {v3}, Lcom/caf/fmradio/StationListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 207
    .restart local v0       #context:Landroid/content/Context;
    iget-object v3, p0, Lcom/caf/fmradio/StationListActivity$3;->this$0:Lcom/caf/fmradio/StationListActivity;

    const v4, 0x7f0600ac

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/caf/fmradio/StationListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 209
    .restart local v2       #toast:Landroid/widget/Toast;
    invoke-virtual {v2, v7, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 210
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 212
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #toast:Landroid/widget/Toast;
    :cond_2
    iget-object v3, p0, Lcom/caf/fmradio/StationListActivity$3;->this$0:Lcom/caf/fmradio/StationListActivity;

    invoke-static {}, Lcom/caf/fmradio/StationListActivity;->access$300()I

    move-result v4

    #calls: Lcom/caf/fmradio/StationListActivity;->saveStationName(ILjava/lang/String;)V
    invoke-static {v3, v4, v1}, Lcom/caf/fmradio/StationListActivity;->access$400(Lcom/caf/fmradio/StationListActivity;ILjava/lang/String;)V

    .line 213
    iget-object v3, p0, Lcom/caf/fmradio/StationListActivity$3;->this$0:Lcom/caf/fmradio/StationListActivity;

    #getter for: Lcom/caf/fmradio/StationListActivity;->mRenameDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/caf/fmradio/StationListActivity;->access$500(Lcom/caf/fmradio/StationListActivity;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method
