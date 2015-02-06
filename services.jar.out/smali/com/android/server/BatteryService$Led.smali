.class final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Led"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryService$Led$SettingsObserver;
    }
.end annotation


# instance fields
.field private final mBatteryFullARGB:I

.field private mBatteryLedOff:I

.field private mBatteryLedOn:I

.field private final mBatteryLight:Lcom/android/server/LightsService$Light;

.field private final mBatteryLowARGB:I

.field private final mBatteryMediumARGB:I

.field private mObserver:Lcom/android/server/BatteryService$Led$SettingsObserver;

.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/LightsService;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "lights"

    .prologue
    .line 694
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 695
    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    .line 697
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:integer@config_notificationsBatteryLowARGB#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 699
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:integer@config_notificationsBatteryMediumARGB#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 701
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:integer@config_notificationsBatteryFullARGB#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 703
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:integer@config_notificationsBatteryLedOn#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 705
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:integer@config_notificationsBatteryLedOff#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService$Led;->createSettingsObserver()V

    .line 707
    iput-object p2, p0, Lcom/android/server/BatteryService$Led;->mContext:Landroid/content/Context;

    .line 708
    return-void
.end method


# virtual methods
.method public updateLightsLocked()V
    .locals 8

    .prologue
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService$Led;->updateLightsLockedHook()Z

    move-result v0

    if-eqz v0, :cond_baidu_0

    goto :goto_baidu_0

    :cond_baidu_0

    const/4 v5, 0x5

    const/4 v4, 0x2

    .line 714
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)I

    move-result v0

    .line 715
    .local v0, level:I
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryStatus:I
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)I

    move-result v1

    .line 716
    .local v1, status:I
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)I

    move-result v3

    if-ge v0, v3, :cond_2

    if-ne v1, v4, :cond_0

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    invoke-virtual {v3, v4}, Lcom/android/server/LightsService$Light;->setColor(I)V

    :goto_0
    :goto_baidu_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "save_power_management"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 724
    .local v2, values:I
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateLightsLocked values="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_1

    .line 729
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateLightsLocked wutao change mBatteryLedOn1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v3}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto :goto_0

    .line 735
    :cond_1
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    const/4 v5, 0x1

    iget v6, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v7, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto :goto_0

    .line 738
    .end local v2           #values:I
    :cond_2
    if-eq v1, v4, :cond_3

    if-ne v1, v5, :cond_6

    .line 740
    :cond_3
    if-eq v1, v5, :cond_4

    const/16 v3, 0x64

    if-lt v0, v3, :cond_5

    .line 742
    :cond_4
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {v3, v4}, Lcom/android/server/LightsService$Light;->setColor(I)V

    goto :goto_0

    .line 748
    :cond_5
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    invoke-virtual {v3, v4}, Lcom/android/server/LightsService$Light;->setColor(I)V

    goto :goto_0

    .line 752
    :cond_6
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v3}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto :goto_0
.end method

.method static synthetic access$iget-mBatteryLight-61288f(Lcom/android/server/BatteryService$Led;)Lcom/android/server/LightsService$Light;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    return-object v0
.end method

.method static synthetic access$iget-mBatteryLedOn-1d5160(Lcom/android/server/BatteryService$Led;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    return v0
.end method

.method static synthetic access$iget-mBatteryLedOff-cc2be1(Lcom/android/server/BatteryService$Led;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    return v0
.end method

.method private createSettingsObserver()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/server/BatteryService$Led$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$Led$SettingsObserver;-><init>(Lcom/android/server/BatteryService$Led;)V

    iput-object v0, p0, Lcom/android/server/BatteryService$Led;->mObserver:Lcom/android/server/BatteryService$Led$SettingsObserver;

    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mObserver:Lcom/android/server/BatteryService$Led$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/BatteryService$Led$SettingsObserver;->observe()V

    return-void
.end method

.method private updateLightsLockedHook()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mObserver:Lcom/android/server/BatteryService$Led$SettingsObserver;

    #calls: Lcom/android/server/BatteryService$Led$SettingsObserver;->updateLightPulse()Z
    invoke-static {v0}, Lcom/android/server/BatteryService$Led$SettingsObserver;->access$invoke-updateLightPulse-fe2949(Lcom/android/server/BatteryService$Led$SettingsObserver;)Z

    const/4 v0, 0x1

    return v0
.end method
