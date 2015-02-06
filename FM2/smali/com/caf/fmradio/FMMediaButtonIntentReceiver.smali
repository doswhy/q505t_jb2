.class public Lcom/caf/fmradio/FMMediaButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FMMediaButtonIntentReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v5, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 51
    const-string v5, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 54
    .local v1, event:Landroid/view/KeyEvent;
    if-nez v1, :cond_1

    .line 70
    .end local v1           #event:Landroid/view/KeyEvent;
    :cond_0
    :goto_0
    return-void

    .line 57
    .restart local v1       #event:Landroid/view/KeyEvent;
    :cond_1
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 58
    .local v4, keycode:I
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    .line 59
    .local v3, key_action:I
    const/16 v5, 0x4f

    if-ne v5, v4, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    const/16 v5, 0x7f

    if-eq v5, v4, :cond_3

    const/16 v5, 0x7e

    if-ne v5, v4, :cond_0

    .line 64
    :cond_3
    const-string v5, "FMMediaButtonIntentReceiver"

    const-string v6, "ACTION_MEDIA_BUTTON intent received for ACTION_DOWN"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.caf.fmradio.action.MEDIA_BUTTON"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v2, i:Landroid/content/Intent;
    const-string v5, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
