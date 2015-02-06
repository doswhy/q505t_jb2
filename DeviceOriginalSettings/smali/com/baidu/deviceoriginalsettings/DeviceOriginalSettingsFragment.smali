.class public Lcom/baidu/deviceoriginalsettings/DeviceOriginalSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "DeviceOriginalSettingsFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceOriginalSettingsFragment"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private initPreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 54
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/baidu/deviceoriginalsettings/DeviceOriginalSettingsFragment;->mAudioManager:Landroid/media/AudioManager;

    .line 55
    const-string v0, "DeviceOriginalSettingsFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-direct {p0}, Lcom/baidu/deviceoriginalsettings/DeviceOriginalSettingsFragment;->initPreferences()V

    .line 57
    return-void
.end method
