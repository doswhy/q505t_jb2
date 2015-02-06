.class Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$2;->this$0:Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$2;->this$0:Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;

    #calls: Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->onColorTemperatureModeChanged()V
    invoke-static {v0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->access$100(Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;)V

    .line 66
    return-void
.end method
