.class public Lcom/baidu/deviceoriginalsettings/CharacterSettings;
.super Landroid/preference/PreferenceActivity;
.source "CharacterSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private double_click_screen_on:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private getSystemState(Ljava/lang/String;)Z
    .locals 2
    .parameter "paramString"

    .prologue
    .line 29
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/deviceoriginalsettings/CharacterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 31
    .local v0, i:I
    if-lez v0, :cond_0

    .line 33
    const/4 v1, 0x1

    .line 36
    .end local v0           #i:I
    :goto_0
    return v1

    .line 34
    :catch_0
    move-exception v1

    .line 36
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public initUI()V
    .locals 4

    .prologue
    .line 40
    const-string v1, "oppo_double_click_screen_on"

    invoke-direct {p0, v1}, Lcom/baidu/deviceoriginalsettings/CharacterSettings;->getSystemState(Ljava/lang/String;)Z

    move-result v0

    .line 41
    .local v0, flag:Z
    const-string v1, "oppo_double_click_screen_on"

    invoke-virtual {p0, v1}, Lcom/baidu/deviceoriginalsettings/CharacterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/baidu/deviceoriginalsettings/CharacterSettings;->double_click_screen_on:Landroid/preference/CheckBoxPreference;

    .line 42
    iget-object v1, p0, Lcom/baidu/deviceoriginalsettings/CharacterSettings;->double_click_screen_on:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 43
    const-string v1, "OppoMotionSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initUI, doubleClickScreenOnEnabled = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/baidu/deviceoriginalsettings/CharacterSettings;->addPreferencesFromResource(I)V

    .line 24
    invoke-virtual {p0}, Lcom/baidu/deviceoriginalsettings/CharacterSettings;->initUI()V

    .line 25
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 48
    const-string v2, "OppoMotionSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onPreferenceTreeClick key: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, j:I
    iget-object v2, p0, Lcom/baidu/deviceoriginalsettings/CharacterSettings;->double_click_screen_on:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/baidu/deviceoriginalsettings/CharacterSettings;->double_click_screen_on:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/baidu/deviceoriginalsettings/CharacterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 55
    const-string v3, "oppo_double_click_screen_on"

    .line 54
    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 56
    invoke-static {v6}, Lcom/oppo/tpreset/tpreset;->tp_double_tap_enable(I)I

    move-result v0

    .line 57
    const-string v2, "ctrl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ctrl="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p0}, Lcom/baidu/deviceoriginalsettings/CharacterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 65
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/deviceoriginalsettings/CharacterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 61
    const-string v3, "oppo_double_click_screen_on"

    .line 60
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 62
    invoke-static {v5}, Lcom/oppo/tpreset/tpreset;->tp_double_tap_enable(I)I

    move-result v0

    goto :goto_0
.end method
