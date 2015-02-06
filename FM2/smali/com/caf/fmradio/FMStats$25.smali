.class Lcom/caf/fmradio/FMStats$25;
.super Ljava/lang/Object;
.source "FMStats.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/caf/fmradio/FMStats;->createBandSweepDialog(ILandroid/app/AlertDialog$Builder;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/fmradio/FMStats;

.field final synthetic val$delayBox:Landroid/widget/EditText;

.field final synthetic val$dwellBox:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/FMStats;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2255
    iput-object p1, p0, Lcom/caf/fmradio/FMStats$25;->this$0:Lcom/caf/fmradio/FMStats;

    iput-object p2, p0, Lcom/caf/fmradio/FMStats$25;->val$delayBox:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/caf/fmradio/FMStats$25;->val$dwellBox:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 2257
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$25;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v2, p0, Lcom/caf/fmradio/FMStats$25;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->curSweepMthd:I
    invoke-static {v2}, Lcom/caf/fmradio/FMStats;->access$5400(Lcom/caf/fmradio/FMStats;)I

    move-result v2

    #setter for: Lcom/caf/fmradio/FMStats;->prevSweepMthd:I
    invoke-static {v1, v2}, Lcom/caf/fmradio/FMStats;->access$5302(Lcom/caf/fmradio/FMStats;I)I

    .line 2258
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$25;->val$delayBox:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 2259
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$25;->val$delayBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2260
    .local v0, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$25;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/caf/fmradio/FMStats;->prevDelayTime:I
    invoke-static {v1, v2}, Lcom/caf/fmradio/FMStats;->access$5502(Lcom/caf/fmradio/FMStats;I)I

    .line 2262
    .end local v0           #s:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$25;->val$dwellBox:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 2263
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$25;->val$dwellBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2264
    .restart local v0       #s:Ljava/lang/String;
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$25;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/caf/fmradio/FMStats;->prevDwellTime:I
    invoke-static {v1, v2}, Lcom/caf/fmradio/FMStats;->access$3802(Lcom/caf/fmradio/FMStats;I)I

    .line 2266
    .end local v0           #s:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/caf/fmradio/FMStats$25;->this$0:Lcom/caf/fmradio/FMStats;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/caf/fmradio/FMStats;->removeDialog(I)V

    .line 2267
    return-void
.end method
