.class Lcom/caf/fmradio/FMStats$24;
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


# direct methods
.method constructor <init>(Lcom/caf/fmradio/FMStats;)V
    .locals 0
    .parameter

    .prologue
    .line 2269
    iput-object p1, p0, Lcom/caf/fmradio/FMStats$24;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 2271
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$24;->this$0:Lcom/caf/fmradio/FMStats;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/caf/fmradio/FMStats;->removeDialog(I)V

    .line 2272
    return-void
.end method
