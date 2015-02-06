.class Lcom/caf/fmradio/FMRadio$24;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1491
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$24;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$24;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$2008(Lcom/caf/fmradio/FMRadio;)I

    .line 1494
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$24;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->setupPresetLayout()V
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$1100(Lcom/caf/fmradio/FMRadio;)V

    .line 1495
    return-void
.end method
