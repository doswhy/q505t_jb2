.class Lcom/caf/fmradio/FMRadio$22;
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
    .line 1477
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$22;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$22;->this$0:Lcom/caf/fmradio/FMRadio;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/caf/fmradio/FMRadio;->showDialog(I)V

    .line 1480
    return-void
.end method
