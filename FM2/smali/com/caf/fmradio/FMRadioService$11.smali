.class Lcom/caf/fmradio/FMRadioService$11;
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
    .line 1138
    iput-object p1, p0, Lcom/caf/fmradio/FMRadioService$11;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1140
    const-string v0, "FMService"

    const-string v1, "Disabling Speaker"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1142
    return-void
.end method
