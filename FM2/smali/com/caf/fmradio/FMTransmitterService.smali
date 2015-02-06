.class public Lcom/caf/fmradio/FMTransmitterService;
.super Landroid/app/Service;
.source "FMTransmitterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caf/fmradio/FMTransmitterService$Metadata;,
        Lcom/caf/fmradio/FMTransmitterService$RdsDisplay;,
        Lcom/caf/fmradio/FMTransmitterService$ServiceStub;
    }
.end annotation


# static fields
.field private static RText:Ljava/lang/String;

.field private static mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

.field private static mReceiver:Lqcom/fmradio/FmReceiver;

.field private static mTransmitter:Lqcom/fmradio/FmTransmitter;


# instance fields
.field fmCallbacks:Lqcom/fmradio/FmRxEvCallbacksAdaptor;

.field private mA2dpDeviceState:Lcom/caf/utils/A2dpDeviceStatus;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mBinder:Landroid/os/IBinder;

.field private mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

.field final mChangeFMTxState:Ljava/lang/Runnable;

.field private mDelayedStopHandler:Landroid/os/Handler;

.field private mFMOn:Z

.field private mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

.field private mFMSearchStations:I

.field final mHandler:Landroid/os/Handler;

.field mHeadsetPlugged:Z

.field private mHeadsetReceiver:Landroid/content/BroadcastReceiver;

.field private mMetadata:Lcom/caf/fmradio/FMTransmitterService$Metadata;

.field private mMuted:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mRds:Lcom/caf/fmradio/FMTransmitterService$RdsDisplay;

.field private mResumeAfterCall:Z

.field private mServiceInUse:Z

.field private mServiceStartId:I

