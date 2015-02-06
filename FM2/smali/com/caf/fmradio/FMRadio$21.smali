.class Lcom/caf/fmradio/FMRadio$21;
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
    .line 1469
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$21;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$21;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->SeekPreviousStation()V
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$1900(Lcom/caf/fmradio/FMRadio;)V

    .line 1472
    const/4 v0, 0x1

    return v0
.end method
