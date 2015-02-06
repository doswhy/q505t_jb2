.class public Lcom/caf/fmradio/FMRadioService;
.super Landroid/app/Service;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caf/fmradio/FMRadioService$ServiceStub;
    }
.end annotation


# static fields
.field private static mAudioDevice:Ljava/lang/String;

.field private static mMuted:Z

.field private static mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

.field private static mResumeAfterCall:Z


# instance fields
.field fmCallbacks:Lqcom/fmradio/FmRxEvCallbacksAdaptor;

.field private mA2DPSampleFile:Ljava/io/File;

.field mA2dp:Landroid/media/MediaRecorder;

.field mA2dpDeviceState:Lcom/caf/utils/A2dpDeviceStatus;

.field private mA2dpDeviceSupportInHal:Z

.field private mA2dpDisconnected:Z

.field private mAppShutdown:Z

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mBinder:Landroid/os/IBinder;

.field private mCallStatus:I

.field private mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;

.field private mDelayedServiceStopListener:Landroid/content/BroadcastReceiver;

.field private mDelayedStopHandler:Landroid/os/Handler;

.field private mFMOn:Z

.field private mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

.field private mFmMediaButtonListener:Landroid/content/BroadcastReceiver;

.field private mFmRecordingOn:Z

.field private mFmRecordingStatus:Landroid/content/BroadcastReceiver;

.field final mHandler:Landroid/os/Handler;

.field private mHeadsetPlugged:Z

.field final mHeadsetPluginHandler:Ljava/lang/Runnable;

.field private mHeadsetReceiver:Landroid/content/BroadcastReceiver;

.field private mInternalAntennaAvailable:Z

.field private mMusicCommandListener:Landroid/content/BroadcastReceiver;

.field private mNotchFilterSet:Z

.field private mOverA2DP:Z

.field private mPausedByTransientLossOfFocus:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlaybackInProgress:Z

.field private mReceiver:Lqcom/fmradio/FmReceiver;

.field private mRecordServiceCheckThread:Ljava/lang/Thread;

.field private mRecordTimeoutListener:Landroid/content/BroadcastReceiver;

.field mRecorder:Landroid/media/MediaRecorder;

.field private mSampleFile:Ljava/io/File;

.field mSampleStart:J

.field final mScreenOffHandler:Ljava/lang/Runnable;

.field final mScreenOnHandler:Ljava/lang/Runnable;

.field private mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

.field private mSdcardUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceInUse:Z

.field private mServiceStartId:I

.field private mSingleRecordingInstanceSupported:Z

.field private mSleepActive:Z

.field private mSleepExpiredListener:Landroid/content/BroadcastReceiver;

.field private mSpeakerDisableHandler:Landroid/os/Handler;

.field private mSpeakerDisableTask:Ljava/lang/Runnable;

.field private mSpeakerPhoneOn:Z

.field private mStoppedOnFocusLoss:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private misAnalogModeSupported:Z

.field private misAnalogPathEnabled:Z

