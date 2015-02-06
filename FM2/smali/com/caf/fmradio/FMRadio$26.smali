.class Lcom/caf/fmradio/FMRadio$26;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FMRadio;
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
    .line 1512
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$26;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "view"

    .prologue
    .line 1514
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/PresetStation;

    .line 1515
    .local v0, station:Lcom/caf/fmradio/PresetStation;
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$26;->this$0:Lcom/caf/fmradio/FMRadio;

    #setter for: Lcom/caf/fmradio/FMRadio;->mPresetButtonStation:Lcom/caf/fmradio/PresetStation;
    invoke-static {v1, v0}, Lcom/caf/fmradio/FMRadio;->access$702(Lcom/caf/fmradio/FMRadio;Lcom/caf/fmradio/PresetStation;)Lcom/caf/fmradio/PresetStation;

    .line 1516
    if-eqz v0, :cond_0

    .line 1517
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$26;->this$0:Lcom/caf/fmradio/FMRadio;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/caf/fmradio/FMRadio;->showDialog(I)V

    .line 1522
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1519
    :cond_0
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$26;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->addToPresets()V
    invoke-static {v1}, Lcom/caf/fmradio/FMRadio;->access$2200(Lcom/caf/fmradio/FMRadio;)V

    .line 1520
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$26;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/caf/fmradio/FMRadio;->access$2100(Lcom/caf/fmradio/FMRadio;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
