.class Lcom/caf/fmradio/FMRadioService$13;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/caf/fmradio/FMRadioService;->registerScreenOnOffListener()V
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
    .line 1234
    iput-object p1, p0, Lcom/caf/fmradio/FMRadioService$13;->this$0:Lcom/caf/fmradio/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1237
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1238
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1239
    const-string v1, "FMService"

    const-string v2, "ACTION_SCREEN_ON Intent received"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$13;->this$0:Lcom/caf/fmradio/FMRadioService;

    iget-object v1, v1, Lcom/caf/fmradio/FMRadioService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService$13;->this$0:Lcom/caf/fmradio/FMRadioService;

    iget-object v2, v2, Lcom/caf/fmradio/FMRadioService;->mScreenOnHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1248
    :cond_0
    :goto_0
    return-void

    .line 1243
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1244
    const-string v1, "FMService"

    const-string v2, "ACTION_SCREEN_OFF Intent received"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService$13;->this$0:Lcom/caf/fmradio/FMRadioService;

    iget-object v1, v1, Lcom/caf/fmradio/FMRadioService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService$13;->this$0:Lcom/caf/fmradio/FMRadioService;

    iget-object v2, v2, Lcom/caf/fmradio/FMRadioService;->mScreenOffHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