.field private recordStatusCheckThread:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 119
    sput-boolean v0, Lcom/caf/fmradio/FMRadioService;->mMuted:Z

    .line 120
    sput-boolean v0, Lcom/caf/fmradio/FMRadioService;->mResumeAfterCall:Z

    .line 121
    const-string v0, "headset"

    sput-object v0, Lcom/caf/fmradio/FMRadioService;->mAudioDevice:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 182
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 103
    iput-object v3, p0, Lcom/caf/fmradio/FMRadioService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    iput-object v3, p0, Lcom/caf/fmradio/FMRadioService;->mSdcardUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    iput-object v3, p0, Lcom/caf/fmradio/FMRadioService;->mMusicCommandListener:Landroid/content/BroadcastReceiver;

    .line 106
    iput-object v3, p0, Lcom/caf/fmradio/FMRadioService;->mSleepExpiredListener:Landroid/content/BroadcastReceiver;

    .line 107
    iput-boolean v2, p0, Lcom/caf/fmradio/FMRadioService;->mSleepActive:Z

    .line 108
    iput-object v3, p0, Lcom/caf/fmradio/FMRadioService;->mRecordTimeoutListener:Landroid/content/BroadcastReceiver;

    .line 109
    iput-object v3, p0, Lcom/caf/fmradio/FMRadioService;->mDelayedServiceStopListener:Landroid/content/BroadcastReceiver;

    .line 110
    iput-boolean v2, p0, Lcom/caf/fmradio/FMRadioService;->mOverA2DP:Z

    .line 114
    iput-boolean v2, p0, Lcom/caf/fmradio/FMRadioService;->mHeadsetPlugged:Z

    .line 115
    iput-boolean v2, p0, Lcom/caf/fmradio/FMRadioService;->mInternalAntennaAvailable:Z

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/caf/fmradio/FMRadioService;->mServiceStartId:I

    .line 118
    iput-boolean v2, p0, Lcom/caf/fmradio/FMRadioService;->mServiceInUse:Z

    .line 122
    iput-object v3, p0, Lcom/caf/fmradio/FMRadioService;->mRecorder:Landroid/media/MediaRecorder;

    .line 123
    iput-object v3, p0, Lcom/caf/fmradio/FMRadioService;->mA2dp:Landroid/media/MediaRecorder;

    .line 124
    iput-boolean v2, p0, Lcom/caf/fmradio/FMRadioService;->mFMOn:Z

    .line 125
    iput-boolean v2, p0, Lcom/caf/fmradio/FMRadioService;->mFmRecordingOn:Z

    .line 126
    iput-boolean v2, p0, Lcom/caf/fmradio/FMRadioService;->mSpeakerPhoneOn:Z

    .line 127
    iput v2, p0, Lcom/caf/fmradio/FMRadioService;->mCallStatus:I

    .line 128
    iput-object v3, p0, Lcom/caf/fmradio/FMRadioService;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 129
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mHandler:Landroid/os/Handler;

    .line 130
    iput-boolean v2, p0, Lcom/caf/fmradio/FMRadioService;->misAnalogModeSupported:Z

    .line 131
    iput-boolean v2, p0, Lcom/caf/fmradio/FMRadioService;->misAnalogPathEnabled:Z

    .line 132
    iput-boolean v2, p0, Lcom/caf/fmradio/FMRadioService;->mA2dpDisconnected:Z

    .line 135
    iput-object v3, p0, Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    .line 138
    iput-object v3, p0, Lcom/caf/fmradio/FMRadioService;->mA2DPSampleFile:Ljava/io/File;

    .line 140
    iput-boolean v2, p0, Lcom/caf/fmradio/FMRadioService;->mPlaybackInProgress:Z

    .line 141
    iput-boolean v2, p0, Lcom/caf/fmradio/FMRadioService;->mStoppedOnFocusLoss:Z

    .line 142
    iput-object v3, p0, Lcom/caf/fmradio/FMRadioService;->mSampleFile:Ljava/io/File;

    .line 143
    iput-boolean v2, p0, Lcom/caf/fmradio/FMRadioService;->mPausedByTransientLossOfFocus:Z

    .line 144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/caf/fmradio/FMRadioService;->mSampleStart:J

    .line 152
    iput-boolean v2, p0, Lcom/caf/fmradio/FMRadioService;->mNotchFilterSet:Z

    .line 156
    iput-object v3, p0, Lcom/caf/fmradio/FMRadioService;->mA2dpDeviceState:Lcom/caf/utils/A2dpDeviceStatus;

    .line 157
    iput-boolean v2, p0, Lcom/caf/fmradio/FMRadioService;->mA2dpDeviceSupportInHal:Z

    .line 159
    iput-boolean v2, p0, Lcom/caf/fmradio/FMRadioService;->mAppShutdown:Z

    .line 160
    iput-boolean v2, p0, Lcom/caf/fmradio/FMRadioService;->mSingleRecordingInstanceSupported:Z

    .line 177
    iput-object v3, p0, Lcom/caf/fmradio/FMRadioService;->mFmRecordingStatus:Landroid/content/BroadcastReceiver;

    .line 180
    iput-object v3, p0, Lcom/caf/fmradio/FMRadioService;->mRecordServiceCheckThread:Ljava/lang/Thread;

    .line 599
    new-instance v0, Lcom/caf/fmradio/FMRadioService$8;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadioService$8;-><init>(Lcom/caf/fmradio/FMRadioService;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mHeadsetPluginHandler:Ljava/lang/Runnable;

    .line 868
    new-instance v0, Lcom/caf/fmradio/FMRadioService$9;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadioService$9;-><init>(Lcom/caf/fmradio/FMRadioService;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadioService;->recordStatusCheckThread:Ljava/lang/Runnable;

    .line 1103
    new-instance v0, Lcom/caf/fmradio/FMRadioService$10;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadioService$10;-><init>(Lcom/caf/fmradio/FMRadioService;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1136
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mSpeakerDisableHandler:Landroid/os/Handler;

    .line 1138
    new-instance v0, Lcom/caf/fmradio/FMRadioService$11;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadioService$11;-><init>(Lcom/caf/fmradio/FMRadioService;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mSpeakerDisableTask:Ljava/lang/Runnable;

    .line 1145
    new-instance v0, Lcom/caf/fmradio/FMRadioService$12;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadioService$12;-><init>(Lcom/caf/fmradio/FMRadioService;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 1260
    new-instance v0, Lcom/caf/fmradio/FMRadioService$14;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadioService$14;-><init>(Lcom/caf/fmradio/FMRadioService;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mScreenOnHandler:Ljava/lang/Runnable;

    .line 1269
    new-instance v0, Lcom/caf/fmradio/FMRadioService$15;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadioService$15;-><init>(Lcom/caf/fmradio/FMRadioService;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mScreenOffHandler:Ljava/lang/Runnable;

    .line 1646
    new-instance v0, Lcom/caf/fmradio/FMRadioService$ServiceStub;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadioService$ServiceStub;-><init>(Lcom/caf/fmradio/FMRadioService;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mBinder:Landroid/os/IBinder;

    .line 2585
    new-instance v0, Lcom/caf/fmradio/FMRadioService$16;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadioService$16;-><init>(Lcom/caf/fmradio/FMRadioService;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadioService;->fmCallbacks:Lqcom/fmradio/FmRxEvCallbacksAdaptor;

    .line 3141
    new-instance v0, Lcom/caf/fmradio/FMRadioService$17;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadioService$17;-><init>(Lcom/caf/fmradio/FMRadioService;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 183
    return-void
.end method

.method static synthetic access$002(Lcom/caf/fmradio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/caf/fmradio/FMRadioService;->mFmRecordingOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/caf/fmradio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mServiceInUse:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/caf/fmradio/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->startFM()V

    return-void
.end method

.method static synthetic access$1100(Lcom/caf/fmradio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->fmOff()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1202(Lcom/caf/fmradio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/caf/fmradio/FMRadioService;->mAppShutdown:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/caf/fmradio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->fmOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/caf/fmradio/FMRadioService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/caf/fmradio/FMRadioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/caf/fmradio/FMRadioService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$1600(Lcom/caf/fmradio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->isFMProcessForeground()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/caf/fmradio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->getRecordServiceStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/caf/fmradio/FMRadioService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/caf/fmradio/FMRadioService;->fmActionOnCallState(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/caf/fmradio/FMRadioService;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/caf/fmradio/FMRadioService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/caf/fmradio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mNotchFilterSet:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/caf/fmradio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/caf/fmradio/FMRadioService;->mNotchFilterSet:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/caf/fmradio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mSpeakerPhoneOn:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/caf/fmradio/FMRadioService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mSpeakerDisableTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/caf/fmradio/FMRadioService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mSpeakerDisableHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/caf/fmradio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mPlaybackInProgress:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/caf/fmradio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/caf/fmradio/FMRadioService;->mPlaybackInProgress:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/caf/fmradio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/caf/fmradio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/caf/fmradio/FMRadioService;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/caf/fmradio/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->fmOperationsOff()V

    return-void
.end method

.method static synthetic access$2800(Lcom/caf/fmradio/FMRadioService;JI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/caf/fmradio/FMRadioService;->delayedStop(JI)V

    return-void
.end method

.method static synthetic access$2900(Lcom/caf/fmradio/FMRadioService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/caf/fmradio/FMRadioService;->cancelDelayedStop(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/caf/fmradio/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->startRecordServiceStatusCheck()V

    return-void
.end method

.method static synthetic access$3000(Lcom/caf/fmradio/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->requestFocus()V

    return-void
.end method

.method static synthetic access$3102(Lcom/caf/fmradio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/caf/fmradio/FMRadioService;->mFMOn:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/caf/fmradio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->fmRadioReset()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300()Lcom/caf/fmradio/FmSharedPreferences;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/caf/fmradio/FMRadioService;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/caf/fmradio/FMRadioService;)Lqcom/fmradio/FmRxRdsData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/caf/fmradio/FMRadioService;Lqcom/fmradio/FmRxRdsData;)Lqcom/fmradio/FmRxRdsData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    return-object p1
.end method

.method static synthetic access$400(Lcom/caf/fmradio/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->stopRecordServiceStatusCheck()V

    return-void
.end method

.method static synthetic access$502(Lcom/caf/fmradio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/caf/fmradio/FMRadioService;->mHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$600(Lcom/caf/fmradio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mA2dpDisconnected:Z

    return v0
.end method

.method static synthetic access$602(Lcom/caf/fmradio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/caf/fmradio/FMRadioService;->mA2dpDisconnected:Z

    return p1
.end method

.method static synthetic access$700(Lcom/caf/fmradio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mOverA2DP:Z

    return v0
.end method

.method static synthetic access$800(Lcom/caf/fmradio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mStoppedOnFocusLoss:Z

    return v0
.end method

.method static synthetic access$802(Lcom/caf/fmradio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/caf/fmradio/FMRadioService;->mStoppedOnFocusLoss:Z

    return p1
.end method

.method static synthetic access$900(Lcom/caf/fmradio/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->stopFM()V

    return-void
.end method

.method private cancelAlarmDealyedServiceStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3091
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.caf.fmradio.SERVICE_STOP"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3092
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 3093
    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 3094
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3095
    return-void
.end method

.method private cancelAlarmRecordTimeout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3079
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.caf.fmradio.RECORD_TIMEOUT"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3080
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 3081
    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 3082
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3083
    return-void
.end method

.method private cancelAlarmSleepExpired()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3065
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.caf.fmradio.SLEEP_EXPIRED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3066
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 3067
    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 3068
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3069
    iput-boolean v2, p0, Lcom/caf/fmradio/FMRadioService;->mSleepActive:Z

    .line 3070
    return-void
.end method

.method private cancelAlarms()V
    .locals 0

    .prologue
    .line 3097
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->cancelAlarmSleepExpired()V

    .line 3098
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->cancelAlarmRecordTimeout()V

    .line 3099
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->cancelAlarmDealyedServiceStop()V

    .line 3100
    return-void
.end method

.method private cancelDelayedStop(I)V
    .locals 1
    .parameter "nType"

    .prologue
    .line 3124
    if-nez p1, :cond_0

    const/4 v0, 0x3

    .line 3125
    .local v0, whatId:I
    :goto_0
    if-nez p1, :cond_1

    .line 3126
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->cancelAlarmSleepExpired()V

    .line 3129
    :goto_1
    return-void

    .line 3124
    .end local v0           #whatId:I
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 3128
    .restart local v0       #whatId:I
    :cond_1
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->cancelAlarmRecordTimeout()V

    goto :goto_1
.end method

.method private delayedStop(JI)V
    .locals 1
    .parameter "duration"
    .parameter "nType"

    .prologue
    .line 3117
    if-nez p3, :cond_0

    const/4 v0, 0x3

    .line 3118
    .local v0, whatId:I
    :goto_0
    if-nez p3, :cond_1

    .line 3119
    invoke-direct {p0, p1, p2}, Lcom/caf/fmradio/FMRadioService;->setAlarmSleepExpired(J)V

    .line 3122
    :goto_1
    return-void

    .line 3117
    .end local v0           #whatId:I
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 3121
    .restart local v0       #whatId:I
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/caf/fmradio/FMRadioService;->setAlarmRecordTimeout(J)V

    goto :goto_1
.end method

.method private fmActionOnCallState(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1044
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1045
    iput p1, p0, Lcom/caf/fmradio/FMRadioService;->mCallStatus:I

    .line 1047
    if-eq v1, p1, :cond_0

    if-ne v4, p1, :cond_5

    .line 1049
    :cond_0
    if-ne p1, v4, :cond_2

    .line 1050
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 1051
    if-nez v0, :cond_2

    .line 1100
    :cond_1
    :goto_0
    return-void

    .line 1055
    :cond_2
    iget-boolean v1, p0, Lcom/caf/fmradio/FMRadioService;->mSpeakerPhoneOn:Z

    .line 1056
    sget-boolean v2, Lcom/caf/fmradio/FMRadioService;->mMuted:Z

    .line 1057
    iget v3, p0, Lcom/caf/fmradio/FMRadioService;->mCallStatus:I

    .line 1058
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->fmOff()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1059
    iget-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mServiceInUse:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    if-eqz v0, :cond_3

    .line 1061
    :try_start_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    invoke-interface {v0}, Lcom/caf/fmradio/IFMRadioServiceCallbacks;->onDisabled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1066
    :cond_3
    :goto_1
    sput-boolean v4, Lcom/caf/fmradio/FMRadioService;->mResumeAfterCall:Z

    .line 1067
    iput-boolean v1, p0, Lcom/caf/fmradio/FMRadioService;->mSpeakerPhoneOn:Z

    .line 1068
    iput v3, p0, Lcom/caf/fmradio/FMRadioService;->mCallStatus:I

    .line 1069
    sput-boolean v2, Lcom/caf/fmradio/FMRadioService;->mMuted:Z

    goto :goto_0

    .line 1062
    :catch_0
    move-exception v0

    .line 1063
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1070
    :cond_4
    sget-boolean v0, Lcom/caf/fmradio/FMRadioService;->mResumeAfterCall:Z

    if-nez v0, :cond_1

    .line 1071
    sput-boolean v5, Lcom/caf/fmradio/FMRadioService;->mResumeAfterCall:Z

    .line 1072
    iput-boolean v1, p0, Lcom/caf/fmradio/FMRadioService;->mSpeakerPhoneOn:Z

    .line 1073
    iput v3, p0, Lcom/caf/fmradio/FMRadioService;->mCallStatus:I

    .line 1074
    sput-boolean v2, Lcom/caf/fmradio/FMRadioService;->mMuted:Z

    goto :goto_0

    .line 1077
    :cond_5
    if-nez p1, :cond_1

    .line 1079
    sget-boolean v0, Lcom/caf/fmradio/FMRadioService;->mResumeAfterCall:Z

    if-eqz v0, :cond_1

    .line 1083
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->isAntennaAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->isFmOn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mServiceInUse:Z

    if-eqz v0, :cond_1

    .line 1085
    const-string v0, "FMService"

    const-string v1, "Resuming after call:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->fmOn()Z

    move-result v0

    if-ne v4, v0, :cond_1

    .line 1089
    sput-boolean v5, Lcom/caf/fmradio/FMRadioService;->mResumeAfterCall:Z

    .line 1090
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    if-eqz v0, :cond_1

    .line 1092
    :try_start_1
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    invoke-interface {v0}, Lcom/caf/fmradio/IFMRadioServiceCallbacks;->onEnabled()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1093
    :catch_1
    move-exception v0

    .line 1094
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private fmOff()Z
    .locals 2

    .prologue
    .line 1843
    const/4 v0, 0x0

    .line 1845
    .local v0, bStatus:Z
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->fmOperationsOff()V

    .line 1848
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 1850
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v1}, Lqcom/fmradio/FmReceiver;->disable()Z

    move-result v0

    .line 1851
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    .line 1853
    :cond_0
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->stop()V

    .line 1854
    return v0
.end method

.method private fmOn()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1679
    .line 1680
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1681
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->getCallState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1773
    :goto_0
    return v2

    .line 1685
    :cond_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-nez v0, :cond_1

    .line 1688
    :try_start_0
    new-instance v0, Lqcom/fmradio/FmReceiver;

    const-string v3, "/dev/radio0"

    iget-object v4, p0, Lcom/caf/fmradio/FMRadioService;->fmCallbacks:Lqcom/fmradio/FmRxEvCallbacksAdaptor;

    invoke-direct {v0, v3, v4}, Lqcom/fmradio/FmReceiver;-><init>(Ljava/lang/String;Lqcom/fmradio/FmRxEvCallbacksAdaptor;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1696
    :cond_1
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_8

    .line 1698
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1702
    const-string v0, "FMService"

    const-string v3, "mReceiver.already enabled"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1723
    :goto_1
    if-ne v0, v1, :cond_7

    .line 1726
    invoke-virtual {p0, v2}, Lcom/caf/fmradio/FMRadioService;->setLowPowerMode(Z)Z

    move-result v0

    .line 1727
    const-string v3, "FMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLowPowerMode done, Status :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1731
    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mPlaybackInProgress:Z

    if-nez v0, :cond_2

    .line 1733
    const-string v0, "FMService"

    const-string v3, "mAudioManager.setFmRadioOn = true \n"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->getCallState()I

    move-result v0

    .line 1736
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->getCallState()I

    move-result v3

    if-eqz v3, :cond_6

    .line 1738
    invoke-direct {p0, v0}, Lcom/caf/fmradio/FMRadioService;->fmActionOnCallState(I)V

    .line 1742
    :goto_2
    const-string v0, "FMService"

    const-string v3, "mAudioManager.setFmRadioOn done \n"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    :cond_2
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_3

    .line 1745
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    const/16 v3, 0x17

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmReceiver;->registerRdsGroupProcessing(I)Z

    move-result v0

    .line 1749
    const-string v3, "FMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerRdsGroupProcessing done, Status :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    :cond_3
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getAutoAFSwitch()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadioService;->enableAutoAF(Z)Z

    move-result v0

    .line 1752
    const-string v3, "FMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableAutoAF done, Status :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0, v2}, Lqcom/fmradio/FmReceiver;->setInternalAntenna(Z)Z

    move-result v0

    .line 1756
    const-string v2, "FMService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setInternalAntenna done, Status :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->readInternalAntennaAvailable()V

    .line 1761
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->startNotification()V

    move v0, v1

    :goto_3
    move v2, v0

    .line 1773
    goto/16 :goto_0

    .line 1690
    :catch_0
    move-exception v0

    .line 1692
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "FmReceiver service not available!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1707
    :cond_4
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getFMConfiguration()Lqcom/fmradio/FmConfig;

    move-result-object v0

    .line 1708
    const-string v3, "FMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fmOn: RadioBand   :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lqcom/fmradio/FmConfig;->getRadioBand()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    const-string v3, "FMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fmOn: Emphasis    :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lqcom/fmradio/FmConfig;->getEmphasis()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    const-string v3, "FMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fmOn: ChSpacing   :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lqcom/fmradio/FmConfig;->getChSpacing()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    const-string v3, "FMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fmOn: RdsStd      :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lqcom/fmradio/FmConfig;->getRdsStd()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    const-string v3, "FMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fmOn: LowerLimit  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lqcom/fmradio/FmConfig;->getLowerLimit()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    const-string v3, "FMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fmOn: UpperLimit  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lqcom/fmradio/FmConfig;->getUpperLimit()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getFMConfiguration()Lqcom/fmradio/FmConfig;

    move-result-object v3

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmReceiver;->enable(Lqcom/fmradio/FmConfig;)Z

    move-result v0

    .line 1715
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->isSpeakerEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1716
    invoke-direct {p0, v2}, Lcom/caf/fmradio/FMRadioService;->setAudioPath(Z)Z

    .line 1720
    :goto_4
    const-string v3, "FMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mReceiver.enable done, Status :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1718
    :cond_5
    invoke-direct {p0, v1}, Lcom/caf/fmradio/FMRadioService;->setAudioPath(Z)Z

    goto :goto_4

    .line 1740
    :cond_6
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->startFM()V

    goto/16 :goto_2

    .line 1766
    :cond_7
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    .line 1770
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->stop()V

    goto/16 :goto_3

    :cond_8
    move v0, v2

    goto/16 :goto_3
.end method

.method private fmOperationsOff()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1780
    iget-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mSpeakerPhoneOn:Z

    if-eqz v0, :cond_0

    .line 1782
    iput-boolean v2, p0, Lcom/caf/fmradio/FMRadioService;->mSpeakerPhoneOn:Z

    .line 1783
    const/4 v0, 0x1

    invoke-static {v0, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1785
    :cond_0
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->isFmRecordingOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1787
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->stopRecording()V

    .line 1789
    :cond_1
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1790
    if-eqz v0, :cond_2

    .line 1792
    const-string v0, "FMService"

    const-string v1, "audioManager.setFmRadioOn = false \n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->unMute()Z

    .line 1794
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->stopFM()V

    .line 1796
    const-string v0, "FMService"

    const-string v1, "audioManager.setFmRadioOn false done \n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    :cond_2
    invoke-direct {p0, v2}, Lcom/caf/fmradio/FMRadioService;->sendRecordServiceIntent(I)V

    .line 1800
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->isAnalogModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1801
    const-string v0, "hw.fm.isAnalog"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    iput-boolean v2, p0, Lcom/caf/fmradio/FMRadioService;->misAnalogPathEnabled:Z

    .line 1804
    :cond_3
    return-void
.end method

.method private fmOperationsReset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1810
    iget-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mSpeakerPhoneOn:Z

    if-eqz v0, :cond_0

    .line 1812
    iput-boolean v2, p0, Lcom/caf/fmradio/FMRadioService;->mSpeakerPhoneOn:Z

    .line 1813
    const/4 v0, 0x1

    invoke-static {v0, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1816
    :cond_0
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->isFmRecordingOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1818
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->stopRecording()V

    .line 1821
    :cond_1
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1822
    if-eqz v0, :cond_2

    .line 1824
    const-string v0, "FMService"

    const-string v1, "audioManager.setFmRadioOn = false \n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->unMute()Z

    .line 1826
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->resetFM()V

    .line 1828
    const-string v0, "FMService"

    const-string v1, "audioManager.setFmRadioOn false done \n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    :cond_2
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->isAnalogModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1832
    const-string v0, "hw.fm.isAnalog"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    iput-boolean v2, p0, Lcom/caf/fmradio/FMRadioService;->misAnalogPathEnabled:Z

    .line 1835
    :cond_3
    return-void
.end method

.method private fmRadioReset()Z
    .locals 3

    .prologue
    .line 1863
    const/4 v0, 0x0

    .line 1865
    const-string v1, "FMService"

    const-string v2, "fmRadioReset"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->fmOperationsReset()V

    .line 1870
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 1872
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0}, Lqcom/fmradio/FmReceiver;->reset()Z

    move-result v0

    .line 1873
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    .line 1875
    :cond_0
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->stop()V

    .line 1876
    return v0
.end method

.method private getProcessName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 699
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 700
    .local v2, id:I
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 702
    .local v3, myProcessName:Ljava/lang/String;
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Lcom/caf/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 704
    .local v0, actvityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 707
    .local v5, procInfos:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 708
    .local v4, procInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v6, :cond_0

    .line 709
    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    .line 712
    .end local v4           #procInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 713
    return-object v3
.end method

.method private getRecordServiceStatus()Z
    .locals 7

    .prologue
    .line 853
    const/4 v4, 0x0

    .line 854
    .local v4, status:Z
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/caf/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 856
    .local v0, actvityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 858
    .local v3, procInfos:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 859
    .local v2, procInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v6, "com.codeaurora.fmrecording"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 860
    const/4 v4, 0x1

    .line 864
    .end local v2           #procInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 865
    return v4
.end method

.method private getTunedFrequencyString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 2897
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getTunedFrequency()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L

    div-double/2addr v0, v2

    .line 2898
    const v2, 0x7f060043

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/caf/fmradio/FMRadioService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2899
    return-object v0
.end method

.method private gotoIdleState()V
    .locals 2

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1317
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->cancelAlarms()V

    .line 1318
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->setAlarmDelayedServiceStop()V

    .line 1319
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadioService;->stopForeground(Z)V

    .line 1320
    return-void
.end method

.method private isFMProcessForeground()Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 821
    const/4 v4, 0x0

    .line 822
    .local v4, staus:Z
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/caf/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 824
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 826
    .local v3, procInfos:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 828
    .local v2, procInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 830
    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_2

    .line 832
    const-string v5, "FMService"

    const-string v6, "Foreground  App:"

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const/4 v4, 0x1

    .line 847
    .end local v2           #procInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 848
    return v4

    .line 839
    .restart local v2       #procInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    const-string v5, "FMService"

    const-string v6, "Background App:"

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const/4 v4, 0x0

    .line 841
    goto :goto_0
.end method

.method private requestFocus()V
    .locals 4

    .prologue
    .line 3131
    iget-boolean v1, p0, Lcom/caf/fmradio/FMRadioService;->mPlaybackInProgress:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/caf/fmradio/FMRadioService;->mStoppedOnFocusLoss:Z

    if-ne v1, v2, :cond_0

    .line 3134
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/caf/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3135
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 3137
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->startFM()V

    .line 3138
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/caf/fmradio/FMRadioService;->mStoppedOnFocusLoss:Z

    .line 3140
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method private resetA2dpPlayback()V
    .locals 4

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mA2dp:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 1031
    :goto_0
    return-void

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mA2DPSampleFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 1009
    :try_start_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mA2DPSampleFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1018
    :cond_1
    :goto_1
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.CpuGovernorService.action.IOBUSY_UNVOTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1020
    const-string v1, "com.android.server.CpuGovernorService.voteType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1021
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1023
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mA2dp:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 1025
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mA2dp:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 1026
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mA2dp:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1027
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mA2dp:Landroid/media/MediaRecorder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1028
    :catch_0
    move-exception v0

    .line 1029
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop failed with exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1010
    :catch_1
    move-exception v0

    .line 1011
    const-string v0, "FMService"

    const-string v1, "Not able to delete file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private resetFM()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 806
    const-string v0, "FMService"

    const-string v1, "resetFM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mOverA2DP:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 808
    iput-boolean v2, p0, Lcom/caf/fmradio/FMRadioService;->mOverA2DP:Z

    .line 809
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->resetA2dpPlayback()V

    .line 816
    :goto_0
    iput-boolean v2, p0, Lcom/caf/fmradio/FMRadioService;->mPlaybackInProgress:Z

    .line 817
    return-void

    .line 811
    :cond_0
    const-string v0, "FMService"

    const-string v1, "FMRadio: Requesting to stop FM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    const/high16 v0, 0x8

    const-string v1, ""

    invoke-static {v0, v2, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 814
    invoke-direct {p0, v2}, Lcom/caf/fmradio/FMRadioService;->sendRecordServiceIntent(I)V

    goto :goto_0
.end method

.method private sendRecordIntent(I)V
    .locals 5
    .parameter "action"

    .prologue
    .line 717
    new-instance v0, Landroid/content/Intent;

    const-string v2, "codeaurora.intent.action.FM_Recording"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 718
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "state"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 719
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 720
    const/4 v1, -0x1

    .line 721
    .local v1, mRecordDuration:I
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getRecordDuration()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 723
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getRecordDuration()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v1, v2, 0x3e8

    .line 725
    :cond_0
    const-string v2, "record_duration"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 726
    const-string v2, "process_name"

    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 727
    const-string v2, "process_id"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 729
    .end local v1           #mRecordDuration:I
    :cond_1
    const-string v2, "FMService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending Recording intent for = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 731
    return-void
.end method

.method private sendRecordServiceIntent(I)V
    .locals 4
    .parameter "action"

    .prologue
    .line 734
    new-instance v0, Landroid/content/Intent;

    const-string v1, "codeaurora.intent.action.FM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 735
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 736
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 737
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending Recording intent for = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 739
    return-void
.end method

.method private setAlarmDelayedServiceStop()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 3085
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.caf.fmradio.SERVICE_STOP"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3086
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 3087
    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 3088
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    add-long/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3089
    return-void
.end method

.method private setAlarmRecordTimeout(J)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 3072
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.caf.fmradio.RECORD_TIMEOUT"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3073
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 3074
    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 3075
    const-string v2, "FMService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delayedStop called"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3076
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, p1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3077
    return-void
.end method

.method private setAlarmSleepExpired(J)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 3057
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.caf.fmradio.SLEEP_EXPIRED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3058
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 3059
    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 3060
    const-string v2, "FMService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delayedStop called"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, p1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3062
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mSleepActive:Z

    .line 3063
    return-void
.end method

.method private setAudioPath(Z)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1650
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-nez v1, :cond_1

    .line 1671
    :cond_0
    :goto_0
    return v0

    .line 1653
    :cond_1
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->isAnalogModeEnabled()Z

    move-result v1

    if-ne v1, p1, :cond_2

    .line 1654
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Analog Path already is set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1657
    :cond_2
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->isAnalogModeSupported()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1658
    const-string v1, "FMService"

    const-string v2, "Analog Path is not supported "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1661
    :cond_3
    const-string v1, "hw.fm.digitalpath"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1665
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v1, p1}, Lqcom/fmradio/FmReceiver;->setAnalogMode(Z)Z

    move-result v1

    .line 1666
    if-nez v1, :cond_4

    .line 1667
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in toggling analog/digital path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1670
    :cond_4
    iput-boolean p1, p0, Lcom/caf/fmradio/FMRadioService;->misAnalogPathEnabled:Z

    .line 1671
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startFM()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 742
    const-string v0, "FMService"

    const-string v1, "In startFM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mAppShutdown:Z

    if-ne v4, v0, :cond_1

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 746
    :cond_1
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->isCallActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 747
    sput-boolean v4, Lcom/caf/fmradio/FMRadioService;->mResumeAfterCall:Z

    goto :goto_0

    .line 750
    :cond_2
    sput-boolean v5, Lcom/caf/fmradio/FMRadioService;->mResumeAfterCall:Z

    .line 751
    iget-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mPlaybackInProgress:Z

    if-eq v4, v0, :cond_0

    .line 753
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 754
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 756
    if-eq v0, v4, :cond_3

    .line 757
    const-string v0, "FMService"

    const-string v1, "audio focuss couldnot be granted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 761
    :cond_3
    const-string v0, "FMService"

    const-string v1, "FM registering for registerMediaButtonEventReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    .line 763
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/caf/fmradio/FMMediaButtonIntentReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 766
    iput-boolean v5, p0, Lcom/caf/fmradio/FMRadioService;->mStoppedOnFocusLoss:Z

    .line 768
    iget-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mA2dpDeviceSupportInHal:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mA2dpDeviceState:Lcom/caf/utils/A2dpDeviceStatus;

    invoke-virtual {v0}, Lcom/caf/utils/A2dpDeviceStatus;->isDeviceAvailable()Z

    move-result v0

    if-ne v4, v0, :cond_4

    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->isSpeakerEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->isAnalogModeEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->startA2dpPlayback()Z

    move-result v0

    if-ne v4, v0, :cond_4

    .line 771
    iput-boolean v4, p0, Lcom/caf/fmradio/FMRadioService;->mOverA2DP:Z

    .line 788
    :goto_1
    invoke-direct {p0, v4}, Lcom/caf/fmradio/FMRadioService;->sendRecordServiceIntent(I)V

    .line 789
    iput-boolean v4, p0, Lcom/caf/fmradio/FMRadioService;->mPlaybackInProgress:Z

    goto :goto_0

    .line 773
    :cond_4
    const-string v0, "FMService"

    const-string v1, "FMRadio: Requesting to start FM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const/high16 v0, 0x8

    const-string v1, ""

    invoke-static {v0, v4, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 779
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->isSpeakerEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 780
    iput-boolean v4, p0, Lcom/caf/fmradio/FMRadioService;->mSpeakerPhoneOn:Z

    .line 781
    invoke-static {v4, v4}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_1

    .line 783
    :cond_5
    invoke-static {v4, v5}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_1
.end method

.method private startRecordServiceStatusCheck()V
    .locals 4

    .prologue
    .line 897
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mRecordServiceCheckThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mRecordServiceCheckThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1

    .line 899
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService;->recordStatusCheckThread:Ljava/lang/Runnable;

    const-string v3, "getRecordServiceStatus"

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mRecordServiceCheckThread:Ljava/lang/Thread;

    .line 903
    :cond_1
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mRecordServiceCheckThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mRecordServiceCheckThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_2

    .line 905
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mRecordServiceCheckThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 907
    :cond_2
    return-void
.end method

.method private stop()V
    .locals 3

    .prologue
    .line 1302
    const-string v0, "FMService"

    const-string v1, "in stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    iget-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mServiceInUse:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->isFMProcessForeground()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1304
    :cond_0
    const-string v0, "FMService"

    const-string v1, "calling unregisterMediaButtonEventReceiver in stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    .line 1306
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/caf/fmradio/FMMediaButtonIntentReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1311
    :cond_1
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->gotoIdleState()V

    .line 1312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mFMOn:Z

    .line 1313
    return-void
.end method

.method private stopFM()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 793
    const-string v0, "FMService"

    const-string v1, "In stopFM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mOverA2DP:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 795
    iput-boolean v2, p0, Lcom/caf/fmradio/FMRadioService;->mOverA2DP:Z

    .line 796
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->stopA2dpPlayback()V

    .line 802
    :goto_0
    iput-boolean v2, p0, Lcom/caf/fmradio/FMRadioService;->mPlaybackInProgress:Z

    .line 803
    return-void

    .line 798
    :cond_0
    const-string v0, "FMService"

    const-string v1, "FMRadio: Requesting to stop FM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const/high16 v0, 0x8

    const-string v1, ""

    invoke-static {v0, v2, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    goto :goto_0
.end method

.method private stopRecordServiceStatusCheck()V
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mRecordServiceCheckThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mRecordServiceCheckThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 913
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelSearch()Z
    .locals 2

    .prologue
    .line 2277
    const/4 v0, 0x0

    .line 2278
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 2280
    const-string v0, "FMService"

    const-string v1, "cancelSearch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0}, Lqcom/fmradio/FmReceiver;->cancelSearch()Z

    move-result v0

    .line 2283
    :cond_0
    return v0
.end method

.method public clearStationInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2569
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    if-eqz v0, :cond_0

    .line 2570
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmRxRdsData;->setRadioText(Ljava/lang/String;)V

    .line 2571
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    invoke-virtual {v0, v2}, Lqcom/fmradio/FmRxRdsData;->setPrgmId(I)V

    .line 2572
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    invoke-virtual {v0, v2}, Lqcom/fmradio/FmRxRdsData;->setPrgmType(I)V

    .line 2573
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmRxRdsData;->setPrgmServices(Ljava/lang/String;)V

    .line 2574
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmRxRdsData;->setERadioText(Ljava/lang/String;)V

    .line 2575
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    const-string v1, ""

    invoke-virtual {v0, v1, v3}, Lqcom/fmradio/FmRxRdsData;->setTagValue(Ljava/lang/String;I)V

    .line 2576
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    const-string v1, ""

    invoke-virtual {v0, v1, v4}, Lqcom/fmradio/FmRxRdsData;->setTagValue(Ljava/lang/String;I)V

    .line 2577
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    invoke-virtual {v0, v2, v3}, Lqcom/fmradio/FmRxRdsData;->setTagCode(BI)V

    .line 2578
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    invoke-virtual {v0, v2, v4}, Lqcom/fmradio/FmRxRdsData;->setTagCode(BI)V

    .line 2579
    const-string v0, "FMService"

    const-string v1, "clear tags data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2580
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->clearTags()V

    .line 2582
    :cond_0
    return-void
.end method

.method public enableAutoAF(Z)Z
    .locals 3
    .parameter

    .prologue
    .line 2454
    const/4 v0, 0x0

    .line 2455
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 2457
    const-string v0, "FMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableAutoAF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2458
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0, p1}, Lqcom/fmradio/FmReceiver;->enableAFjump(Z)Z

    move-result v0

    .line 2460
    :cond_0
    return v0
.end method

.method public enableSpeaker(Z)V
    .locals 4
    .parameter "speakerOn"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1916
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->isCallActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1966
    :cond_0
    :goto_0
    return-void

    .line 1918
    :cond_1
    iput-boolean p1, p0, Lcom/caf/fmradio/FMRadioService;->mSpeakerPhoneOn:Z

    .line 1919
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->isAnalogModeSupported()Z

    move-result v0

    .line 1920
    .local v0, analogmode:Z
    if-nez p1, :cond_3

    .line 1921
    if-eqz v0, :cond_9

    .line 1922
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->isFmRecordingOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1923
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->stopRecording()V

    .line 1924
    :cond_2
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->stopFM()V

    .line 1925
    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1926
    sget-boolean v1, Lcom/caf/fmradio/FMRadioService;->mMuted:Z

    if-eqz v1, :cond_8

    .line 1927
    invoke-direct {p0, v2}, Lcom/caf/fmradio/FMRadioService;->setAudioPath(Z)Z

    .line 1936
    :goto_1
    if-eqz v0, :cond_3

    .line 1937
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->startFM()V

    .line 1942
    :cond_3
    iget-boolean v1, p0, Lcom/caf/fmradio/FMRadioService;->mA2dpDeviceSupportInHal:Z

    if-nez v1, :cond_6

    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mA2dpDeviceState:Lcom/caf/utils/A2dpDeviceStatus;

    invoke-virtual {v1}, Lcom/caf/utils/A2dpDeviceStatus;->isDeviceAvailable()Z

    move-result v1

    if-ne v2, v1, :cond_6

    .line 1943
    iget-boolean v1, p0, Lcom/caf/fmradio/FMRadioService;->mOverA2DP:Z

    if-ne v2, v1, :cond_4

    if-eq v2, p1, :cond_5

    :cond_4
    iget-boolean v1, p0, Lcom/caf/fmradio/FMRadioService;->mOverA2DP:Z

    if-nez v1, :cond_6

    if-nez p1, :cond_6

    .line 1946
    :cond_5
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->stopFM()V

    .line 1947
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->startFM()V

    .line 1950
    :cond_6
    if-eqz p1, :cond_0

    .line 1951
    if-eqz v0, :cond_7

    .line 1952
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->stopFM()V

    .line 1953
    sget-boolean v1, Lcom/caf/fmradio/FMRadioService;->mMuted:Z

    if-eqz v1, :cond_a

    .line 1954
    invoke-direct {p0, v3}, Lcom/caf/fmradio/FMRadioService;->setAudioPath(Z)Z

    .line 1961
    :cond_7
    :goto_2
    invoke-static {v2, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1962
    if-eqz v0, :cond_0

    .line 1963
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->startFM()V

    goto :goto_0

    .line 1929
    :cond_8
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->mute()Z

    .line 1930
    invoke-direct {p0, v2}, Lcom/caf/fmradio/FMRadioService;->setAudioPath(Z)Z

    .line 1931
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->unMute()Z

    goto :goto_1

    .line 1934
    :cond_9
    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_1

    .line 1956
    :cond_a
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->mute()Z

    .line 1957
    invoke-direct {p0, v3}, Lcom/caf/fmradio/FMRadioService;->setAudioPath(Z)Z

    .line 1958
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->unMute()Z

    goto :goto_2
.end method

.method public enableStereo(Z)Z
    .locals 3
    .parameter

    .prologue
    .line 2474
    const/4 v0, 0x0

    .line 2475
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 2477
    const-string v0, "FMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableStereo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0, p1}, Lqcom/fmradio/FmReceiver;->setStereoMode(Z)Z

    move-result v0

    .line 2480
    :cond_0
    return v0
.end method

.method public fmReconfigure()Z
    .locals 4

    .prologue
    .line 1978
    const/4 v0, 0x0

    .line 1979
    const-string v1, "FMService"

    const-string v2, "fmReconfigure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 1983
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getFMConfiguration()Lqcom/fmradio/FmConfig;

    move-result-object v0

    .line 1984
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RadioBand   :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lqcom/fmradio/FmConfig;->getRadioBand()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emphasis    :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lqcom/fmradio/FmConfig;->getEmphasis()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChSpacing   :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lqcom/fmradio/FmConfig;->getChSpacing()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RdsStd      :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lqcom/fmradio/FmConfig;->getRdsStd()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LowerLimit  :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lqcom/fmradio/FmConfig;->getLowerLimit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpperLimit  :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lqcom/fmradio/FmConfig;->getUpperLimit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v1, v0}, Lqcom/fmradio/FmReceiver;->configure(Lqcom/fmradio/FmConfig;)Z

    move-result v0

    .line 1992
    :cond_0
    return v0
.end method

.method getAfJmpRmssiSamplesCnt()I
    .locals 1

    .prologue
    .line 3051
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 3052
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0}, Lqcom/fmradio/FmReceiver;->getAFJumpRmssiSamples()I

    move-result v0

    .line 3054
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method getAfJmpRmssiTh()I
    .locals 1

    .prologue
    .line 3039
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 3040
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0}, Lqcom/fmradio/FmReceiver;->getAFJumpRmssiTh()I

    move-result v0

    .line 3042
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getCFOMeanTh()I
    .locals 1

    .prologue
    .line 2996
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 2997
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0}, Lqcom/fmradio/FmReceiver;->getCFOMeanTh()I

    move-result v0

    .line 2999
    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public getCallState()I
    .locals 1

    .prologue
    .line 2565
    iget v0, p0, Lcom/caf/fmradio/FMRadioService;->mCallStatus:I

    return v0
.end method

.method public getExtenRadioText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2333
    const-string v0, ""

    .line 2334
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    if-eqz v1, :cond_0

    .line 2336
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    invoke-virtual {v0}, Lqcom/fmradio/FmRxRdsData;->getERadioText()Ljava/lang/String;

    move-result-object v0

    .line 2337
    if-nez v0, :cond_0

    .line 2339
    const-string v0, ""

    .line 2342
    :cond_0
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eRadio Text:["

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

    .line 2343
    return-object v0
.end method

.method getGoodChRmssiTh()I
    .locals 1

    .prologue
    .line 3045
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 3046
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0}, Lqcom/fmradio/FmReceiver;->getGdChRmssiTh()I

    move-result v0

    .line 3048
    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public getIntDet()I
    .locals 1

    .prologue
    .line 2914
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 2915
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0}, Lqcom/fmradio/FmReceiver;->getIntDet()I

    move-result v0

    .line 2917
    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public getIoC()I
    .locals 1

    .prologue
    .line 2908
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 2909
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0}, Lqcom/fmradio/FmReceiver;->getIoverc()I

    move-result v0

    .line 2911
    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public getMpxDcc()I
    .locals 1

    .prologue
    .line 2920
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 2921
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0}, Lqcom/fmradio/FmReceiver;->getMpxDcc()I

    move-result v0

    .line 2923
    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public getPowerMode()I
    .locals 4

    .prologue
    .line 2432
    const/4 v0, 0x0

    .line 2433
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 2435
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0}, Lqcom/fmradio/FmReceiver;->getPowerMode()I

    move-result v0

    .line 2436
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLowPowerMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    :cond_0
    return v0
.end method

.method public getProgramID()I
    .locals 4

    .prologue
    .line 2374
    const/4 v0, -0x1

    .line 2375
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    if-eqz v1, :cond_0

    .line 2377
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    invoke-virtual {v0}, Lqcom/fmradio/FmRxRdsData;->getPrgmId()I

    move-result v0

    .line 2379
    :cond_0
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PI: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    return v0
.end method

.method public getProgramService()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2296
    const-string v0, ""

    .line 2297
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    if-eqz v1, :cond_0

    .line 2299
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    invoke-virtual {v0}, Lqcom/fmradio/FmRxRdsData;->getPrgmServices()Ljava/lang/String;

    move-result-object v0

    .line 2300
    if-nez v0, :cond_0

    .line 2302
    const-string v0, ""

    .line 2305
    :cond_0
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Program Service: ["

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

    .line 2306
    return-object v0
.end method

.method public getProgramType()I
    .locals 4

    .prologue
    .line 2355
    const/4 v0, -0x1

    .line 2356
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    if-eqz v1, :cond_0

    .line 2358
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    invoke-virtual {v0}, Lqcom/fmradio/FmRxRdsData;->getPrgmType()I

    move-result v0

    .line 2360
    :cond_0
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PTY: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    return v0
.end method

.method public getRadioText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2319
    const-string v0, ""

    .line 2320
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    if-eqz v1, :cond_0

    .line 2322
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    invoke-virtual {v0}, Lqcom/fmradio/FmRxRdsData;->getRadioText()Ljava/lang/String;

    move-result-object v0

    .line 2323
    if-nez v0, :cond_0

    .line 2325
    const-string v0, ""

    .line 2328
    :cond_0
    const-string v1, "FMService"

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

    .line 2329
    return-object v0
.end method

.method public getRecordingStartTime()J
    .locals 2

    .prologue
    .line 3109
    iget-wide v0, p0, Lcom/caf/fmradio/FMRadioService;->mSampleStart:J

    return-wide v0
.end method

.method public getRmssiFirstStage()I
    .locals 1

    .prologue
    .line 2984
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 2985
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0}, Lqcom/fmradio/FmReceiver;->getRmssiFirstStage()I

    move-result v0

    .line 2987
    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 2902
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 2903
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0}, Lqcom/fmradio/FmReceiver;->getRssi()I

    move-result v0

    .line 2905
    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public getSINR()I
    .locals 1

    .prologue
    .line 2930
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 2931
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0}, Lqcom/fmradio/FmReceiver;->getSINR()I

    move-result v0

    .line 2933
    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public getSearchAlgoType()I
    .locals 1

    .prologue
    .line 2960
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 2961
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0}, Lqcom/fmradio/FmReceiver;->getSearchAlgoType()I

    move-result v0

    .line 2963
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSearchList()[I
    .locals 2

    .prologue
    .line 2392
    const/4 v0, 0x0

    .line 2393
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 2395
    const-string v0, "FMService"

    const-string v1, "getSearchList: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0}, Lqcom/fmradio/FmReceiver;->getStationList()[I

    move-result-object v0

    .line 2398
    :cond_0
    return-object v0
.end method

.method public getSinrFirstStage()I
    .locals 1

    .prologue
    .line 2972
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 2973
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0}, Lqcom/fmradio/FmReceiver;->getSinrFirstStage()I

    move-result v0

    .line 2975
    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public getSinrSamplesCnt()I
    .locals 1

    .prologue
    .line 3008
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 3009
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0}, Lqcom/fmradio/FmReceiver;->getSINRsamples()I

    move-result v0

    .line 3011
    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public getSinrTh()I
    .locals 1

    .prologue
    .line 3014
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 3015
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0}, Lqcom/fmradio/FmReceiver;->getSINRThreshold()I

    move-result v0

    .line 3017
    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public isAnalogModeEnabled()Z
    .locals 1

    .prologue
    .line 1891
    iget-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->misAnalogPathEnabled:Z

    return v0
.end method

.method public isAnalogModeSupported()Z
    .locals 1

    .prologue
    .line 1895
    iget-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->misAnalogModeSupported:Z

    return v0
.end method

.method public isAntennaAvailable()Z
    .locals 2

    .prologue
    .line 2492
    const/4 v0, 0x0

    .line 2493
    .local v0, bAvailable:Z
    iget-boolean v1, p0, Lcom/caf/fmradio/FMRadioService;->mInternalAntennaAvailable:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/caf/fmradio/FMRadioService;->mHeadsetPlugged:Z

    if-eqz v1, :cond_1

    .line 2495
    :cond_0
    const/4 v0, 0x1

    .line 2497
    :cond_1
    return v0
.end method

.method public isCallActive()Z
    .locals 1

    .prologue
    .line 2560
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->getCallState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2561
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFmOn()Z
    .locals 1

    .prologue
    .line 1886
    iget-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mFMOn:Z

    return v0
.end method

.method public isFmRecordingOn()Z
    .locals 1

    .prologue
    .line 1899
    iget-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mFmRecordingOn:Z

    return v0
.end method

.method public isMuted()Z
    .locals 1

    .prologue
    .line 2098
    sget-boolean v0, Lcom/caf/fmradio/FMRadioService;->mMuted:Z

    return v0
.end method

.method public isSleepTimerActive()Z
    .locals 1

    .prologue
    .line 3113
    iget-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mSleepActive:Z

    return v0
.end method

.method public isSpeakerEnabled()Z
    .locals 1

    .prologue
    .line 1903
    iget-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mSpeakerPhoneOn:Z

    return v0
.end method

.method public isWiredHeadsetAvailable()Z
    .locals 1

    .prologue
    .line 2554
    iget-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mHeadsetPlugged:Z

    return v0
.end method

.method public mute()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2052
    .line 2053
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 2064
    :goto_0
    return v0

    .line 2055
    :cond_0
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->isCallActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2056
    const/4 v0, 0x0

    goto :goto_0

    .line 2057
    :cond_1
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2058
    const-string v2, "FMService"

    const-string v3, "mute:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    if-eqz v0, :cond_2

    .line 2061
    sput-boolean v1, Lcom/caf/fmradio/FMRadioService;->mMuted:Z

    .line 2062
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    :cond_2
    move v0, v1

    .line 2064
    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 651
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->cancelAlarms()V

    .line 652
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mServiceInUse:Z

    .line 654
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadioService;->setLowPowerMode(Z)Z

    .line 655
    const-string v0, "FMService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 187
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 189
    new-instance v4, Lcom/caf/fmradio/FmSharedPreferences;

    invoke-direct {v4, p0}, Lcom/caf/fmradio/FmSharedPreferences;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/caf/fmradio/FMRadioService;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    .line 190
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    .line 191
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/caf/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 192
    .local v2, tmgr:Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/caf/fmradio/FMRadioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0xa0

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 194
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/caf/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 195
    .local v1, pm:Landroid/os/PowerManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v6, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/caf/fmradio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 196
    iget-object v4, p0, Lcom/caf/fmradio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 197
    const-string v4, "ro.fm.analogpath.supported"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/caf/fmradio/FMRadioService;->misAnalogModeSupported:Z

    .line 199
    new-instance v4, Lcom/caf/utils/A2dpDeviceStatus;

    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/caf/utils/A2dpDeviceStatus;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/caf/fmradio/FMRadioService;->mA2dpDeviceState:Lcom/caf/utils/A2dpDeviceStatus;

    .line 200
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->registerScreenOnOffListener()V

    .line 201
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->registerHeadsetListener()V

    .line 202
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->registerSleepExpired()V

    .line 203
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->registerRecordTimeout()V

    .line 204
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->registerDelayedServiceStop()V

    .line 205
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->registerFMRecordingStatus()V

    .line 208
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->registerFmMediaButtonReceiver()V

    .line 209
    const-string v4, "ro.fm.mulinst.recording.support"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 210
    iput-boolean v6, p0, Lcom/caf/fmradio/FMRadioService;->mSingleRecordingInstanceSupported:Z

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->registerMusicServiceCommandReceiver()V

    .line 218
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->setAlarmDelayedServiceStop()V

    .line 220
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/caf/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 221
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v4, "isA2dpDeviceSupported"

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, valueStr:Ljava/lang/String;
    const-string v4, "=true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/caf/fmradio/FMRadioService;->mA2dpDeviceSupportInHal:Z

    .line 223
    const-string v4, "FMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " is A2DP device Supported In HAL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/caf/fmradio/FMRadioService;->mA2dpDeviceSupportInHal:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 228
    const-string v2, "FMService"

    const-string v3, "onDestroy"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->isFmOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    const-string v2, "FMService"

    const-string v3, "Service being destroyed while still playing."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 236
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->cancelAlarms()V

    .line 238
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/caf/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 239
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->isMuted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 240
    sput-boolean v5, Lcom/caf/fmradio/FMRadioService;->mMuted:Z

    .line 241
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v5}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 243
    :cond_1
    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 245
    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_2

    .line 246
    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/caf/fmradio/FMRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 247
    iput-object v4, p0, Lcom/caf/fmradio/FMRadioService;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 250
    :cond_2
    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_3

    .line 251
    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/caf/fmradio/FMRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 252
    iput-object v4, p0, Lcom/caf/fmradio/FMRadioService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 254
    :cond_3
    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService;->mMusicCommandListener:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_4

    .line 255
    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService;->mMusicCommandListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/caf/fmradio/FMRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 256
    iput-object v4, p0, Lcom/caf/fmradio/FMRadioService;->mMusicCommandListener:Landroid/content/BroadcastReceiver;

    .line 258
    :cond_4
    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService;->mFmMediaButtonListener:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_5

    .line 259
    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService;->mFmMediaButtonListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/caf/fmradio/FMRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 260
    iput-object v4, p0, Lcom/caf/fmradio/FMRadioService;->mFmMediaButtonListener:Landroid/content/BroadcastReceiver;

    .line 262
    :cond_5
    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService;->mSleepExpiredListener:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_6

    .line 263
    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService;->mSleepExpiredListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/caf/fmradio/FMRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 264
    iput-object v4, p0, Lcom/caf/fmradio/FMRadioService;->mSleepExpiredListener:Landroid/content/BroadcastReceiver;

    .line 266
    :cond_6
    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService;->mRecordTimeoutListener:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_7

    .line 267
    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService;->mRecordTimeoutListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/caf/fmradio/FMRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 268
    iput-object v4, p0, Lcom/caf/fmradio/FMRadioService;->mRecordTimeoutListener:Landroid/content/BroadcastReceiver;

    .line 270
    :cond_7
    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService;->mDelayedServiceStopListener:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_8

    .line 271
    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService;->mDelayedServiceStopListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/caf/fmradio/FMRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 272
    iput-object v4, p0, Lcom/caf/fmradio/FMRadioService;->mDelayedServiceStopListener:Landroid/content/BroadcastReceiver;

    .line 274
    :cond_8
    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService;->mFmRecordingStatus:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_9

    .line 275
    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService;->mFmRecordingStatus:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/caf/fmradio/FMRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 276
    iput-object v4, p0, Lcom/caf/fmradio/FMRadioService;->mFmRecordingStatus:Landroid/content/BroadcastReceiver;

    .line 279
    :cond_9
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->fmOff()Z

    .line 281
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/caf/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 282
    .local v1, tmgr:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 284
    const-string v2, "FMService"

    const-string v3, "onDestroy: unbindFromService completed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 288
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 289
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 661
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 662
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->cancelAlarmDealyedServiceStop()V

    .line 663
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mServiceInUse:Z

    .line 665
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadioService;->setLowPowerMode(Z)Z

    .line 666
    const-string v0, "FMService"

    const-string v1, "onRebind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 671
    const-string v0, "FMService"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iput p2, p0, Lcom/caf/fmradio/FMRadioService;->mServiceStartId:I

    .line 675
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 676
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->cancelAlarmDealyedServiceStop()V

    .line 677
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->setAlarmDelayedServiceStop()V

    .line 678
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 682
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mServiceInUse:Z

    .line 683
    const-string v0, "FMService"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->unregisterCallbacks()V

    .line 687
    invoke-virtual {p0, v2}, Lcom/caf/fmradio/FMRadioService;->setLowPowerMode(Z)Z

    .line 688
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    :goto_0
    return v2

    .line 694
    :cond_0
    iget v0, p0, Lcom/caf/fmradio/FMRadioService;->mServiceStartId:I

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadioService;->stopSelf(I)V

    goto :goto_0
.end method

.method public readInternalAntennaAvailable()V
    .locals 3

    .prologue
    .line 1327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mInternalAntennaAvailable:Z

    .line 1328
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0}, Lqcom/fmradio/FmReceiver;->getInternalAntenna()Z

    move-result v0

    iput-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mInternalAntennaAvailable:Z

    .line 1331
    const-string v0, "FMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInternalAntenna: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/caf/fmradio/FMRadioService;->mInternalAntennaAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    :cond_0
    return-void
.end method

.method public registerCallbacks(Lcom/caf/fmradio/IFMRadioServiceCallbacks;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 2000
    iput-object p1, p0, Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    .line 2001
    return-void
.end method

.method public registerDelayedServiceStop()V
    .locals 2

    .prologue
    .line 580
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mDelayedServiceStopListener:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 581
    new-instance v1, Lcom/caf/fmradio/FMRadioService$7;

    invoke-direct {v1, p0}, Lcom/caf/fmradio/FMRadioService$7;-><init>(Lcom/caf/fmradio/FMRadioService;)V

    iput-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mDelayedServiceStopListener:Landroid/content/BroadcastReceiver;

    .line 592
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.caf.fmradio.SERVICE_STOP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 593
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mDelayedServiceStopListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/caf/fmradio/FMRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 595
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public registerFMRecordingStatus()V
    .locals 2

    .prologue
    .line 292
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mFmRecordingStatus:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 293
    new-instance v1, Lcom/caf/fmradio/FMRadioService$1;

    invoke-direct {v1, p0}, Lcom/caf/fmradio/FMRadioService$1;-><init>(Lcom/caf/fmradio/FMRadioService;)V

    iput-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mFmRecordingStatus:Landroid/content/BroadcastReceiver;

    .line 330
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 331
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "codeaurora.intent.action.FM.Recording.Status"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mFmRecordingStatus:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/caf/fmradio/FMRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 334
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public registerFmMediaButtonReceiver()V
    .locals 2

    .prologue
    .line 418
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mFmMediaButtonListener:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 419
    new-instance v1, Lcom/caf/fmradio/FMRadioService$3;

    invoke-direct {v1, p0}, Lcom/caf/fmradio/FMRadioService$3;-><init>(Lcom/caf/fmradio/FMRadioService;)V

    iput-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mFmMediaButtonListener:Landroid/content/BroadcastReceiver;

    .line 504
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 505
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "com.caf.fmradio.action.MEDIA_BUTTON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 506
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mFmMediaButtonListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/caf/fmradio/FMRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 508
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public registerHeadsetListener()V
    .locals 2

    .prologue
    .line 342
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 343
    new-instance v1, Lcom/caf/fmradio/FMRadioService$2;

    invoke-direct {v1, p0}, Lcom/caf/fmradio/FMRadioService$2;-><init>(Lcom/caf/fmradio/FMRadioService;)V

    iput-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 407
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 408
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 409
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mA2dpDeviceState:Lcom/caf/utils/A2dpDeviceStatus;

    invoke-virtual {v1}, Lcom/caf/utils/A2dpDeviceStatus;->getActionSinkStateChangedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 410
    const-string v1, "HDMI_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 411
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 412
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 413
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/caf/fmradio/FMRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 415
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public registerMusicServiceCommandReceiver()V
    .locals 2

    .prologue
    .line 511
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mMusicCommandListener:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 512
    new-instance v1, Lcom/caf/fmradio/FMRadioService$4;

    invoke-direct {v1, p0}, Lcom/caf/fmradio/FMRadioService$4;-><init>(Lcom/caf/fmradio/FMRadioService;)V

    iput-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mMusicCommandListener:Landroid/content/BroadcastReceiver;

    .line 546
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 547
    .local v0, commandFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 548
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mMusicCommandListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/caf/fmradio/FMRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 550
    .end local v0           #commandFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public registerRecordTimeout()V
    .locals 2

    .prologue
    .line 566
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mRecordTimeoutListener:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 567
    new-instance v1, Lcom/caf/fmradio/FMRadioService$6;

    invoke-direct {v1, p0}, Lcom/caf/fmradio/FMRadioService$6;-><init>(Lcom/caf/fmradio/FMRadioService;)V

    iput-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mRecordTimeoutListener:Landroid/content/BroadcastReceiver;

    .line 575
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.caf.fmradio.RECORD_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 576
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mRecordTimeoutListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/caf/fmradio/FMRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 578
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public registerScreenOnOffListener()V
    .locals 2

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1234
    new-instance v0, Lcom/caf/fmradio/FMRadioService$13;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadioService$13;-><init>(Lcom/caf/fmradio/FMRadioService;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 1250
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1251
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1252
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1253
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/caf/fmradio/FMRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1255
    :cond_0
    return-void
.end method

.method public registerSleepExpired()V
    .locals 2

    .prologue
    .line 552
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mSleepExpiredListener:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 553
    new-instance v1, Lcom/caf/fmradio/FMRadioService$5;

    invoke-direct {v1, p0}, Lcom/caf/fmradio/FMRadioService$5;-><init>(Lcom/caf/fmradio/FMRadioService;)V

    iput-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mSleepExpiredListener:Landroid/content/BroadcastReceiver;

    .line 561
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.caf.fmradio.SLEEP_EXPIRED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 562
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mSleepExpiredListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/caf/fmradio/FMRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 564
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public routeAudio(I)Z
    .locals 2
    .parameter

    .prologue
    .line 2016
    const/4 v1, 0x0

    .line 2017
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2021
    packed-switch p1, :pswitch_data_0

    .line 2032
    const-string v0, "headset"

    sput-object v0, Lcom/caf/fmradio/FMRadioService;->mAudioDevice:Ljava/lang/String;

    .line 2036
    :goto_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 2044
    :cond_0
    return v1

    .line 2024
    :pswitch_0
    const-string v0, "headset"

    sput-object v0, Lcom/caf/fmradio/FMRadioService;->mAudioDevice:Ljava/lang/String;

    goto :goto_0

    .line 2028
    :pswitch_1
    const-string v0, "speaker"

    sput-object v0, Lcom/caf/fmradio/FMRadioService;->mAudioDevice:Ljava/lang/String;

    goto :goto_0

    .line 2021
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public scan(I)Z
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x1f

    const/4 v1, 0x5

    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 2171
    .line 2172
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_2

    .line 2174
    const-string v0, "FMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scan:  PTY: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->isRBDSStd()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2178
    if-lez p1, :cond_0

    const/16 v0, 0x17

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x1d

    if-lt p1, v0, :cond_3

    if-gt p1, v7, :cond_3

    .line 2180
    :cond_1
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lqcom/fmradio/FmReceiver;->searchStations(IIIII)Z

    move-result v5

    .line 2212
    :cond_2
    :goto_0
    return v5

    .line 2188
    :cond_3
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0, v3, v2, v3}, Lqcom/fmradio/FmReceiver;->searchStations(III)Z

    move-result v5

    goto :goto_0

    .line 2196
    :cond_4
    if-lez p1, :cond_5

    if-gt p1, v7, :cond_5

    .line 2198
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lqcom/fmradio/FmReceiver;->searchStations(IIIII)Z

    move-result v5

    goto :goto_0

    .line 2206
    :cond_5
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0, v3, v2, v3}, Lqcom/fmradio/FmReceiver;->searchStations(III)Z

    move-result v5

    goto :goto_0
.end method

.method public searchStrongStationList(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2228
    .line 2229
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 2231
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "searchStrongStationList:  numStations: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, p1, v0}, Lqcom/fmradio/FmReceiver;->searchStationList(IIII)Z

    move-result v0

    .line 2237
    :cond_0
    return v0
.end method

.method public seek(Z)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2132
    .line 2133
    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v2, :cond_1

    .line 2135
    if-ne p1, v0, :cond_0

    .line 2137
    const-string v2, "FMService"

    const-string v3, "seek:  Up"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v2, v1, v0, v0}, Lqcom/fmradio/FmReceiver;->searchStations(III)Z

    .line 2151
    :goto_0
    return v0

    .line 2144
    :cond_0
    const-string v2, "FMService"

    const-string v3, "seek:  Down"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v2, v1, v0, v1}, Lqcom/fmradio/FmReceiver;->searchStations(III)Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public seekPI(I)Z
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 2252
    .line 2253
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 2255
    const-string v0, "FMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seekPI:  piCode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    const/4 v1, 0x6

    move v3, v2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lqcom/fmradio/FmReceiver;->searchStations(IIIII)Z

    move-result v4

    .line 2263
    :cond_0
    return v4
.end method

.method setAfJmpRmssiSamplesCnt(I)Z
    .locals 1
    .parameter "afJmpRmssiSmplsCnt"

    .prologue
    .line 3033
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 3034
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0, p1}, Lqcom/fmradio/FmReceiver;->setAFJumpRmssiSamples(I)Z

    move-result v0

    .line 3036
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAfJmpRmssiTh(I)Z
    .locals 1
    .parameter "afJmpRmssiTh"

    .prologue
    .line 3021
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 3022
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0, p1}, Lqcom/fmradio/FmReceiver;->setAFJumpRmssiTh(I)Z

    move-result v0

    .line 3024
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCFOMeanTh(I)Z
    .locals 1
    .parameter "th"

    .prologue
    .line 3002
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 3003
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0, p1}, Lqcom/fmradio/FmReceiver;->setCFOMeanTh(I)Z

    move-result v0

    .line 3005
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setGoodChRmssiTh(I)Z
    .locals 1
    .parameter "gdChRmssiTh"

    .prologue
    .line 3027
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 3028
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0, p1}, Lqcom/fmradio/FmReceiver;->setGdChRmssiTh(I)Z

    move-result v0

    .line 3030
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHiLoInj(I)V
    .locals 1
    .parameter "inj"

    .prologue
    .line 2926
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 2927
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0, p1}, Lqcom/fmradio/FmReceiver;->setHiLoInj(I)V

    .line 2928
    :cond_0
    return-void
.end method

.method public setIntfDetHighTh(I)Z
    .locals 1
    .parameter "intfHighTh"

    .prologue
    .line 2954
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 2955
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0, p1}, Lqcom/fmradio/FmReceiver;->setOffChannelThreshold(I)Z

    move-result v0

    .line 2957
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIntfDetLowTh(I)Z
    .locals 1
    .parameter "intfLowTh"

    .prologue
    .line 2948
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 2949
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0, p1}, Lqcom/fmradio/FmReceiver;->setOnChannelThreshold(I)Z

    move-result v0

    .line 2951
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLowPowerMode(Z)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2410
    .line 2411
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 2413
    const-string v1, "FMService"

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

    .line 2414
    if-eqz p1, :cond_1

    .line 2416
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmReceiver;->setPowerMode(I)Z

    move-result v0

    .line 2423
    :cond_0
    :goto_0
    return v0

    .line 2420
    :cond_1
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v1, v0}, Lqcom/fmradio/FmReceiver;->setPowerMode(I)Z

    move-result v0

    goto :goto_0
.end method

.method public setRmssiFirstStage(I)Z
    .locals 1
    .parameter "rmssi"

    .prologue
    .line 2990
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 2991
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0, p1}, Lqcom/fmradio/FmReceiver;->setRmssiFirstStage(I)Z

    move-result v0

    .line 2993
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRxRepeatCount(I)Z
    .locals 1
    .parameter "count"

    .prologue
    .line 3102
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 3103
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0, p1}, Lqcom/fmradio/FmReceiver;->setPSRxRepeatCount(I)Z

    move-result v0

    .line 3105
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSearchAlgoType(I)Z
    .locals 1
    .parameter "searchType"

    .prologue
    .line 2966
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 2967
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0, p1}, Lqcom/fmradio/FmReceiver;->setSearchAlgoType(I)Z

    move-result v0

    .line 2969
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSinrFirstStage(I)Z
    .locals 1
    .parameter "sinr"

    .prologue
    .line 2978
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 2979
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0, p1}, Lqcom/fmradio/FmReceiver;->setSinrFirstStage(I)Z

    move-result v0

    .line 2981
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSinrSamplesCnt(I)Z
    .locals 1
    .parameter "samplesCnt"

    .prologue
    .line 2936
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 2937
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0, p1}, Lqcom/fmradio/FmReceiver;->setSINRsamples(I)Z

    move-result v0

    .line 2939
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSinrTh(I)Z
    .locals 1
    .parameter "sinr"

    .prologue
    .line 2942
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 2943
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0, p1}, Lqcom/fmradio/FmReceiver;->setSINRThreshold(I)Z

    move-result v0

    .line 2945
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startA2dpPlayback()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 939
    const-string v2, "FMService"

    const-string v3, "In startA2dpPlayback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-boolean v2, p0, Lcom/caf/fmradio/FMRadioService;->mSingleRecordingInstanceSupported:Z

    if-ne v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/caf/fmradio/FMRadioService;->mFmRecordingOn:Z

    if-ne v1, v2, :cond_0

    .line 942
    const-string v1, "Recording already in progress,can\'t play on BT"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 978
    :goto_0
    return v0

    .line 947
    :cond_0
    iget-boolean v2, p0, Lcom/caf/fmradio/FMRadioService;->mOverA2DP:Z

    if-eqz v2, :cond_1

    .line 948
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->stopA2dpPlayback()V

    .line 949
    :cond_1
    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v2, p0, Lcom/caf/fmradio/FMRadioService;->mA2dp:Landroid/media/MediaRecorder;

    .line 950
    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService;->mA2dp:Landroid/media/MediaRecorder;

    if-nez v2, :cond_2

    .line 951
    const-string v1, "A2dpPlayback failed to create an instance"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 956
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService;->mA2dp:Landroid/media/MediaRecorder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 957
    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService;->mA2dp:Landroid/media/MediaRecorder;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 958
    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService;->mA2dp:Landroid/media/MediaRecorder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 959
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 961
    :try_start_1
    const-string v3, "FMRecording"

    const-string v4, ".3gpp"

    invoke-static {v3, v4, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/caf/fmradio/FMRadioService;->mA2DPSampleFile:Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 969
    :try_start_2
    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService;->mA2dp:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/caf/fmradio/FMRadioService;->mA2DPSampleFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 970
    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService;->mA2dp:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V

    .line 971
    iget-object v2, p0, Lcom/caf/fmradio/FMRadioService;->mA2dp:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V

    move v0, v1

    .line 978
    goto :goto_0

    .line 963
    :catch_0
    move-exception v1

    .line 964
    const-string v1, "FMService"

    const-string v2, "Not able to access Phone\'s internal memory"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    const-string v1, "Not able to access Phone\'s internal memory"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 972
    :catch_1
    move-exception v1

    .line 973
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mA2dp:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    .line 974
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mA2dp:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 975
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mA2dp:Landroid/media/MediaRecorder;

    goto :goto_0
.end method

.method public startNotification()V
    .locals 6

    .prologue
    const v5, 0x7f09004f

    const v4, 0x7f02003a

    const/4 v3, 0x0

    .line 1277
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03000f

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1278
    const v1, 0x7f09004e

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1279
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->isFmOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1281
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->getTunedFrequencyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1287
    :goto_0
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 1288
    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1289
    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 1290
    iput v4, v1, Landroid/app/Notification;->icon:I

    .line 1291
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.caf.fmradio.FMRADIO_ACTIVITY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1293
    const/16 v0, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/caf/fmradio/FMRadioService;->startForeground(ILandroid/app/Notification;)V

    .line 1298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mFMOn:Z

    .line 1299
    return-void

    .line 1284
    :cond_0
    const-string v1, ""

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public startRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 917
    const-string v0, "FMService"

    const-string v1, "In startRecording of Recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->getRecordServiceStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 919
    const-string v0, "FMService"

    const-string v1, "Recording Service is not in running state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    invoke-direct {p0, v2}, Lcom/caf/fmradio/FMRadioService;->sendRecordServiceIntent(I)V

    .line 922
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 928
    :cond_0
    iget-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mSingleRecordingInstanceSupported:Z

    if-ne v2, v0, :cond_1

    iget-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mOverA2DP:Z

    if-ne v2, v0, :cond_1

    .line 930
    const-string v0, "playback on BT in progress,can\'t record now"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 936
    :goto_0
    return-void

    .line 923
    :catch_0
    move-exception v0

    .line 924
    const-string v0, "FMService"

    const-string v1, "RunningThread InterruptedException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 935
    :cond_1
    invoke-direct {p0, v2}, Lcom/caf/fmradio/FMRadioService;->sendRecordIntent(I)V

    goto :goto_0
.end method

.method public stopA2dpPlayback()V
    .locals 4

    .prologue
    .line 982
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mA2dp:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 1000
    :goto_0
    return-void

    .line 984
    :cond_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mA2DPSampleFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 987
    :try_start_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mA2DPSampleFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 993
    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mA2dp:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 994
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mA2dp:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 995
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mA2dp:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 996
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mA2dp:Landroid/media/MediaRecorder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 997
    :catch_0
    move-exception v0

    .line 998
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop failed with exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 988
    :catch_1
    move-exception v0

    .line 989
    const-string v0, "FMService"

    const-string v1, "Not able to delete file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public stopRecording()V
    .locals 1

    .prologue
    .line 1035
    iget-boolean v0, p0, Lcom/caf/fmradio/FMRadioService;->mFmRecordingOn:Z

    if-nez v0, :cond_0

    .line 1038
    :goto_0
    return-void

    .line 1037
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/caf/fmradio/FMRadioService;->sendRecordIntent(I)V

    goto :goto_0
.end method

.method public tune(I)Z
    .locals 6
    .parameter

    .prologue
    .line 2108
    const/4 v0, 0x0

    .line 2109
    int-to-double v1, p1

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    .line 2111
    const-string v3, "FMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tuneRadio:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    iget-object v1, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 2114
    iget-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0, p1}, Lqcom/fmradio/FmReceiver;->setStation(I)Z

    .line 2115
    const/4 v0, 0x1

    .line 2117
    :cond_0
    return v0
.end method

.method public unMute()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2072
    const/4 v1, 0x1

    .line 2073
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->isMuted()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 2089
    :goto_0
    return v0

    .line 2075
    :cond_0
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadioService;->isCallActive()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 2076
    goto :goto_0

    .line 2077
    :cond_1
    const-string v0, "FMService"

    const-string v3, "unMute:"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2079
    if-eqz v0, :cond_2

    .line 2081
    sput-boolean v2, Lcom/caf/fmradio/FMRadioService;->mMuted:Z

    .line 2082
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 2083
    sget-boolean v0, Lcom/caf/fmradio/FMRadioService;->mResumeAfterCall:Z

    if-eqz v0, :cond_2

    .line 2086
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadioService;->startFM()V

    :cond_2
    move v0, v1

    .line 2089
    goto :goto_0
.end method

.method public unregisterCallbacks()V
    .locals 1

    .prologue
    .line 2008
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caf/fmradio/FMRadioService;->mCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    .line 2009
    return-void
.end method