.field private mTunedFrequency:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private transmitCallbacks:Lqcom/fmradio/FmTransmitterCallbacksAdaptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-string v0, " "

    sput-object v0, Lcom/caf/fmradio/FMTransmitterService;->RText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 89
    iput v1, p0, Lcom/caf/fmradio/FMTransmitterService;->mTunedFrequency:I

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/caf/fmradio/FMTransmitterService;->mServiceStartId:I

    .line 95
    iput-boolean v1, p0, Lcom/caf/fmradio/FMTransmitterService;->mServiceInUse:Z

    .line 96
    iput-boolean v1, p0, Lcom/caf/fmradio/FMTransmitterService;->mMuted:Z

    .line 97
    iput-boolean v1, p0, Lcom/caf/fmradio/FMTransmitterService;->mResumeAfterCall:Z

    .line 99
    iput-boolean v1, p0, Lcom/caf/fmradio/FMTransmitterService;->mFMOn:Z

    .line 100
    iput v1, p0, Lcom/caf/fmradio/FMTransmitterService;->mFMSearchStations:I

    .line 102
    iput-object v2, p0, Lcom/caf/fmradio/FMTransmitterService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterService;->mHandler:Landroid/os/Handler;

    .line 104
    iput-object v2, p0, Lcom/caf/fmradio/FMTransmitterService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    iput-boolean v1, p0, Lcom/caf/fmradio/FMTransmitterService;->mHeadsetPlugged:Z

    .line 107
    iput-object v2, p0, Lcom/caf/fmradio/FMTransmitterService;->mA2dpDeviceState:Lcom/caf/utils/A2dpDeviceStatus;

    .line 227
    new-instance v0, Lcom/caf/fmradio/FMTransmitterService$1;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMTransmitterService$1;-><init>(Lcom/caf/fmradio/FMTransmitterService;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 266
    new-instance v0, Lcom/caf/fmradio/FMTransmitterService$2;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMTransmitterService$2;-><init>(Lcom/caf/fmradio/FMTransmitterService;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 415
    new-instance v0, Lcom/caf/fmradio/FMTransmitterService$ServiceStub;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMTransmitterService$ServiceStub;-><init>(Lcom/caf/fmradio/FMTransmitterService;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterService;->mBinder:Landroid/os/IBinder;

    .line 867
    new-instance v0, Lcom/caf/fmradio/FMTransmitterService$3;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMTransmitterService$3;-><init>(Lcom/caf/fmradio/FMTransmitterService;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterService;->transmitCallbacks:Lqcom/fmradio/FmTransmitterCallbacksAdaptor;

    .line 967
    new-instance v0, Lcom/caf/fmradio/FMTransmitterService$4;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMTransmitterService$4;-><init>(Lcom/caf/fmradio/FMTransmitterService;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterService;->fmCallbacks:Lqcom/fmradio/FmRxEvCallbacksAdaptor;

    .line 1087
    new-instance v0, Lcom/caf/fmradio/FMTransmitterService$6;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMTransmitterService$6;-><init>(Lcom/caf/fmradio/FMTransmitterService;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterService;->mChangeFMTxState:Ljava/lang/Runnable;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/caf/fmradio/FMTransmitterService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/caf/fmradio/FMTransmitterService;->fmActionOnCallState(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/caf/fmradio/FMTransmitterService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/caf/fmradio/FMTransmitterService;->mServiceInUse:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/caf/fmradio/FMTransmitterService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/caf/fmradio/FMTransmitterService;->mFMOn:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/caf/fmradio/FMTransmitterService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/caf/fmradio/FMTransmitterService;->mFMOn:Z

    return p1
.end method

.method static synthetic access$1100()Lqcom/fmradio/FmReceiver;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/caf/fmradio/FMTransmitterService;->mReceiver:Lqcom/fmradio/FmReceiver;

    return-object v0
.end method

.method static synthetic access$1102(Lqcom/fmradio/FmReceiver;)Lqcom/fmradio/FmReceiver;
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    sput-object p0, Lcom/caf/fmradio/FMTransmitterService;->mReceiver:Lqcom/fmradio/FmReceiver;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/caf/fmradio/FMTransmitterService;)Lcom/caf/utils/A2dpDeviceStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterService;->mA2dpDeviceState:Lcom/caf/utils/A2dpDeviceStatus;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/caf/fmradio/FMTransmitterService;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/caf/fmradio/FMTransmitterService;->updateMetadata(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/caf/fmradio/FMTransmitterService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/caf/fmradio/FMTransmitterService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$300(Lcom/caf/fmradio/FMTransmitterService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterService;->fmOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/caf/fmradio/FMTransmitterService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterService;->fmOff()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/caf/fmradio/FMTransmitterService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterService;->fmRadioReset()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/caf/fmradio/FMTransmitterService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterService;->fmRestart()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/caf/fmradio/FMTransmitterService;)Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    return-object v0
.end method

.method static synthetic access$800()Lqcom/fmradio/FmTransmitter;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/caf/fmradio/FMTransmitterService;->mTransmitter:Lqcom/fmradio/FmTransmitter;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/caf/fmradio/FMTransmitterService;->RText:Ljava/lang/String;

    return-object v0
.end method

.method private fmActionOnCallState(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 240
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/caf/fmradio/FMTransmitterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 241
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eq v3, p1, :cond_0

    if-ne v4, p1, :cond_3

    .line 243
    :cond_0
    if-ne p1, v4, :cond_2

    .line 244
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 245
    .local v1, ringvolume:I
    if-nez v1, :cond_2

    .line 264
    .end local v1           #ringvolume:I
    :cond_1
    :goto_0
    return-void

    .line 249
    :cond_2
    iget-boolean v2, p0, Lcom/caf/fmradio/FMTransmitterService;->mFMOn:Z

    if-ne v2, v4, :cond_1

    .line 250
    const-string v2, "FMTxService"

    const-string v3, "posting for call state change"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterService;->mChangeFMTxState:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 252
    iput-boolean v4, p0, Lcom/caf/fmradio/FMTransmitterService;->mResumeAfterCall:Z

    goto :goto_0

    .line 255
    :cond_3
    if-nez p1, :cond_1

    .line 257
    iget-boolean v2, p0, Lcom/caf/fmradio/FMTransmitterService;->mResumeAfterCall:Z

    if-eqz v2, :cond_1

    .line 259
    const-string v2, "FMTxService"

    const-string v3, "posting for call state change"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterService;->mChangeFMTxState:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/caf/fmradio/FMTransmitterService;->mResumeAfterCall:Z

    goto :goto_0
.end method

.method private fmOff()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 519
    const/4 v0, 0x0

    .line 520
    .local v0, bStatus:Z
    const-string v1, "FMTxService"

    const-string v2, "fmOff"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterService;->fmOperationsOff()V

    .line 525
    sget-object v1, Lcom/caf/fmradio/FMTransmitterService;->mTransmitter:Lqcom/fmradio/FmTransmitter;

    if-eqz v1, :cond_0

    .line 527
    sget-object v1, Lcom/caf/fmradio/FMTransmitterService;->mTransmitter:Lqcom/fmradio/FmTransmitter;

    invoke-virtual {v1}, Lqcom/fmradio/FmTransmitter;->disable()Z

    move-result v0

    .line 528
    sput-object v3, Lcom/caf/fmradio/FMTransmitterService;->mTransmitter:Lqcom/fmradio/FmTransmitter;

    .line 531
    :cond_0
    sget-object v1, Lcom/caf/fmradio/FMTransmitterService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v1, :cond_1

    .line 533
    sget-object v1, Lcom/caf/fmradio/FMTransmitterService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v1}, Lqcom/fmradio/FmReceiver;->disable()Z

    move-result v0

    .line 534
    sput-object v3, Lcom/caf/fmradio/FMTransmitterService;->mReceiver:Lqcom/fmradio/FmReceiver;

    .line 536
    :cond_1
    const-string v1, " "

    sput-object v1, Lcom/caf/fmradio/FMTransmitterService;->RText:Ljava/lang/String;

    .line 537
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterService;->stop()V

    .line 538
    return v0
.end method

.method private fmOn()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 422
    const/4 v1, 0x0

    .line 424
    .local v1, bStatus:Z
    const-string v5, "FMTxService"

    const-string v6, "fmOn"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v5, p0, Lcom/caf/fmradio/FMTransmitterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 426
    sget-object v5, Lcom/caf/fmradio/FMTransmitterService;->mTransmitter:Lqcom/fmradio/FmTransmitter;

    if-nez v5, :cond_0

    .line 428
    :try_start_0
    new-instance v5, Lqcom/fmradio/FmTransmitter;

    const-string v6, "/dev/radio0"

    iget-object v7, p0, Lcom/caf/fmradio/FMTransmitterService;->transmitCallbacks:Lqcom/fmradio/FmTransmitterCallbacksAdaptor;

    invoke-direct {v5, v6, v7}, Lqcom/fmradio/FmTransmitter;-><init>(Ljava/lang/String;Lqcom/fmradio/FmTransmitterCallbacksAdaptor;)V

    sput-object v5, Lcom/caf/fmradio/FMTransmitterService;->mTransmitter:Lqcom/fmradio/FmTransmitter;

    .line 429
    const-string v5, "FMTxService"

    const-string v6, "new transmitter created"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :cond_0
    sget-object v5, Lcom/caf/fmradio/FMTransmitterService;->mTransmitter:Lqcom/fmradio/FmTransmitter;

    if-eqz v5, :cond_2

    .line 436
    invoke-virtual {p0}, Lcom/caf/fmradio/FMTransmitterService;->isFmOn()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 439
    const/4 v1, 0x1

    .line 441
    :try_start_1
    iget-object v5, p0, Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    if-eqz v5, :cond_1

    .line 442
    iget-object v5, p0, Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;->onEnabled(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 447
    :cond_1
    :goto_0
    const-string v5, "FMTxService"

    const-string v6, "mTransmitter is enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :goto_1
    if-ne v8, v1, :cond_9

    .line 483
    sget-object v5, Lcom/caf/fmradio/FMTransmitterService;->mTransmitter:Lqcom/fmradio/FmTransmitter;

    invoke-virtual {v5}, Lqcom/fmradio/FmTransmitter;->setRdsOn()Z

    move-result v1

    .line 484
    if-eq v8, v1, :cond_7

    .line 485
    const-string v5, "FMTxService"

    const-string v6, "FMTx setRdsOn failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    move v2, v1

    .line 499
    .end local v1           #bStatus:Z
    .local v2, bStatus:Z
    :goto_3
    return v2

    .line 430
    .end local v2           #bStatus:Z
    .restart local v1       #bStatus:Z
    :catch_0
    move-exception v4

    .line 431
    .local v4, e:Ljava/lang/InstantiationException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "FmTx service not available!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 444
    .end local v4           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v4

    .line 445
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 452
    .end local v4           #e:Landroid/os/RemoteException;
    :cond_3
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getFMConfiguration()Lqcom/fmradio/FmConfig;

    move-result-object v3

    .line 453
    .local v3, config:Lqcom/fmradio/FmConfig;
    const-string v5, "FMTxService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fmOn: RadioBand   :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lqcom/fmradio/FmConfig;->getRadioBand()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const-string v5, "FMTxService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fmOn: Emphasis    :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lqcom/fmradio/FmConfig;->getEmphasis()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const-string v5, "FMTxService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fmOn: ChSpacing   :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lqcom/fmradio/FmConfig;->getChSpacing()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const-string v5, "FMTxService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fmOn: RdsStd      :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lqcom/fmradio/FmConfig;->getRdsStd()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const-string v5, "FMTxService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fmOn: LowerLimit  :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lqcom/fmradio/FmConfig;->getLowerLimit()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-string v5, "FMTxService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fmOn: UpperLimit  :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lqcom/fmradio/FmConfig;->getUpperLimit()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v0, 0x0

    .line 462
    .local v0, bFmRxEnabled:Z
    iget-object v5, p0, Lcom/caf/fmradio/FMTransmitterService;->mA2dpDeviceState:Lcom/caf/utils/A2dpDeviceStatus;

    invoke-virtual {v5}, Lcom/caf/utils/A2dpDeviceStatus;->isDeviceAvailable()Z

    move-result v5

    if-nez v5, :cond_4

    .line 463
    sget-object v5, Lcom/caf/fmradio/FMTransmitterService;->mTransmitter:Lqcom/fmradio/FmTransmitter;

    invoke-virtual {v5, v3}, Lqcom/fmradio/FmTransmitter;->enable(Lqcom/fmradio/FmConfig;)Z

    move-result v1

    .line 465
    :cond_4
    if-nez v1, :cond_5

    .line 466
    const-string v5, "FMTxService"

    const-string v6, "FM Enable failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 467
    .end local v1           #bStatus:Z
    .restart local v2       #bStatus:Z
    goto/16 :goto_3

    .line 469
    .end local v2           #bStatus:Z
    .restart local v1       #bStatus:Z
    :cond_5
    sget-object v5, Lcom/caf/fmradio/FMTransmitterService;->mTransmitter:Lqcom/fmradio/FmTransmitter;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lqcom/fmradio/FmTransmitter;->setTxPowerLevel(I)Z

    move-result v1

    .line 471
    if-nez v1, :cond_6

    .line 472
    const-string v5, "FMTxService"

    const-string v6, "FM setPowerLevel failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 473
    .end local v1           #bStatus:Z
    .restart local v2       #bStatus:Z
    goto/16 :goto_3

    .line 476
    .end local v2           #bStatus:Z
    .restart local v1       #bStatus:Z
    :cond_6
    const-string v5, "FMTxService"

    const-string v6, "FMTx is on: Requesting to start FM TX"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/high16 v5, 0x10

    const-string v6, ""

    invoke-static {v5, v8, v6}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    goto/16 :goto_1

    .line 487
    .end local v0           #bFmRxEnabled:Z
    .end local v3           #config:Lqcom/fmradio/FmConfig;
    :cond_7
    sget-object v5, Lcom/caf/fmradio/FMTransmitterService;->mTransmitter:Lqcom/fmradio/FmTransmitter;

    invoke-virtual {v5}, Lqcom/fmradio/FmTransmitter;->getInternalAntenna()Z

    move-result v5

    if-nez v5, :cond_8

    .line 488
    const-string v5, "FMTxService"

    const-string v6, "Setting internal antenna explicitly"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    sget-object v5, Lcom/caf/fmradio/FMTransmitterService;->mTransmitter:Lqcom/fmradio/FmTransmitter;

    invoke-virtual {v5, v8}, Lqcom/fmradio/FmTransmitter;->setInternalAntenna(Z)Z

    .line 491
    :cond_8
    invoke-virtual {p0}, Lcom/caf/fmradio/FMTransmitterService;->startNotification()V

    goto/16 :goto_2

    .line 496
    :cond_9
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterService;->stop()V

    goto/16 :goto_2
.end method

.method private fmOperationsOff()V
    .locals 3

    .prologue
    .line 507
    const-string v0, "FMTxService"

    const-string v1, "fmOperationsOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const-string v0, "FMTxService"

    const-string v1, "FMTx is off: Requesting to stop FM Tx"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/high16 v0, 0x10

    const/4 v1, 0x0

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 512
    return-void
.end method

.method private fmRadioReset()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 546
    const/4 v0, 0x0

    .line 547
    .local v0, bStatus:Z
    const-string v1, "FMTxService"

    const-string v2, "fmRadioReset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterService;->fmOperationsOff()V

    .line 551
    sget-object v1, Lcom/caf/fmradio/FMTransmitterService;->mTransmitter:Lqcom/fmradio/FmTransmitter;

    if-eqz v1, :cond_0

    .line 553
    sget-object v1, Lcom/caf/fmradio/FMTransmitterService;->mTransmitter:Lqcom/fmradio/FmTransmitter;

    invoke-virtual {v1}, Lqcom/fmradio/FmTransmitter;->reset()Z

    move-result v0

    .line 554
    sput-object v3, Lcom/caf/fmradio/FMTransmitterService;->mTransmitter:Lqcom/fmradio/FmTransmitter;

    .line 557
    :cond_0
    sget-object v1, Lcom/caf/fmradio/FMTransmitterService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v1, :cond_1

    .line 559
    sget-object v1, Lcom/caf/fmradio/FMTransmitterService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v1}, Lqcom/fmradio/FmReceiver;->reset()Z

    move-result v0

    .line 560
    sput-object v3, Lcom/caf/fmradio/FMTransmitterService;->mReceiver:Lqcom/fmradio/FmReceiver;

    .line 562
    :cond_1
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterService;->stop()V

    .line 563
    return v0
.end method

.method private fmRestart()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 574
    const/4 v0, 0x0

    .line 575
    .local v0, bStatus:Z
    const-string v2, "FMTxService"

    const-string v3, "fmRestart"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    sget-object v2, Lcom/caf/fmradio/FMTransmitterService;->mTransmitter:Lqcom/fmradio/FmTransmitter;

    if-eqz v2, :cond_0

    .line 580
    sget-object v2, Lcom/caf/fmradio/FMTransmitterService;->mTransmitter:Lqcom/fmradio/FmTransmitter;

    invoke-virtual {v2}, Lqcom/fmradio/FmTransmitter;->disable()Z

    move-result v0

    .line 581
    sput-object v4, Lcom/caf/fmradio/FMTransmitterService;->mTransmitter:Lqcom/fmradio/FmTransmitter;

    .line 582
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/caf/fmradio/FMTransmitterService;->mFMOn:Z

    .line 586
    :cond_0
    sget-object v2, Lcom/caf/fmradio/FMTransmitterService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v2, :cond_1

    .line 588
    sget-object v2, Lcom/caf/fmradio/FMTransmitterService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v2}, Lqcom/fmradio/FmReceiver;->disable()Z

    move-result v0

    .line 589
    sput-object v4, Lcom/caf/fmradio/FMTransmitterService;->mReceiver:Lqcom/fmradio/FmReceiver;

    .line 592
    :cond_1
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :goto_0
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterService;->fmOn()Z

    move-result v0

    .line 598
    return v0

    .line 594
    :catch_0
    move-exception v1

    .line 595
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "FMTxService"

    const-string v3, "RunningThread InterruptedException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getMdString(Landroid/os/Bundle;I)Ljava/lang/String;
    .locals 1
    .parameter "data"
    .parameter "id"

    .prologue
    .line 1182
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTunedFrequencyString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1028
    iget v3, p0, Lcom/caf/fmradio/FMTransmitterService;->mTunedFrequency:I

    int-to-double v3, v3

    const-wide v5, 0x408f400000000000L

    div-double v0, v3, v5

    .line 1029
    .local v0, frequency:D
    const v3, 0x7f060044

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/caf/fmradio/FMTransmitterService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1030
    .local v2, frequencyString:Ljava/lang/String;
    return-object v2
.end method

.method private gotoIdleState()V
    .locals 4

    .prologue
    .line 311
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 312
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 313
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 318
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/caf/fmradio/FMTransmitterService;->stopForeground(Z)V

    .line 319
    return-void
.end method

.method private stop()V
    .locals 1

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterService;->gotoIdleState()V

    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/caf/fmradio/FMTransmitterService;->mFMOn:Z

    .line 308
    return-void
.end method

.method private updateMetadata(Landroid/os/Bundle;)V
    .locals 6
    .parameter "data"

    .prologue
    .line 1186
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterService;->mMetadata:Lcom/caf/fmradio/FMTransmitterService$Metadata;

    invoke-virtual {v2}, Lcom/caf/fmradio/FMTransmitterService$Metadata;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1187
    .local v1, oldMetadata:Ljava/lang/String;
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterService;->mMetadata:Lcom/caf/fmradio/FMTransmitterService$Metadata;

    const/16 v3, 0xd

    invoke-direct {p0, p1, v3}, Lcom/caf/fmradio/FMTransmitterService;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/caf/fmradio/FMTransmitterService$Metadata;->artist:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/caf/fmradio/FMTransmitterService$Metadata;->access$1402(Lcom/caf/fmradio/FMTransmitterService$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 1188
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterService;->mMetadata:Lcom/caf/fmradio/FMTransmitterService$Metadata;

    const/4 v3, 0x7

    invoke-direct {p0, p1, v3}, Lcom/caf/fmradio/FMTransmitterService;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/caf/fmradio/FMTransmitterService$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/caf/fmradio/FMTransmitterService$Metadata;->access$1502(Lcom/caf/fmradio/FMTransmitterService$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 1189
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterService;->mMetadata:Lcom/caf/fmradio/FMTransmitterService$Metadata;

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/caf/fmradio/FMTransmitterService;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/caf/fmradio/FMTransmitterService$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/caf/fmradio/FMTransmitterService$Metadata;->access$1602(Lcom/caf/fmradio/FMTransmitterService$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 1190
    const-string v2, "FMTxService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMetadata="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/caf/fmradio/FMTransmitterService;->mMetadata:Lcom/caf/fmradio/FMTransmitterService$Metadata;

    invoke-virtual {v4}, Lcom/caf/fmradio/FMTransmitterService$Metadata;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    sget-object v2, Lcom/caf/fmradio/FMTransmitterService;->mTransmitter:Lqcom/fmradio/FmTransmitter;

    if-eqz v2, :cond_0

    .line 1192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterService;->mMetadata:Lcom/caf/fmradio/FMTransmitterService$Metadata;

    #getter for: Lcom/caf/fmradio/FMTransmitterService$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterService$Metadata;->access$1600(Lcom/caf/fmradio/FMTransmitterService$Metadata;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterService;->mMetadata:Lcom/caf/fmradio/FMTransmitterService$Metadata;

    #getter for: Lcom/caf/fmradio/FMTransmitterService$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterService$Metadata;->access$1500(Lcom/caf/fmradio/FMTransmitterService$Metadata;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterService;->mMetadata:Lcom/caf/fmradio/FMTransmitterService$Metadata;

    #getter for: Lcom/caf/fmradio/FMTransmitterService$Metadata;->artist:Ljava/lang/String;
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterService$Metadata;->access$1400(Lcom/caf/fmradio/FMTransmitterService$Metadata;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/caf/fmradio/FMTransmitterService;->RText:Ljava/lang/String;

    .line 1193
    const-string v2, "FMTxService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RT string size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/caf/fmradio/FMTransmitterService;->RText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    sget-object v2, Lcom/caf/fmradio/FMTransmitterService;->mTransmitter:Lqcom/fmradio/FmTransmitter;

    sget-object v3, Lcom/caf/fmradio/FMTransmitterService;->RText:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x1234

    invoke-virtual {v2, v3, v4, v5}, Lqcom/fmradio/FmTransmitter;->startRTInfo(Ljava/lang/String;II)Z

    .line 1198
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    if-eqz v2, :cond_1

    .line 1199
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    sget-object v3, Lcom/caf/fmradio/FMTransmitterService;->RText:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;->onMetaDataChanged(Ljava/lang/String;)V

    .line 1206
    :goto_0
    return-void

    .line 1201
    :cond_1
    const-string v2, "FMTxService"

    const-string v3, "callback is not there"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1203
    :catch_0
    move-exception v0

    .line 1204
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public cancelSearch()Z
    .locals 5

    .prologue
    .line 776
    const/4 v0, 0x0

    .line 777
    .local v0, bStatus:Z
    sget-object v2, Lcom/caf/fmradio/FMTransmitterService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v2, :cond_0

    .line 779
    sget-object v2, Lcom/caf/fmradio/FMTransmitterService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v2}, Lqcom/fmradio/FmReceiver;->cancelSearch()Z

    move-result v0

    .line 780
    const-string v2, "FMTxService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mReceiver.cancelSearch: bStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :try_start_0
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    if-eqz v2, :cond_0

    .line 785
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;->onSearchListComplete(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    :cond_0
    :goto_0
    return v0

    .line 787
    :catch_0
    move-exception v1

    .line 789
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public fmReconfigure()Z
    .locals 6

    .prologue
    .line 622
    const/4 v0, 0x0

    .line 623
    .local v0, bStatus:Z
    const-string v3, "FMTxService"

    const-string v4, "fmReconfigure"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    sget-object v3, Lcom/caf/fmradio/FMTransmitterService;->mTransmitter:Lqcom/fmradio/FmTransmitter;

    if-eqz v3, :cond_0

    .line 627
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getFMConfiguration()Lqcom/fmradio/FmConfig;

    move-result-object v1

    .line 628
    .local v1, config:Lqcom/fmradio/FmConfig;
    const-string v3, "FMTxService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RadioBand   :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lqcom/fmradio/FmConfig;->getRadioBand()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const-string v3, "FMTxService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Emphasis    :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lqcom/fmradio/FmConfig;->getEmphasis()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const-string v3, "FMTxService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ChSpacing   :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lqcom/fmradio/FmConfig;->getChSpacing()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const-string v3, "FMTxService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RdsStd      :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lqcom/fmradio/FmConfig;->getRdsStd()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const-string v3, "FMTxService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LowerLimit  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lqcom/fmradio/FmConfig;->getLowerLimit()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const-string v3, "FMTxService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpperLimit  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lqcom/fmradio/FmConfig;->getUpperLimit()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    sget-object v3, Lcom/caf/fmradio/FMTransmitterService;->mTransmitter:Lqcom/fmradio/FmTransmitter;

    invoke-virtual {v3, v1}, Lqcom/fmradio/FmTransmitter;->configure(Lqcom/fmradio/FmConfig;)Z

    move-result v0

    .line 636
    .end local v1           #config:Lqcom/fmradio/FmConfig;
    :cond_0
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    if-eqz v3, :cond_1

    .line 640
    :try_start_0
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    invoke-interface {v3}, Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;->onReconfigured()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    :cond_1
    :goto_0
    return v0

    .line 641
    :catch_0
    move-exception v2

    .line 643
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPSData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1219
    const-string v0, "QFMRADIO"

    return-object v0
.end method

.method public getRadioText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 801
    const-string v0, "Radio Text: Transmitting "

    .line 802
    .local v0, str:Ljava/lang/String;
    const-string v1, "FMTxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Radio Text: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    return-object v0
.end method

.method public getSearchList()[I
    .locals 3

    .prologue
    .line 814
    const/4 v0, 0x0

    .line 815
    .local v0, frequencyList:[I
    sget-object v1, Lcom/caf/fmradio/FMTransmitterService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 817
    const-string v1, "FMTxService"

    const-string v2, "getSearchList: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    sget-object v1, Lcom/caf/fmradio/FMTransmitterService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v1}, Lqcom/fmradio/FmReceiver;->getStationList()[I

    move-result-object v0

    .line 820
    :cond_0
    return-object v0
.end method

.method public isCallActive()Z
    .locals 2

    .prologue
    .line 1213
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/caf/fmradio/FMTransmitterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1214
    .local v0, tmgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1215
    const/4 v1, 0x1

    .line 1216
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFmOn()Z
    .locals 1

    .prologue
    .line 608
    iget-boolean v0, p0, Lcom/caf/fmradio/FMTransmitterService;->mFMOn:Z

    return v0
.end method

.method public isHeadsetPlugged()Z
    .locals 1

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterService;->mA2dpDeviceState:Lcom/caf/utils/A2dpDeviceStatus;

    invoke-virtual {v0}, Lcom/caf/utils/A2dpDeviceStatus;->isDeviceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/caf/fmradio/FMTransmitterService;->mHeadsetPlugged:Z

    .line 1210
    :cond_0
    iget-boolean v0, p0, Lcom/caf/fmradio/FMTransmitterService;->mHeadsetPlugged:Z

    return v0
.end method

.method public isInternalAntennaAvailable()Z
    .locals 4

    .prologue
    .line 853
    const/4 v0, 0x0

    .line 856
    .local v0, bAvailable:Z
    sget-object v1, Lcom/caf/fmradio/FMTransmitterService;->mTransmitter:Lqcom/fmradio/FmTransmitter;

    if-eqz v1, :cond_1

    .line 857
    sget-object v1, Lcom/caf/fmradio/FMTransmitterService;->mTransmitter:Lqcom/fmradio/FmTransmitter;

    invoke-virtual {v1}, Lqcom/fmradio/FmTransmitter;->getInternalAntenna()Z

    move-result v0

    .line 858
    const-string v1, "FMTxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalAntennaAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_0
    :goto_0
    return v0

    .line 859
    :cond_1
    sget-object v1, Lcom/caf/fmradio/FMTransmitterService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 860
    sget-object v1, Lcom/caf/fmradio/FMTransmitterService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v1}, Lqcom/fmradio/FmReceiver;->getInternalAntenna()Z

    move-result v0

    .line 861
    const-string v1, "FMTxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalAntennaAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/caf/fmradio/FMTransmitterService;->mServiceInUse:Z

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMTransmitterService;->setLowPowerMode(Z)Z

    .line 181
    const-string v0, "FMTxService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 124
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    .line 125
    new-instance v3, Lcom/caf/fmradio/FmSharedPreferences;

    invoke-direct {v3, p0}, Lcom/caf/fmradio/FmSharedPreferences;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/caf/fmradio/FMTransmitterService;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    .line 127
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/caf/fmradio/FMTransmitterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 128
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/caf/fmradio/FMTransmitterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 129
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 134
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/caf/fmradio/FMTransmitterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 135
    .local v2, tmgr:Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 138
    new-instance v3, Lcom/caf/utils/A2dpDeviceStatus;

    invoke-virtual {p0}, Lcom/caf/fmradio/FMTransmitterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/caf/utils/A2dpDeviceStatus;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/caf/fmradio/FMTransmitterService;->mA2dpDeviceState:Lcom/caf/utils/A2dpDeviceStatus;

    .line 139
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 140
    .local v0, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 141
    new-instance v3, Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/caf/fmradio/FMTransmitterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/caf/fmradio/FMTransmitterService;->mAudioManager:Landroid/media/AudioManager;

    .line 142
    new-instance v3, Lcom/caf/fmradio/FMTransmitterService$Metadata;

    invoke-direct {v3, p0}, Lcom/caf/fmradio/FMTransmitterService$Metadata;-><init>(Lcom/caf/fmradio/FMTransmitterService;)V

    iput-object v3, p0, Lcom/caf/fmradio/FMTransmitterService;->mMetadata:Lcom/caf/fmradio/FMTransmitterService$Metadata;

    .line 143
    invoke-virtual {p0}, Lcom/caf/fmradio/FMTransmitterService;->registerHeadsetListener()V

    .line 144
    new-instance v3, Lcom/caf/fmradio/FMTransmitterService$RdsDisplay;

    invoke-direct {v3, p0}, Lcom/caf/fmradio/FMTransmitterService$RdsDisplay;-><init>(Lcom/caf/fmradio/FMTransmitterService;)V

    iput-object v3, p0, Lcom/caf/fmradio/FMTransmitterService;->mRds:Lcom/caf/fmradio/FMTransmitterService$RdsDisplay;

    .line 145
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/caf/fmradio/FMTransmitterService;->mRds:Lcom/caf/fmradio/FMTransmitterService$RdsDisplay;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 146
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 150
    const-string v1, "FMTxService"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0}, Lcom/caf/fmradio/FMTransmitterService;->isFmOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const-string v1, "FMTxService"

    const-string v2, "Service being destroyed while still playing."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 158
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterService;->mRds:Lcom/caf/fmradio/FMTransmitterService$RdsDisplay;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 161
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/caf/fmradio/FMTransmitterService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 163
    iput-object v3, p0, Lcom/caf/fmradio/FMTransmitterService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 166
    :cond_1
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterService;->fmOff()Z

    .line 168
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/caf/fmradio/FMTransmitterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 169
    .local v0, tmgr:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 171
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 172
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 173
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/caf/fmradio/FMTransmitterService;->mServiceInUse:Z

    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMTransmitterService;->setLowPowerMode(Z)Z

    .line 191
    const-string v0, "FMTxService"

    const-string v1, "onRebind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v3, 0x0

    .line 196
    const-string v1, "FMTxService"

    const-string v2, "onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iput p2, p0, Lcom/caf/fmradio/FMTransmitterService;->mServiceStartId:I

    .line 198
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 202
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 203
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 204
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 205
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/caf/fmradio/FMTransmitterService;->mServiceInUse:Z

    .line 210
    const-string v0, "FMTxService"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p0}, Lcom/caf/fmradio/FMTransmitterService;->unregisterCallbacks()V

    .line 214
    invoke-virtual {p0, v2}, Lcom/caf/fmradio/FMTransmitterService;->setLowPowerMode(Z)Z

    .line 215
    invoke-virtual {p0}, Lcom/caf/fmradio/FMTransmitterService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    :goto_0
    return v2

    .line 222
    :cond_0
    iget v0, p0, Lcom/caf/fmradio/FMTransmitterService;->mServiceStartId:I

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMTransmitterService;->stopSelf(I)V

    goto :goto_0
.end method

.method public registerCallbacks(Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 654
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    .line 655
    return-void
.end method

.method public registerHeadsetListener()V
    .locals 2

    .prologue
    .line 1038
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 1039
    new-instance v1, Lcom/caf/fmradio/FMTransmitterService$5;

    invoke-direct {v1, p0}, Lcom/caf/fmradio/FMTransmitterService$5;-><init>(Lcom/caf/fmradio/FMTransmitterService;)V

    iput-object v1, p0, Lcom/caf/fmradio/FMTransmitterService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 1078
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1079
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1080
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService;->mA2dpDeviceState:Lcom/caf/utils/A2dpDeviceStatus;

    invoke-virtual {v1}, Lcom/caf/utils/A2dpDeviceStatus;->getActionSinkStateChangedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1081
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService;->mA2dpDeviceState:Lcom/caf/utils/A2dpDeviceStatus;

    invoke-virtual {v1}, Lcom/caf/utils/A2dpDeviceStatus;->getActionPlayStateChangedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1082
    const-string v1, "HDMI_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1083
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1084
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/caf/fmradio/FMTransmitterService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1086
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public searchWeakStationList(I)Z
    .locals 8
    .parameter "numStations"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 699
    const/4 v0, 0x0

    .line 700
    .local v0, bStatus:Z
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getFMConfiguration()Lqcom/fmradio/FmConfig;

    move-result-object v1

    .line 702
    .local v1, config:Lqcom/fmradio/FmConfig;
    sget-object v5, Lcom/caf/fmradio/FMTransmitterService;->mTransmitter:Lqcom/fmradio/FmTransmitter;

    if-eqz v5, :cond_0

    .line 703
    sget-object v5, Lcom/caf/fmradio/FMTransmitterService;->mTransmitter:Lqcom/fmradio/FmTransmitter;

    invoke-virtual {v5}, Lqcom/fmradio/FmTransmitter;->disable()Z

    .line 704
    sput-object v6, Lcom/caf/fmradio/FMTransmitterService;->mTransmitter:Lqcom/fmradio/FmTransmitter;

    .line 705
    iput-boolean v4, p0, Lcom/caf/fmradio/FMTransmitterService;->mFMOn:Z

    .line 707
    :cond_0
    sget-object v5, Lcom/caf/fmradio/FMTransmitterService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v5, :cond_1

    .line 708
    sget-object v5, Lcom/caf/fmradio/FMTransmitterService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v5}, Lqcom/fmradio/FmReceiver;->disable()Z

    .line 709
    sput-object v6, Lcom/caf/fmradio/FMTransmitterService;->mReceiver:Lqcom/fmradio/FmReceiver;

    .line 712
    :cond_1
    const-wide/16 v5, 0x64

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    :goto_0
    sget-object v5, Lcom/caf/fmradio/FMTransmitterService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-nez v5, :cond_3

    .line 720
    :try_start_1
    new-instance v5, Lqcom/fmradio/FmReceiver;

    const-string v6, "/dev/radio0"

    iget-object v7, p0, Lcom/caf/fmradio/FMTransmitterService;->fmCallbacks:Lqcom/fmradio/FmRxEvCallbacksAdaptor;

    invoke-direct {v5, v6, v7}, Lqcom/fmradio/FmReceiver;-><init>(Ljava/lang/String;Lqcom/fmradio/FmRxEvCallbacksAdaptor;)V

    sput-object v5, Lcom/caf/fmradio/FMTransmitterService;->mReceiver:Lqcom/fmradio/FmReceiver;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 725
    sget-object v5, Lcom/caf/fmradio/FMTransmitterService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v5}, Lqcom/fmradio/FmReceiver;->getFMState()I

    move-result v5

    sget-object v6, Lcom/caf/fmradio/FMTransmitterService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-nez v5, :cond_2

    .line 726
    sget-object v5, Lcom/caf/fmradio/FMTransmitterService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v5, v1}, Lqcom/fmradio/FmReceiver;->enable(Lqcom/fmradio/FmConfig;)Z

    move-result v0

    .line 735
    :goto_1
    if-nez v0, :cond_3

    .line 736
    const-string v5, "FMTxService"

    const-string v6, "Search for weak station failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :goto_2
    return v4

    .line 713
    :catch_0
    move-exception v3

    .line 714
    .local v3, ex:Ljava/lang/Exception;
    const-string v5, "FMTxService"

    const-string v6, "RunningThread InterruptedException"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 722
    .end local v3           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 723
    .local v2, e:Ljava/lang/InstantiationException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "FmTx service not available!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 729
    .end local v2           #e:Ljava/lang/InstantiationException;
    :cond_2
    const-wide/16 v5, 0x64

    :try_start_2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 733
    :goto_3
    sget-object v5, Lcom/caf/fmradio/FMTransmitterService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v5, v1}, Lqcom/fmradio/FmReceiver;->enable(Lqcom/fmradio/FmConfig;)Z

    move-result v0

    goto :goto_1

    .line 730
    :catch_2
    move-exception v3

    .line 731
    .restart local v3       #ex:Ljava/lang/Exception;
    const-string v5, "FMTxService"

    const-string v6, "RunningThread InterruptedException"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 741
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_3
    sget-object v5, Lcom/caf/fmradio/FMTransmitterService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v1}, Lqcom/fmradio/FmConfig;->getLowerLimit()I

    move-result v6

    invoke-virtual {v5, v6}, Lqcom/fmradio/FmReceiver;->setStation(I)Z

    move-result v0

    .line 743
    const-string v5, "FMTxService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mReceiver.setStation:  bStatus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    sget-object v5, Lcom/caf/fmradio/FMTransmitterService;->mReceiver:Lqcom/fmradio/FmReceiver;

    const/16 v6, 0x9

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7, p1, v4}, Lqcom/fmradio/FmReceiver;->searchStationList(IIII)Z

    move-result v0

    .line 749
    iput v4, p0, Lcom/caf/fmradio/FMTransmitterService;->mFMSearchStations:I

    .line 750
    if-nez v0, :cond_4

    .line 754
    :try_start_3
    iget-object v4, p0, Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    if-eqz v4, :cond_4

    .line 756
    iget-object v4, p0, Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;->onSearchListComplete(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_4
    :goto_4
    move v4, v0

    .line 763
    goto :goto_2

    .line 758
    :catch_3
    move-exception v2

    .line 760
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4
.end method

.method public setLowPowerMode(Z)Z
    .locals 4
    .parameter "bLowPower"

    .prologue
    .line 831
    const/4 v0, 0x0

    .line 832
    .local v0, bCommandSent:Z
    sget-object v1, Lcom/caf/fmradio/FMTransmitterService;->mTransmitter:Lqcom/fmradio/FmTransmitter;

    if-eqz v1, :cond_0

    .line 834
    const-string v1, "FMTxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLowPowerMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    if-eqz p1, :cond_1

    .line 837
    sget-object v1, Lcom/caf/fmradio/FMTransmitterService;->mTransmitter:Lqcom/fmradio/FmTransmitter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lqcom/fmradio/FmTransmitter;->setPowerMode(I)Z

    move-result v0

    .line 844
    :cond_0
    :goto_0
    return v0

    .line 841
    :cond_1
    sget-object v1, Lcom/caf/fmradio/FMTransmitterService;->mTransmitter:Lqcom/fmradio/FmTransmitter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lqcom/fmradio/FmTransmitter;->setPowerMode(I)Z

    move-result v0

    goto :goto_0
.end method

.method public startNotification()V
    .locals 7

    .prologue
    const v6, 0x7f09004f

    const v5, 0x7f020032

    const/4 v4, 0x0

    .line 281
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/caf/fmradio/FMTransmitterService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03000f

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 282
    .local v1, views:Landroid/widget/RemoteViews;
    const v2, 0x7f09004e

    invoke-virtual {v1, v2, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 283
    invoke-virtual {p0}, Lcom/caf/fmradio/FMTransmitterService;->isFmOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterService;->getTunedFrequencyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 291
    :goto_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 292
    .local v0, status:Landroid/app/Notification;
    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 293
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 294
    iput v5, v0, Landroid/app/Notification;->icon:I

    .line 295
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.caf.fmradio.FMTRANSMITTER_ACTIVITY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v4, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 297
    const/16 v2, 0x66

    invoke-virtual {p0, v2, v0}, Lcom/caf/fmradio/FMTransmitterService;->startForeground(ILandroid/app/Notification;)V

    .line 302
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/caf/fmradio/FMTransmitterService;->mFMOn:Z

    .line 303
    return-void

    .line 288
    .end local v0           #status:Landroid/app/Notification;
    :cond_0
    const-string v2, ""

    invoke-virtual {v1, v6, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public tune(I)Z
    .locals 7
    .parameter "frequency"

    .prologue
    .line 672
    const/4 v0, 0x0

    .line 673
    .local v0, bCommandSent:Z
    int-to-double v3, p1

    const-wide v5, 0x408f400000000000L

    div-double v1, v3, v5

    .line 675
    .local v1, doubleFrequency:D
    const-string v3, "FMTxService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tune:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    sget-object v3, Lcom/caf/fmradio/FMTransmitterService;->mTransmitter:Lqcom/fmradio/FmTransmitter;

    if-eqz v3, :cond_0

    .line 678
    sget-object v3, Lcom/caf/fmradio/FMTransmitterService;->mTransmitter:Lqcom/fmradio/FmTransmitter;

    invoke-virtual {v3, p1}, Lqcom/fmradio/FmTransmitter;->setStation(I)Z

    .line 679
    iput p1, p0, Lcom/caf/fmradio/FMTransmitterService;->mTunedFrequency:I

    .line 680
    const/4 v0, 0x1

    .line 682
    :cond_0
    return v0
.end method

.method public unregisterCallbacks()V
    .locals 1

    .prologue
    .line 662
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterService;->mCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    .line 663
    return-void
.end method
