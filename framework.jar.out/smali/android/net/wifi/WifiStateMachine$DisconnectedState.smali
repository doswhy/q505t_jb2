.class Landroid/net/wifi/WifiStateMachine$DisconnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectedState"
.end annotation


# instance fields
.field private mAlarmEnabled:Z

.field private mFrameworkScanIntervalMs:J

.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 1
    .parameter

    .prologue
    .line 3398
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 3399
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mAlarmEnabled:Z

    return-void
.end method

.method private setScanAlarm(Z)V
    .locals 7
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 3406
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mAlarmEnabled:Z

    if-ne p1, v0, :cond_1

    .line 3419
    :cond_0
    :goto_0
    return-void

    .line 3407
    :cond_1
    if-eqz p1, :cond_2

    .line 3408
    iget-wide v2, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanIntervalMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 3409
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$12000(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanIntervalMs:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanIntervalMs:J

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mScanIntent:Landroid/app/PendingIntent;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$20100(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 3413
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mAlarmEnabled:Z

    goto :goto_0

    .line 3416
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$12000(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mScanIntent:Landroid/app/PendingIntent;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$20100(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3417
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mAlarmEnabled:Z

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3425
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$2400(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3426
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$1000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2300d

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 3465
    :cond_0
    :goto_0
    return-void

    .line 3430
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_framework_scan_interval_ms"

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$20200(Landroid/net/wifi/WifiStateMachine;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanIntervalMs:J

    .line 3438
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3445
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$8100(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3446
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiNative;->enableBackgroundScan(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3447
    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->setScanAlarm(Z)V

    .line 3461
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$5800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 3462
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x20058

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$20304(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$6900(Landroid/net/wifi/WifiStateMachine;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 3449
    :cond_3
    invoke-direct {p0, v5}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->setScanAlarm(Z)V

    goto :goto_1

    .line 3453
    :cond_4
    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->setScanAlarm(Z)V

    goto :goto_1
.end method

.method public exit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3571
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3572
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->enableBackgroundScan(Z)Z

    .line 3574
    :cond_0
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->setScanAlarm(Z)V

    .line 3575
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 11
    .parameter "message"

    .prologue
    const v10, 0x20058

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3468
    const/4 v2, 0x1

    .line 3469
    .local v2, ret:Z
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 3563
    const/4 v2, 0x0

    .line 3565
    :cond_0
    :goto_0
    :sswitch_0
    return v2

    .line 3471
    :sswitch_1
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3472
    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$20300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v7

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$5800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 3474
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v7, 0x20047

    const/4 v9, -0x1

    invoke-virtual {v6, v7, v9}, Landroid/net/wifi/WifiStateMachine;->sendMessage(II)V

    .line 3475
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$20304(Landroid/net/wifi/WifiStateMachine;)I

    move-result v9

    invoke-virtual {v7, v10, v9, v8}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$6900(Landroid/net/wifi/WifiStateMachine;)J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 3484
    :sswitch_2
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$20304(Landroid/net/wifi/WifiStateMachine;)I

    move-result v9

    invoke-virtual {v7, v10, v9, v8}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$6900(Landroid/net/wifi/WifiStateMachine;)J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 3486
    const/4 v2, 0x0

    .line 3487
    goto :goto_0

    .line 3489
    :sswitch_3
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eq v6, v7, :cond_0

    .line 3490
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v7, p1, Landroid/os/Message;->arg1:I

    #setter for: Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v6, v7}, Landroid/net/wifi/WifiStateMachine;->access$8302(Landroid/net/wifi/WifiStateMachine;I)I

    .line 3491
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$10700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v7

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Landroid/net/wifi/WifiStateMachine;->access$20400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 3495
    :sswitch_4
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v7, :cond_1

    move v6, v7

    :goto_1
    #setter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v9, v6}, Landroid/net/wifi/WifiStateMachine;->access$1702(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 3496
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3497
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiNative;->enableBackgroundScan(Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3498
    invoke-direct {p0, v7}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->setScanAlarm(Z)V

    goto/16 :goto_0

    :cond_1
    move v6, v8

    .line 3495
    goto :goto_1

    .line 3500
    :cond_2
    invoke-direct {p0, v8}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->setScanAlarm(Z)V

    goto/16 :goto_0

    .line 3503
    :cond_3
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/net/wifi/WifiNative;->enableBackgroundScan(Z)Z

    .line 3504
    invoke-direct {p0, v7}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->setScanAlarm(Z)V

    goto/16 :goto_0

    .line 3511
    :sswitch_5
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/wifi/StateChangeResult;

    .line 3512
    .local v5, stateChangeResult:Landroid/net/wifi/StateChangeResult;
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v7, v5, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    invoke-static {v7}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    #calls: Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v6, v7}, Landroid/net/wifi/WifiStateMachine;->access$10500(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V

    .line 3514
    const/4 v2, 0x0

    .line 3515
    goto/16 :goto_0

    .line 3518
    .end local v5           #stateChangeResult:Landroid/net/wifi/StateChangeResult;
    :sswitch_6
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3519
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/net/wifi/WifiNative;->enableBackgroundScan(Z)Z

    .line 3522
    :cond_4
    const/4 v2, 0x0

    .line 3523
    goto/16 :goto_0

    .line 3526
    :sswitch_7
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$8100(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3527
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiNative;->enableBackgroundScan(Z)Z

    move-result v6

    if-nez v6, :cond_6

    .line 3528
    invoke-direct {p0, v7}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->setScanAlarm(Z)V

    .line 3534
    :cond_5
    :goto_2
    const/4 v2, 0x0

    .line 3535
    goto/16 :goto_0

    .line 3530
    :cond_6
    invoke-direct {p0, v8}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->setScanAlarm(Z)V

    goto :goto_2

    .line 3537
    :sswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    .line 3538
    .local v1, info:Landroid/net/NetworkInfo;
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3539
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 3540
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 3542
    .local v0, defaultInterval:I
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wifi_scan_interval_p2p_connected_ms"

    int-to-long v8, v0

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 3545
    .local v3, scanIntervalMs:J
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    long-to-int v7, v3

    div-int/lit16 v7, v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiNative;->setScanInterval(I)V

    .line 3553
    .end local v0           #defaultInterval:I
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v3           #scanIntervalMs:J
    :cond_7
    :goto_3
    :sswitch_9
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$2400(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3559
    const/4 v2, 0x0

    .line 3561
    goto/16 :goto_0

    .line 3546
    .restart local v1       #info:Landroid/net/NetworkInfo;
    :cond_8
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$5800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_7

    .line 3548
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$20304(Landroid/net/wifi/WifiStateMachine;)I

    move-result v9

    invoke-virtual {v7, v10, v9, v8}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$6900(Landroid/net/wifi/WifiStateMachine;)J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_3

    .line 3469
    nop

    :sswitch_data_0
    .sparse-switch
        0x20035 -> :sswitch_2
        0x20047 -> :sswitch_6
        0x20048 -> :sswitch_3
        0x2004a -> :sswitch_9
        0x2004b -> :sswitch_9
        0x20058 -> :sswitch_1
        0x2005b -> :sswitch_4
        0x2300b -> :sswitch_8
        0x24004 -> :sswitch_0
        0x24005 -> :sswitch_7
        0x24006 -> :sswitch_5
        0x25004 -> :sswitch_2
    .end sparse-switch
.end method
