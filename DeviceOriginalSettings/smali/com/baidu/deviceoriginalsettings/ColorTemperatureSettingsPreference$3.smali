.class Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$3;
.super Landroid/content/BroadcastReceiver;
.source "ColorTemperatureSettingsPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;


# direct methods
.method constructor <init>(Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$3;->this$0:Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v2, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$3;->this$0:Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;

    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$3;->this$0:Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;

    #getter for: Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mIsDefultSetChecked:Z
    invoke-static {v0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->access$200(Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x80

    :goto_0
    #calls: Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->setColorTemperature(I)V
    invoke-static {v2, v0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->access$400(Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;I)V

    .line 74
    iget-object v2, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$3;->this$0:Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;

    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$3;->this$0:Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;

    #getter for: Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mIsDefultSetChecked:Z
    invoke-static {v0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->access$200(Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    #calls: Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->setMode(I)V
    invoke-static {v2, v0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->access$500(Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;I)V

    .line 75
    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$3;->this$0:Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;

    #setter for: Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mRestoredOldState:Z
    invoke-static {v0, v1}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->access$602(Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;Z)Z

    .line 77
    :cond_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$3;->this$0:Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;

    #getter for: Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->access$300(Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    goto :goto_0

    .line 74
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
