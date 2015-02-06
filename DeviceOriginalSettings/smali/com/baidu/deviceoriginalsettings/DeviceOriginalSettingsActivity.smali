.class public Lcom/baidu/deviceoriginalsettings/DeviceOriginalSettingsActivity;
.super Landroid/app/Activity;
.source "DeviceOriginalSettingsActivity.java"


# static fields
.field public static final ACT_ORIGINAL_SETTINGS:Ljava/lang/String; = "com.baidu.device_original_settings"

.field private static final TAG:Ljava/lang/String; = "DeviceOriginalSettings"


# instance fields
.field private act:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    new-instance v2, Lcom/baidu/deviceoriginalsettings/DeviceOriginalSettingsFragment;

    invoke-direct {v2}, Lcom/baidu/deviceoriginalsettings/DeviceOriginalSettingsFragment;-><init>()V

    .line 27
    .local v2, pff:Landroid/preference/PreferenceFragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x1020002

    invoke-virtual {v3, v4, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 31
    .local v0, bar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 32
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 33
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 36
    :cond_0
    const-string v3, "DeviceOriginalSettings"

    const-string v4, "onCreate -->"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 38
    .local v1, it:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/deviceoriginalsettings/DeviceOriginalSettingsActivity;->act:Ljava/lang/String;

    .line 39
    iget-object v3, p0, Lcom/baidu/deviceoriginalsettings/DeviceOriginalSettingsActivity;->act:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 40
    iget-object v3, p0, Lcom/baidu/deviceoriginalsettings/DeviceOriginalSettingsActivity;->act:Ljava/lang/String;

    const-string v4, "com.baidu.device_original_settings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 44
    :cond_1
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 48
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 53
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 50
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 51
    const/4 v0, 0x1

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 60
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, act:Ljava/lang/String;
    return-void
.end method
