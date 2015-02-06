.class public Lcom/android/settings/ConnectSettings;
.super Landroid/preference/PreferenceActivity;
.source "ConnectSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ConnectSettings$UsbStateReceiver;,
        Lcom/android/settings/ConnectSettings$TetherChangeReceiver;
    }
.end annotation


# static fields
.field private static DBG:Z


# instance fields
.field private mConnectTypeList:Landroid/preference/PreferenceGroup;

.field private mHandler:Landroid/os/Handler;

.field private mMassStorageActive:Z

.field private mProvisionApp:[Ljava/lang/String;

.field private mTempEnable:Z

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mTurnUSBTetheringTask:Ljava/lang/Runnable;

.field private mUsbConnected:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/ConnectSettings;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/ConnectSettings;->mTetherChoice:I

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ConnectSettings;->mTempEnable:Z

    .line 289
    new-instance v0, Lcom/android/settings/ConnectSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ConnectSettings$1;-><init>(Lcom/android/settings/ConnectSettings;)V

    iput-object v0, p0, Lcom/android/settings/ConnectSettings;->mTurnUSBTetheringTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/android/settings/ConnectSettings;->DBG:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/ConnectSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/settings/ConnectSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/ConnectSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/settings/ConnectSettings;->mUsbConnected:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/ConnectSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/settings/ConnectSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/ConnectSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/settings/ConnectSettings;->mTempEnable:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/ConnectSettings;Landroid/net/ConnectivityManager;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ConnectSettings;->retryUsbTethering(Landroid/net/ConnectivityManager;Z)Z

    move-result v0

    return v0
.end method

.method private activateNewConType(ILandroid/content/Context;)V
    .locals 8
    .parameter "newValue"
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 598
    const-string v0, "other"

    .line 599
    .local v0, autorun:Ljava/lang/String;
    sget-boolean v3, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "ConnectSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activateNewConType,newValue= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 752
    :goto_0
    const-string v3, "persist.sys.usb.autorun"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    new-instance v1, Landroid/content/Intent;

    const-string v3, "Action.write.autorun.mode"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 754
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/ConnectSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 755
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 604
    :pswitch_0
    sget-boolean v3, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "ConnectSettings"

    const-string v4, "activateNewConType,CON_USB_MASS_STORAGE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_2
    iget-object v3, p0, Lcom/android/settings/ConnectSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v4, "mass_storage"

    invoke-virtual {v3, v4, v6}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 620
    invoke-virtual {p0}, Lcom/android/settings/ConnectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    .line 622
    .local v2, putResult:Z
    sget-boolean v3, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "ConnectSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activateNewConType:CON_USB_MASS_STORAGE,putResult="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 625
    .restart local v1       #intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 626
    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.usb.UsbStorageActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    invoke-virtual {p0, v1}, Lcom/android/settings/ConnectSettings;->startActivity(Landroid/content/Intent;)V

    .line 628
    const-string v0, "other"

    .line 629
    goto :goto_0

    .line 633
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #putResult:Z
    :pswitch_1
    sget-boolean v3, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "ConnectSettings"

    const-string v4, "activateNewConType,CON_USB_DEBUG"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/ConnectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    .line 636
    .restart local v2       #putResult:Z
    sget-boolean v3, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v3, :cond_5

    const-string v3, "ConnectSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activateNewConType:CON_USB_DEBUG,putResult="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_5
    iget-object v3, p0, Lcom/android/settings/ConnectSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v4, "diag,modem,nmea,at,adb"

    invoke-virtual {v3, v4, v6}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 641
    sget-boolean v3, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v3, :cond_6

    const-string v3, "ConnectSettings"

    const-string v4, "activateNewConType:diag,modem,nmea,adb"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_6
    const-string v0, "sync"

    .line 649
    goto/16 :goto_0

    .line 654
    .end local v2           #putResult:Z
    :pswitch_2
    sget-boolean v3, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v3, :cond_7

    const-string v3, "ConnectSettings"

    const-string v4, "activateNewConType,TYPE_MTP"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 657
    sget-boolean v3, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "ConnectSettings"

    const-string v4, "USB host disconnect,can\'t set USB_FUNCTION_MTP!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 660
    :cond_8
    sget-boolean v3, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v3, :cond_9

    const-string v3, "ConnectSettings"

    const-string v4, "USB host connect,set USB_FUNCTION_MTP!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_9
    iget-object v3, p0, Lcom/android/settings/ConnectSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-eqz v3, :cond_c

    .line 663
    sget-boolean v3, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v3, :cond_a

    const-string v3, "ConnectSettings"

    const-string v4, "MTP:mUsbManager is not null! "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_a
    iget-object v3, p0, Lcom/android/settings/ConnectSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v4, "mtp"

    invoke-virtual {v3, v4, v6}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 670
    :cond_b
    :goto_2
    const-string v0, "other"

    .line 672
    goto/16 :goto_0

    .line 668
    :cond_c
    sget-boolean v3, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v3, :cond_b

    const-string v3, "ConnectSettings"

    const-string v4, "MTP:null pointer:mUsbManager! "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 676
    :pswitch_3
    sget-boolean v3, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v3, :cond_d

    const-string v3, "ConnectSettings"

    const-string v4, "activateNewConType,TYPE_PTP"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_d
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 679
    sget-boolean v3, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "ConnectSettings"

    const-string v4, "USB host disconnect,can\'t set USB_FUNCTION_PTP!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 682
    :cond_e
    sget-boolean v3, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v3, :cond_f

    const-string v3, "ConnectSettings"

    const-string v4, "USB host connect,set USB_FUNCTION_PTP!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_f
    iget-object v3, p0, Lcom/android/settings/ConnectSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-eqz v3, :cond_12

    .line 685
    sget-boolean v3, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v3, :cond_10

    const-string v3, "ConnectSettings"

    const-string v4, "PTP:mUsbManager is not null! "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_10
    iget-object v3, p0, Lcom/android/settings/ConnectSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v4, "ptp"

    invoke-virtual {v3, v4, v6}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 692
    :cond_11
    :goto_3
    const-string v0, "other"

    .line 694
    goto/16 :goto_0

    .line 690
    :cond_12
    sget-boolean v3, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v3, :cond_11

    const-string v3, "ConnectSettings"

    const-string v4, "PTP:null pointer:mUsbManager! "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 698
    :pswitch_4
    sget-boolean v3, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v3, :cond_13

    const-string v3, "ConnectSettings"

    const-string v4, "activateNewConType,CON_PTP_XP"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_13
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 701
    sget-boolean v3, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "ConnectSettings"

    const-string v4, "USB host disconnect,can\'t  CON_PTP_XP!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 704
    :cond_14
    iget-object v3, p0, Lcom/android/settings/ConnectSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-eqz v3, :cond_16

    .line 706
    iget-object v3, p0, Lcom/android/settings/ConnectSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v4, "mtp"

    invoke-virtual {v3, v4, v6}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 712
    :cond_15
    :goto_4
    const-string v0, "other"

    .line 713
    goto/16 :goto_0

    .line 710
    :cond_16
    sget-boolean v3, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v3, :cond_15

    const-string v3, "ConnectSettings"

    const-string v4, "MTP:null pointer:mUsbManager! "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 717
    :pswitch_5
    sget-boolean v3, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v3, :cond_17

    const-string v3, "ConnectSettings"

    const-string v4, "activateNewConType,TYPE_USB_TETHERING"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_17
    invoke-direct {p0, v6}, Lcom/android/settings/ConnectSettings;->startProvisioningIfNecessary(I)V

    .line 722
    const-string v0, "other"

    .line 723
    goto/16 :goto_0

    .line 728
    :pswitch_6
    iget-object v3, p0, Lcom/android/settings/ConnectSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v4, "cdrom"

    invoke-virtual {v3, v4, v6}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 729
    invoke-virtual {p0}, Lcom/android/settings/ConnectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    .line 731
    .restart local v2       #putResult:Z
    sget-boolean v3, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v3, :cond_18

    const-string v3, "ConnectSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activateNewConType:CON_CDROM,putResult="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_18
    const-string v3, "ConnectSettings"

    const-string v4, "activateNewConType:cdrom"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const-string v0, "cdrom"

    .line 734
    goto/16 :goto_0

    .line 739
    .end local v2           #putResult:Z
    :pswitch_7
    sget-boolean v3, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v3, :cond_19

    const-string v3, "ConnectSettings"

    const-string v4, "activateNewConType,CON_ISCHARGING"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_19
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 742
    sget-boolean v3, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "ConnectSettings"

    const-string v4, "USB host disconnect,can\'t  CON_ISCHARGING!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 745
    :cond_1a
    iget-object v3, p0, Lcom/android/settings/ConnectSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v4, "charge"

    invoke-virtual {v3, v4, v6}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 746
    const-string v0, "other"

    .line 747
    goto/16 :goto_0

    .line 600
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private buildList()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 514
    iget-object v9, p0, Lcom/android/settings/ConnectSettings;->mConnectTypeList:Landroid/preference/PreferenceGroup;

    if-nez v9, :cond_2

    .line 516
    sget-boolean v9, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "ConnectSettings"

    const-string v10, "mConnectTypeList is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ConnectSettings;->finish()V

    .line 574
    :cond_1
    return-void

    .line 522
    :cond_2
    iget-object v9, p0, Lcom/android/settings/ConnectSettings;->mConnectTypeList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 525
    invoke-virtual {p0}, Lcom/android/settings/ConnectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "connect_to_pc_default_type"

    invoke-static {v9, v10, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 527
    .local v1, currentType:I
    sget-boolean v9, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v9, :cond_3

    const-string v9, "ConnectSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "buildList:currentType="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, curTypeName:Ljava/lang/String;
    sget-boolean v9, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v9, :cond_4

    const-string v9, "ConnectSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "buildList:curTypeName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_4
    const/16 v3, 0x8

    .line 533
    .local v3, itemsum:I
    const/4 v6, 0x0

    .line 537
    .local v6, remove_usb_mass_storage:Z
    const/4 v2, 0x0

    .local v2, itemVal:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 539
    new-instance v5, Lcom/android/settings/ConnectPreference;

    invoke-direct {v5, p0}, Lcom/android/settings/ConnectPreference;-><init>(Landroid/content/Context;)V

    .line 542
    .local v5, pref:Lcom/android/settings/ConnectPreference;
    const/4 v9, 0x4

    if-ne v9, v2, :cond_6

    .line 544
    sget-boolean v9, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v9, :cond_5

    const-string v9, "ConnectSettings"

    const-string v10, "buildList:remove CON_PTP_XP"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 549
    :cond_6
    const/4 v9, 0x1

    if-ne v6, v9, :cond_7

    if-nez v2, :cond_7

    .line 551
    sget-boolean v9, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v9, :cond_5

    const-string v9, "ConnectSettings"

    const-string v10, "remove_usb_mass_storage && CON_USB_MASS_STORAGE,REMOVE!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 555
    :cond_7
    invoke-direct {p0, v2}, Lcom/android/settings/ConnectSettings;->converConTypeToKeyName(I)Ljava/lang/String;

    move-result-object v4

    .line 556
    .local v4, key:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/settings/ConnectSettings;->getPrefTitle(I)Ljava/lang/String;

    move-result-object v8

    .line 557
    .local v8, title:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/settings/ConnectSettings;->getPrefSummary(I)Ljava/lang/String;

    move-result-object v7

    .line 559
    .local v7, summary:Ljava/lang/String;
    invoke-virtual {v5, v4}, Lcom/android/settings/ConnectPreference;->setKey(Ljava/lang/String;)V

    .line 560
    invoke-virtual {v5, v7}, Lcom/android/settings/ConnectPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 561
    invoke-virtual {v5, v8}, Lcom/android/settings/ConnectPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 562
    invoke-virtual {v5, v12}, Lcom/android/settings/ConnectPreference;->setPersistent(Z)V

    .line 563
    invoke-virtual {v5, p0}, Lcom/android/settings/ConnectPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 564
    if-eqz v0, :cond_8

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 566
    invoke-virtual {v5}, Lcom/android/settings/ConnectPreference;->setChecked()V

    .line 569
    :cond_8
    sget-boolean v9, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v9, :cond_9

    const-string v9, "ConnectSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "buildList:curTypeName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",key:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_9
    iget-object v9, p0, Lcom/android/settings/ConnectSettings;->mConnectTypeList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private converConTypeToKeyName(I)Ljava/lang/String;
    .locals 4
    .parameter "conType"

    .prologue
    .line 383
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, keyName:Ljava/lang/String;
    sget-boolean v1, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "ConnectSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "converConTypeToKeyName:conType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 403
    :cond_1
    :goto_0
    return-object v0

    .line 396
    :pswitch_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 397
    sget-boolean v1, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "ConnectSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "converConTypeToKeyName:keyName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 385
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getPrefSummary(I)Ljava/lang/String;
    .locals 5
    .parameter "conType"

    .prologue
    const v4, 0x7f0b082a

    .line 460
    invoke-virtual {p0, v4}, Lcom/android/settings/ConnectSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, summary:Ljava/lang/String;
    sget-boolean v1, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "ConnectSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPrefSummary:conType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 507
    :goto_0
    sget-boolean v1, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "ConnectSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPrefSummary:summary="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_1
    return-object v0

    .line 466
    :pswitch_0
    const v1, 0x7f0b0828

    invoke-virtual {p0, v1}, Lcom/android/settings/ConnectSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 467
    goto :goto_0

    .line 471
    :pswitch_1
    const v1, 0x7f0b0829

    invoke-virtual {p0, v1}, Lcom/android/settings/ConnectSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 472
    goto :goto_0

    .line 476
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/android/settings/ConnectSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 477
    goto :goto_0

    .line 481
    :pswitch_3
    const v1, 0x7f0b082b

    invoke-virtual {p0, v1}, Lcom/android/settings/ConnectSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 482
    goto :goto_0

    .line 486
    :pswitch_4
    const v1, 0x7f0b082c

    invoke-virtual {p0, v1}, Lcom/android/settings/ConnectSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 487
    goto :goto_0

    .line 491
    :pswitch_5
    const v1, 0x7f0b082d

    invoke-virtual {p0, v1}, Lcom/android/settings/ConnectSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 492
    goto :goto_0

    .line 496
    :pswitch_6
    const v1, 0x7f0b082e

    invoke-virtual {p0, v1}, Lcom/android/settings/ConnectSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 497
    goto :goto_0

    .line 501
    :pswitch_7
    const v1, 0x7f0b07d7

    invoke-virtual {p0, v1}, Lcom/android/settings/ConnectSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 502
    goto :goto_0

    .line 462
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method private getPrefTitle(I)Ljava/lang/String;
    .locals 5
    .parameter "conType"

    .prologue
    const v4, 0x7f0b0823

    .line 407
    invoke-virtual {p0, v4}, Lcom/android/settings/ConnectSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, title:Ljava/lang/String;
    sget-boolean v1, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "ConnectSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "converConTypeToKeyName:conType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 454
    :goto_0
    sget-boolean v1, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "ConnectSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPrefTitle:title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_1
    return-object v0

    .line 413
    :pswitch_0
    const v1, 0x7f0b0821

    invoke-virtual {p0, v1}, Lcom/android/settings/ConnectSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 414
    goto :goto_0

    .line 418
    :pswitch_1
    const v1, 0x7f0b0822

    invoke-virtual {p0, v1}, Lcom/android/settings/ConnectSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 419
    goto :goto_0

    .line 423
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/android/settings/ConnectSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    goto :goto_0

    .line 428
    :pswitch_3
    const v1, 0x7f0b0824

    invoke-virtual {p0, v1}, Lcom/android/settings/ConnectSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 429
    goto :goto_0

    .line 433
    :pswitch_4
    const v1, 0x7f0b0825

    invoke-virtual {p0, v1}, Lcom/android/settings/ConnectSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 434
    goto :goto_0

    .line 438
    :pswitch_5
    const v1, 0x7f0b0826

    invoke-virtual {p0, v1}, Lcom/android/settings/ConnectSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 439
    goto :goto_0

    .line 443
    :pswitch_6
    const v1, 0x7f0b0827

    invoke-virtual {p0, v1}, Lcom/android/settings/ConnectSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 444
    goto :goto_0

    .line 448
    :pswitch_7
    const v1, 0x7f0b07d6

    invoke-virtual {p0, v1}, Lcom/android/settings/ConnectSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 449
    goto :goto_0

    .line 409
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method private retryUsbTethering(Landroid/net/ConnectivityManager;Z)Z
    .locals 1
    .parameter "cm"
    .parameter "enabled"

    .prologue
    .line 329
    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setUsbTethering(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    .line 272
    sget-boolean v2, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "ConnectSettings"

    const-string v3, "setUsbTethering"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/settings/ConnectSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 276
    .local v0, cm:Landroid/net/ConnectivityManager;
    const-string v2, "ConnectSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "test enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v1

    .line 278
    .local v1, temp:I
    const-string v2, "ConnectSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "test value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    if-eqz v1, :cond_1

    .line 282
    iput-boolean p1, p0, Lcom/android/settings/ConnectSettings;->mTempEnable:Z

    .line 283
    iget-object v2, p0, Lcom/android/settings/ConnectSettings;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/ConnectSettings;->mTurnUSBTetheringTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 285
    :cond_1
    return-void
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .parameter "choice"

    .prologue
    const/4 v4, 0x0

    .line 351
    iput p1, p0, Lcom/android/settings/ConnectSettings;->mTetherChoice:I

    .line 352
    sget-boolean v1, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "ConnectSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startProvisioningIfNecessary,mTetherChoice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/ConnectSettings;->mTetherChoice:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ConnectSettings;->isProvisioningNeeded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 354
    sget-boolean v1, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "ConnectSettings"

    const-string v2, "isProvisioningNeeded:true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/ConnectSettings;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings/ConnectSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/ConnectSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 362
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 359
    :cond_2
    sget-boolean v1, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "ConnectSettings"

    const-string v2, "isProvisioningNeeded:false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/ConnectSettings;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 3

    .prologue
    .line 338
    sget-boolean v0, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConnectSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTethering,mTetherChoice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ConnectSettings;->mTetherChoice:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    iget v0, p0, Lcom/android/settings/ConnectSettings;->mTetherChoice:I

    packed-switch v0, :pswitch_data_0

    .line 346
    sget-boolean v0, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "ConnectSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default:mTetherChoice"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ConnectSettings;->mTetherChoice:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_1
    :goto_0
    return-void

    .line 341
    :pswitch_0
    sget-boolean v0, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "ConnectSettings"

    const-string v1, "USB_TETHERING"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/ConnectSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 339
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method isProvisioningNeeded()Z
    .locals 3

    .prologue
    .line 333
    sget-boolean v0, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConnectSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isProvisioningNeeded:mProvisionApp.length= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ConnectSettings;->mProvisionApp:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ConnectSettings;->mProvisionApp:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 365
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 366
    sget-boolean v0, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConnectSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_0
    if-nez p1, :cond_2

    .line 368
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 369
    sget-boolean v0, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "ConnectSettings"

    const-string v1, "onActivityResult: 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/ConnectSettings;->startTethering()V

    .line 373
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 195
    sget-boolean v2, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "ConnectSettings"

    const-string v3, "Connect onCreate()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/ConnectSettings;->finish()V

    .line 205
    :cond_1
    const-string v2, "usb"

    invoke-virtual {p0, v2}, Lcom/android/settings/ConnectSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    iput-object v2, p0, Lcom/android/settings/ConnectSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 206
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/settings/ConnectSettings;->mHandler:Landroid/os/Handler;

    .line 207
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/settings/ConnectSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 210
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ConnectSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 211
    iget-object v2, p0, Lcom/android/settings/ConnectSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v2, v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 213
    .local v1, usbAvailable:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ConnectSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ConnectSettings;->mProvisionApp:[Ljava/lang/String;

    .line 216
    const v2, 0x7f05000c

    invoke-virtual {p0, v2}, Lcom/android/settings/ConnectSettings;->addPreferencesFromResource(I)V

    .line 218
    const-string v2, "connect_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings/ConnectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    iput-object v2, p0, Lcom/android/settings/ConnectSettings;->mConnectTypeList:Landroid/preference/PreferenceGroup;

    .line 220
    return-void

    .line 211
    .end local v1           #usbAvailable:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 377
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 378
    sget-boolean v0, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConnectSettings"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 579
    sget-boolean v0, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConnectSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    const/4 v0, 0x0

    .line 593
    .end local p2
    :goto_0
    return v0

    .line 586
    .restart local p2
    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 587
    sget-boolean v0, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "ConnectSettings"

    const-string v1, "onPreferenceChange() newValue instanceof String"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_2
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p0, p2}, Lcom/android/settings/ConnectSettings;->switchConType(Landroid/content/Context;Ljava/lang/String;)V

    .line 593
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 224
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 225
    sget-boolean v0, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConnectSettings"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ConnectSettings;->buildList()V

    .line 227
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 145
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 146
    sget-boolean v2, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "ConnectSettings"

    const-string v3, "onStart,begin"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    new-instance v2, Lcom/android/settings/ConnectSettings$TetherChangeReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/settings/ConnectSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/ConnectSettings;Lcom/android/settings/ConnectSettings$1;)V

    iput-object v2, p0, Lcom/android/settings/ConnectSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 155
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/settings/ConnectSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/ConnectSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 158
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 159
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/android/settings/ConnectSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/ConnectSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 163
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v2, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 166
    iget-object v2, p0, Lcom/android/settings/ConnectSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/ConnectSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    new-instance v2, Lcom/android/settings/ConnectSettings$UsbStateReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/settings/ConnectSettings$UsbStateReceiver;-><init>(Lcom/android/settings/ConnectSettings;Lcom/android/settings/ConnectSettings$1;)V

    iput-object v2, p0, Lcom/android/settings/ConnectSettings;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    .line 169
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 170
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lcom/android/settings/ConnectSettings;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/ConnectSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/ConnectSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, p0, v1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 174
    :cond_1
    sget-boolean v2, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "ConnectSettings"

    const-string v3, "onStart end"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 182
    sget-boolean v0, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConnectSettings"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ConnectSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/ConnectSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 184
    iput-object v2, p0, Lcom/android/settings/ConnectSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 186
    iget-object v0, p0, Lcom/android/settings/ConnectSettings;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/ConnectSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 187
    iput-object v2, p0, Lcom/android/settings/ConnectSettings;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    .line 189
    return-void
.end method

.method public switchConType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "newConTypeKey"

    .prologue
    const/4 v6, 0x0

    .line 760
    sget-boolean v3, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "ConnectSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchConType:newConTypeKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "connect_to_pc_default_type"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 765
    .local v0, curConType:I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 766
    .local v1, curConTypeName:Ljava/lang/String;
    sget-boolean v3, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "ConnectSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchConType:curConTypeName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 775
    if-nez v0, :cond_4

    .line 777
    sget-boolean v3, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "ConnectSettings"

    const-string v4, "switchConType,change CON_USB_MASS_STORAGE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_2
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 796
    .local v2, newConType:I
    sget-boolean v3, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "ConnectSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zhengcz newConType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_3
    invoke-direct {p0, v2, p1}, Lcom/android/settings/ConnectSettings;->activateNewConType(ILandroid/content/Context;)V

    .line 798
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "connect_to_pc_default_type"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 800
    invoke-virtual {p0}, Lcom/android/settings/ConnectSettings;->finish()V

    .line 802
    return-void

    .line 780
    .end local v2           #newConType:I
    :cond_4
    const/4 v3, 0x5

    if-ne v3, v0, :cond_2

    .line 782
    sget-boolean v3, Lcom/android/settings/ConnectSettings;->DBG:Z

    if-eqz v3, :cond_5

    const-string v3, "ConnectSettings"

    const-string v4, "switchConType,change TYPE_USB_TETHERING setUsbTethering(false)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_5
    invoke-direct {p0, v6}, Lcom/android/settings/ConnectSettings;->setUsbTethering(Z)V

    goto :goto_0
.end method
