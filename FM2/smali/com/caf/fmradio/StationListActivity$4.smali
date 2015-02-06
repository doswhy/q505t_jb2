.class Lcom/caf/fmradio/StationListActivity$4;
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


# direct methods
.method constructor <init>(Lcom/caf/fmradio/StationListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/caf/fmradio/StationListActivity$4;->this$0:Lcom/caf/fmradio/StationListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/caf/fmradio/StationListActivity$4;->this$0:Lcom/caf/fmradio/StationListActivity;

    #getter for: Lcom/caf/fmradio/StationListActivity;->mRenameDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/caf/fmradio/StationListActivity;->access$500(Lcom/caf/fmradio/StationListActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 224
    return-void
.end method
