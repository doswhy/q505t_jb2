.class Lcom/caf/fmradio/FMRadio$52;
.super Landroid/content/BroadcastReceiver;
.source "FMRadio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/caf/fmradio/FMRadio;->registerFMSettingListner()V
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
    .line 3121
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$52;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3124
    const-string v2, "FMRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3126
    .local v0, action:Ljava/lang/String;
    const-string v2, "FMRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    const-string v2, "com.caf.fmradio.settings.changed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3128
    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3129
    .local v1, state:I
    const-string v2, "FMRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_FM_SETTING Intent received"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3130
    packed-switch v1, :pswitch_data_0

    .line 3145
    .end local v1           #state:I
    :cond_0
    :goto_0
    return-void

    .line 3132
    .restart local v1       #state:I
    :pswitch_0
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio$52;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-virtual {v2}, Lcom/caf/fmradio/FMRadio;->fmConfigure()Z

    goto :goto_0

    .line 3135
    :pswitch_1
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio$52;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-virtual {v2}, Lcom/caf/fmradio/FMRadio;->fmConfigure()Z

    goto :goto_0

    .line 3138
    :pswitch_2
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio$52;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-virtual {v2}, Lcom/caf/fmradio/FMRadio;->fmAudioOutputMode()V

    goto :goto_0

    .line 3141
    :pswitch_3
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio$52;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-virtual {v2}, Lcom/caf/fmradio/FMRadio;->fmAudioOutputMode()V

    goto :goto_0

    .line 3130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
