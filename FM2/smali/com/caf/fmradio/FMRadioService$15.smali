.class Lcom/caf/fmradio/FMRadioService$15;
.super Ljava/lang/Object;
.source "FMRadioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/fmradio/FMRadioService;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 1269
    iput-object p1, p0, Lcom/caf/fmradio/FMRadioService$15;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService$15;->this$0:Lcom/caf/fmradio/FMRadioService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/caf/fmradio/FMRadioService;->setLowPowerMode(Z)Z

    .line 1272
    return-void
.end method
