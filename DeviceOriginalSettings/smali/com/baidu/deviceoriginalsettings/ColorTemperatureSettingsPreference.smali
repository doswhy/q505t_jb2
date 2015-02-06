.class public Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "ColorTemperatureSettingsPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;
    }
.end annotation


# static fields
.field private static final COLOR_TEMPERATURE:Ljava/lang/String; = "color_temperature"

.field private static final COLOR_TEMPERATURE_DEFAULT_VALUE:I = 0x80

.field private static final COLOR_TEMPERATURE_MODE:Ljava/lang/String; = "color_temperature_mode"

.field private static final COLOR_TEMPERATURE_MODE_DEFAULT:I = 0x1

.field private static final COLOR_TEMPERATURE_MODE_MANUAL:I


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mColorTemperatureModeObserver:Landroid/database/ContentObserver;

.field private mColorTemperatureObserver:Landroid/database/ContentObserver;

.field private mIsDefultSetChecked:Z

.field private mIsOldDefultSelected:Z

.field private mOldColorTemperature:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoredOldState:Z

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mWarmColdLinear:Landroid/widget/LinearLayout;

.field private pauseModeChecked:Z

.field private pauseSeekprocess:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$1;-><init>(Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mColorTemperatureObserver:Landroid/database/ContentObserver;

    .line 62
    new-instance v0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$2;-><init>(Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mColorTemperatureModeObserver:Landroid/database/ContentObserver;

    .line 69
    new-instance v0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$3;

    invoke-direct {v0, p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$3;-><init>(Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;)V

    iput-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->pauseSeekprocess:I

    .line 83
    iput-boolean v2, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->pauseModeChecked:Z

    .line 84
    iput-boolean v2, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mIsDefultSetChecked:Z

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mRestoredOldState:Z

    .line 87
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setDialogLayoutResource(I)V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->onColorTemperatureChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->onColorTemperatureModeChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mIsDefultSetChecked:Z

    return v0
.end method

.method static synthetic access$300(Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->setColorTemperature(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->setMode(I)V

    return-void
.end method

.method static synthetic access$602(Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mRestoredOldState:Z

    return p1
.end method

.method private getColorTemperature()I
    .locals 4

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "color_temperature"

    const/16 v3, 0x80

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 94
    .local v0, colorTemperature:I
    return v0
.end method

.method protected static getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "dialogView"

    .prologue
    .line 269
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    return-object v0
.end method

.method private isColorTemperDefaultMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 98
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "color_temperature_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 101
    .local v0, colorTemperMode:I
    if-ne v1, v0, :cond_0

    .line 104
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onColorTemperatureChanged()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->getColorTemperature()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 109
    return-void
.end method

.method private onColorTemperatureModeChanged()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->isColorTemperDefaultMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 113
    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->getColorTemperature()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 114
    invoke-direct {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->isColorTemperDefaultMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->setMode(I)V

    .line 115
    invoke-virtual {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->updateUIStatus()V

    .line 116
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private restoreOldState()V
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mRestoredOldState:Z

    if-eqz v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mIsOldDefultSelected:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x80

    :goto_1
    invoke-direct {p0, v0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->setColorTemperature(I)V

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mRestoredOldState:Z

    goto :goto_0

    .line 121
    :cond_1
    iget v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mOldColorTemperature:I

    goto :goto_1
.end method

.method private setColorTemperature(I)V
    .locals 4
    .parameter "colorTemperature"

    .prologue
    .line 127
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 129
    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setColorTemperature(I)I

    move-result v1

    .line 131
    .local v1, result:I
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "color_temperature"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v1           #result:I
    :cond_0
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 138
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_temperature_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 139
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 163
    invoke-static {p1}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 164
    iget-object v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 165
    invoke-direct {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->getColorTemperature()I

    move-result v1

    iput v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mOldColorTemperature:I

    .line 166
    iget-object v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mOldColorTemperature:I

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 168
    const v1, 0x7f080001

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 169
    const v1, 0x7f080003

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mWarmColdLinear:Landroid/widget/LinearLayout;

    .line 171
    iget-object v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 172
    invoke-direct {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->isColorTemperDefaultMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mIsOldDefultSelected:Z

    .line 173
    iget-object v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mIsOldDefultSelected:Z

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 174
    iget-object v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 175
    iget-boolean v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mIsOldDefultSelected:Z

    iput-boolean v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mIsDefultSetChecked:Z

    .line 176
    iget-boolean v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mIsDefultSetChecked:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x80

    :goto_0
    invoke-direct {p0, v1}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->setColorTemperature(I)V

    .line 177
    iget-boolean v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mIsDefultSetChecked:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, v1}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->setMode(I)V

    .line 178
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 179
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->updateUIStatus()V

    .line 183
    return-void

    .line 176
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    iget v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mOldColorTemperature:I

    goto :goto_0

    .line 177
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 186
    iput-boolean p2, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mIsDefultSetChecked:Z

    .line 187
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->setMode(I)V

    .line 188
    if-eqz p2, :cond_1

    const/16 v0, 0x80

    :goto_1
    invoke-direct {p0, v0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->setColorTemperature(I)V

    .line 189
    invoke-virtual {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->updateUIStatus()V

    .line 190
    return-void

    .line 187
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    goto :goto_1
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 196
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 198
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz p1, :cond_2

    .line 199
    const-string v2, "color_temperature"

    iget-boolean v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mIsDefultSetChecked:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x80

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 202
    const-string v2, "color_temperature_mode"

    iget-boolean v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mIsDefultSetChecked:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 208
    :goto_2
    iget-object v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mColorTemperatureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 209
    iget-object v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mColorTemperatureModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 210
    return-void

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    goto :goto_0

    .line 202
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 205
    :cond_2
    invoke-direct {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->restoreOldState()V

    goto :goto_2
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 213
    invoke-direct {p0, p2}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->setColorTemperature(I)V

    .line 214
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 218
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 220
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 230
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 224
    check-cast v0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;

    .line 225
    .local v0, myState:Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 226
    iget v1, v0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;->oldProgress:I

    iput v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mOldColorTemperature:I

    .line 227
    iget-boolean v1, v0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;->mIsOldDefaultSelected:Z

    iput-boolean v1, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mIsOldDefultSelected:Z

    .line 228
    iget-boolean v1, v0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;->mIsDefaultSelected:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, v1}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->setMode(I)V

    .line 229
    iget-boolean v1, v0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;->mIsDefaultSelected:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x80

    :goto_2
    invoke-direct {p0, v1}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->setColorTemperature(I)V

    goto :goto_0

    .line 228
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 229
    :cond_3
    iget v1, v0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;->progress:I

    goto :goto_2
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 234
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 235
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 244
    :goto_0
    return-object v0

    .line 237
    :cond_1
    new-instance v0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 238
    .local v0, myState:Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;
    iget-object v2, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;->mIsDefaultSelected:Z

    .line 239
    iget-object v2, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    iput v2, v0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;->progress:I

    .line 240
    iget-boolean v2, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mIsOldDefultSelected:Z

    iput-boolean v2, v0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;->mIsOldDefaultSelected:Z

    .line 241
    iget v2, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mOldColorTemperature:I

    iput v2, v0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;->oldProgress:I

    .line 243
    invoke-direct {p0}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->restoreOldState()V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 249
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 253
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 257
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 259
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_temperature"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mColorTemperatureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 262
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_temperature_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mColorTemperatureModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mRestoredOldState:Z

    .line 266
    return-void
.end method

.method protected updateUIStatus()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 142
    iget-boolean v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mIsDefultSetChecked:Z

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mWarmColdLinear:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mWarmColdLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :cond_1
    :goto_0
    return-void

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_3

    .line 151
    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mWarmColdLinear:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference;->mWarmColdLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
