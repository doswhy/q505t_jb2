.class public Lcom/caf/fmradio/FMRadio;
.super Landroid/app/Activity;
.source "FMRadio.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caf/fmradio/FMRadio$ServiceBinder;,
        Lcom/caf/fmradio/FMRadio$ScrollerText;,
        Lcom/caf/fmradio/FMRadio$LoadedDataAndState;
    }
.end annotation


# static fields
.field private static mAudioRoute:I

.field private static mCommandActive:I

.field private static mCommandFailed:I

.field private static mDisplayWidth:I

.field private static mFMStats:Z

.field private static mIsScaning:Z

.field private static mIsSearching:Z

.field private static mIsSeeking:Z

.field private static mRecording:Z

.field private static mScanPty:I

.field private static mScanPtyIndex:I

.field private static mSleepAtPhoneTime:J

.field public static mUpdatePickerValue:Z

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;

.field private static final sTimeArgs:[Ljava/lang/Object;


# instance fields
.field private SavedDataAndState:Lcom/caf/fmradio/FMRadio$LoadedDataAndState;

.field private doRecordProcessing:Ljava/lang/Runnable;

.field private doSleepProcessing:Ljava/lang/Runnable;

.field private mAnimation:Landroid/view/animation/Animation;

.field private mBackButton:Landroid/widget/ImageView;

.field private mBackClickListener:Landroid/view/View$OnClickListener;

.field private mBackLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mCommandTimeoutHandler:Landroid/os/Handler;

.field private mDisableRadioHandler:Landroid/os/Handler;

.field private mDisableRadioTask:Ljava/lang/Runnable;

.field private mERadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

.field private mERadioTextTV:Landroid/widget/TextView;

.field private mEnableRadioHandler:Landroid/os/Handler;

.field private mEnableRadioTask:Ljava/lang/Runnable;

.field private mEnableSpeakerTask:Ljava/lang/Runnable;

.field private mFmSettingReceiver:Landroid/content/BroadcastReceiver;

.field private mForwardButton:Landroid/widget/ImageView;

.field private mForwardClickListener:Landroid/view/View$OnClickListener;

.field private mForwardLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mFrequency:I

.field mFrequencyChangeListener:Lcom/caf/utils/FrequencyPickerDialog$OnFrequencySetListener;

.field private mFrequencyViewClickListener:Landroid/view/View$OnLongClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mItemsIndex:I

.field private mMuteButton:Landroid/widget/ImageView;

.field private mMuteModeClickListener:Landroid/view/View$OnClickListener;

.field mOnMute:Ljava/lang/Runnable;

.field private mOnOffButton:Landroid/widget/ImageView;

.field mOnStereo:Ljava/lang/Runnable;

.field private mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

.field private mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

.field private mPresetButtonClickListener:Landroid/view/View$OnClickListener;

.field private mPresetButtonOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mPresetButtonStation:Lcom/caf/fmradio/PresetStation;

.field private mPresetButtons:[Landroid/widget/Button;

.field private mPresetListButton:Landroid/widget/Button;

.field private mPresetListButtonOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mPresetListClickListener:Landroid/view/View$OnClickListener;

.field private mPresetPageButton:Landroid/widget/ImageButton;

.field private mPresetPageNumber:I

.field private mPresetsPageClickListener:Landroid/view/View$OnClickListener;

.field private mProgramServiceTV:Landroid/widget/TextView;

.field private mProgramTypeTV:Landroid/widget/TextView;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRSSI:Landroid/widget/ImageView;

.field mRadioChangeFrequency:Ljava/lang/Runnable;

.field mRadioDisabled:Ljava/lang/Runnable;

.field mRadioEnabled:Ljava/lang/Runnable;

.field mRadioReset:Ljava/lang/Runnable;

.field private mRadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

.field private mRadioTextTV:Landroid/widget/TextView;

.field private mRecordButtonListener:Landroid/view/View$OnClickListener;

.field private mRecordUpdateHandlerThread:Ljava/lang/Thread;

.field mRecorder:Landroid/media/MediaRecorder;

.field private mRecordingMsgTV:Landroid/widget/TextView;

.field mSearchComplete:Ljava/lang/Runnable;

.field private mSearchProgressHandler:Landroid/os/Handler;

.field private mService:Lcom/caf/fmradio/IFMRadioService;

.field private mServiceCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;

.field private mSleepMsgTV:Landroid/widget/TextView;

.field private mSleepUpdateHandlerThread:Ljava/lang/Thread;

.field private mSpeakerButton:Landroid/widget/ImageView;

.field private mSpeakerClickListener:Landroid/view/View$OnClickListener;

.field private mStationCallSignTV:Landroid/widget/TextView;

.field private mStereo:I

.field private mStereoTV:Landroid/widget/TextView;

.field private mTuneStationFrequencyTV:Landroid/widget/TextView;

.field private mTunedStation:Lcom/caf/fmradio/PresetStation;

.field private mTurnOnOffClickListener:Landroid/view/View$OnClickListener;

.field private mUIUpdateHandlerHandler:Landroid/os/Handler;

.field mUpdateExtenRadioText:Ljava/lang/Runnable;

.field mUpdateProgramService:Ljava/lang/Runnable;

.field mUpdateRadioText:Ljava/lang/Runnable;

.field mUpdateStationInfo:Ljava/lang/Runnable;

.field private osc:Landroid/content/ServiceConnection;

.field private sConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/caf/fmradio/FMRadio$ServiceBinder;",
            ">;"
        }
    .end annotation
.end field

.field public sService:Lcom/caf/fmradio/IFMRadioService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 230
    sput v0, Lcom/caf/fmradio/FMRadio;->mAudioRoute:I

    .line 231
    sput-boolean v0, Lcom/caf/fmradio/FMRadio;->mFMStats:Z

    .line 235
    sput-boolean v0, Lcom/caf/fmradio/FMRadio;->mRecording:Z

    .line 236
    sput-boolean v0, Lcom/caf/fmradio/FMRadio;->mIsScaning:Z

    .line 237
    sput-boolean v0, Lcom/caf/fmradio/FMRadio;->mIsSeeking:Z

    .line 238
    sput-boolean v0, Lcom/caf/fmradio/FMRadio;->mIsSearching:Z

    .line 239
    sput v0, Lcom/caf/fmradio/FMRadio;->mScanPty:I

    .line 240
    sput v0, Lcom/caf/fmradio/FMRadio;->mScanPtyIndex:I

    .line 254
    sput v0, Lcom/caf/fmradio/FMRadio;->mCommandActive:I

    .line 257
    sput v0, Lcom/caf/fmradio/FMRadio;->mCommandFailed:I

    .line 269
    sput-boolean v0, Lcom/caf/fmradio/FMRadio;->mUpdatePickerValue:Z

    .line 2330
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/caf/fmradio/FMRadio;->mSleepAtPhoneTime:J

    .line 2495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/caf/fmradio/FMRadio;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 2496
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/caf/fmradio/FMRadio;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/caf/fmradio/FMRadio;->sFormatter:Ljava/util/Formatter;

    .line 2498
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/caf/fmradio/FMRadio;->sTimeArgs:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 100
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 105
    iput-object v3, p0, Lcom/caf/fmradio/FMRadio;->mRecorder:Landroid/media/MediaRecorder;

    .line 191
    iput-object v3, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    .line 201
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/widget/Button;

    aput-object v3, v0, v2

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    aput-object v3, v0, v1

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtons:[Landroid/widget/Button;

    .line 226
    iput v2, p0, Lcom/caf/fmradio/FMRadio;->mPresetPageNumber:I

    .line 227
    iput v4, p0, Lcom/caf/fmradio/FMRadio;->mStereo:I

    .line 241
    iput-object v3, p0, Lcom/caf/fmradio/FMRadio;->mAnimation:Landroid/view/animation/Animation;

    .line 242
    iput-object v3, p0, Lcom/caf/fmradio/FMRadio;->mRadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    .line 243
    iput-object v3, p0, Lcom/caf/fmradio/FMRadio;->mERadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    .line 245
    new-instance v0, Lcom/caf/fmradio/PresetStation;

    const-string v1, ""

    const v2, 0x18ed4

    invoke-direct {v0, v1, v2}, Lcom/caf/fmradio/PresetStation;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mTunedStation:Lcom/caf/fmradio/PresetStation;

    .line 246
    iput-object v3, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtonStation:Lcom/caf/fmradio/PresetStation;

    .line 249
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mHandler:Landroid/os/Handler;

    .line 251
    iput-object v3, p0, Lcom/caf/fmradio/FMRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 263
    iput v4, p0, Lcom/caf/fmradio/FMRadio;->mItemsIndex:I

    .line 271
    iput-object v3, p0, Lcom/caf/fmradio/FMRadio;->SavedDataAndState:Lcom/caf/fmradio/FMRadio$LoadedDataAndState;

    .line 276
    iput-object v3, p0, Lcom/caf/fmradio/FMRadio;->mFmSettingReceiver:Landroid/content/BroadcastReceiver;

    .line 788
    new-instance v0, Lcom/caf/fmradio/FMRadio$2;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$2;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->doRecordProcessing:Ljava/lang/Runnable;

    .line 812
    iput-object v3, p0, Lcom/caf/fmradio/FMRadio;->mRecordUpdateHandlerThread:Ljava/lang/Thread;

    .line 1434
    new-instance v0, Lcom/caf/fmradio/FMRadio$17;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$17;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mFrequencyViewClickListener:Landroid/view/View$OnLongClickListener;

    .line 1442
    new-instance v0, Lcom/caf/fmradio/FMRadio$18;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$18;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mForwardClickListener:Landroid/view/View$OnClickListener;

    .line 1451
    new-instance v0, Lcom/caf/fmradio/FMRadio$19;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$19;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mBackClickListener:Landroid/view/View$OnClickListener;

    .line 1460
    new-instance v0, Lcom/caf/fmradio/FMRadio$20;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$20;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mForwardLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1468
    new-instance v0, Lcom/caf/fmradio/FMRadio$21;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$21;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mBackLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1476
    new-instance v0, Lcom/caf/fmradio/FMRadio$22;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$22;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPresetListClickListener:Landroid/view/View$OnClickListener;

    .line 1482
    new-instance v0, Lcom/caf/fmradio/FMRadio$23;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$23;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPresetListButtonOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1490
    new-instance v0, Lcom/caf/fmradio/FMRadio$24;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$24;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPresetsPageClickListener:Landroid/view/View$OnClickListener;

    .line 1498
    new-instance v0, Lcom/caf/fmradio/FMRadio$25;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$25;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtonClickListener:Landroid/view/View$OnClickListener;

    .line 1511
    new-instance v0, Lcom/caf/fmradio/FMRadio$26;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$26;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtonOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1526
    new-instance v0, Lcom/caf/fmradio/FMRadio$27;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$27;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mFrequencyChangeListener:Lcom/caf/utils/FrequencyPickerDialog$OnFrequencySetListener;

    .line 1535
    new-instance v0, Lcom/caf/fmradio/FMRadio$28;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$28;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mSpeakerClickListener:Landroid/view/View$OnClickListener;

    .line 1547
    new-instance v0, Lcom/caf/fmradio/FMRadio$29;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$29;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mEnableSpeakerTask:Ljava/lang/Runnable;

    .line 1555
    new-instance v0, Lcom/caf/fmradio/FMRadio$30;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$30;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mMuteModeClickListener:Landroid/view/View$OnClickListener;

    .line 1584
    new-instance v0, Lcom/caf/fmradio/FMRadio$31;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$31;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRecordButtonListener:Landroid/view/View$OnClickListener;

    .line 1595
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mEnableRadioHandler:Landroid/os/Handler;

    .line 1596
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mDisableRadioHandler:Landroid/os/Handler;

    .line 1597
    new-instance v0, Lcom/caf/fmradio/FMRadio$32;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$32;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mEnableRadioTask:Ljava/lang/Runnable;

    .line 1606
    new-instance v0, Lcom/caf/fmradio/FMRadio$33;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$33;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mDisableRadioTask:Ljava/lang/Runnable;

    .line 1614
    new-instance v0, Lcom/caf/fmradio/FMRadio$34;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$34;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mTurnOnOffClickListener:Landroid/view/View$OnClickListener;

    .line 2302
    new-instance v0, Lcom/caf/fmradio/FMRadio$35;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$35;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mSearchProgressHandler:Landroid/os/Handler;

    .line 2325
    iput-object v3, p0, Lcom/caf/fmradio/FMRadio;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    .line 2434
    new-instance v0, Lcom/caf/fmradio/FMRadio$36;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$36;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mUIUpdateHandlerHandler:Landroid/os/Handler;

    .line 2470
    new-instance v0, Lcom/caf/fmradio/FMRadio$37;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$37;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->doSleepProcessing:Ljava/lang/Runnable;

    .line 2563
    new-instance v0, Lcom/caf/fmradio/FMRadio$38;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$38;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mCommandTimeoutHandler:Landroid/os/Handler;

    .line 2613
    new-instance v0, Lcom/caf/fmradio/FMRadio$39;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$39;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioEnabled:Ljava/lang/Runnable;

    .line 2623
    new-instance v0, Lcom/caf/fmradio/FMRadio$40;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$40;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioDisabled:Ljava/lang/Runnable;

    .line 2634
    new-instance v0, Lcom/caf/fmradio/FMRadio$41;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$41;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioReset:Ljava/lang/Runnable;

    .line 2641
    new-instance v0, Lcom/caf/fmradio/FMRadio$42;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$42;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mUpdateStationInfo:Ljava/lang/Runnable;

    .line 2653
    new-instance v0, Lcom/caf/fmradio/FMRadio$43;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$43;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mSearchComplete:Ljava/lang/Runnable;

    .line 2667
    new-instance v0, Lcom/caf/fmradio/FMRadio$44;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$44;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mOnMute:Ljava/lang/Runnable;

    .line 2673
    new-instance v0, Lcom/caf/fmradio/FMRadio$45;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$45;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mOnStereo:Ljava/lang/Runnable;

    .line 2686
    new-instance v0, Lcom/caf/fmradio/FMRadio$46;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$46;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mUpdateRadioText:Ljava/lang/Runnable;

    .line 2727
    new-instance v0, Lcom/caf/fmradio/FMRadio$47;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$47;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioChangeFrequency:Ljava/lang/Runnable;

    .line 2734
    new-instance v0, Lcom/caf/fmradio/FMRadio$48;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$48;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mUpdateExtenRadioText:Ljava/lang/Runnable;

    .line 2757
    new-instance v0, Lcom/caf/fmradio/FMRadio$49;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$49;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mUpdateProgramService:Ljava/lang/Runnable;

    .line 2924
    iput-object v3, p0, Lcom/caf/fmradio/FMRadio;->sService:Lcom/caf/fmradio/IFMRadioService;

    .line 2925
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->sConnectionMap:Ljava/util/HashMap;

    .line 2979
    new-instance v0, Lcom/caf/fmradio/FMRadio$50;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$50;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->osc:Landroid/content/ServiceConnection;

    .line 3022
    new-instance v0, Lcom/caf/fmradio/FMRadio$51;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$51;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mServiceCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;

    return-void
.end method

.method private DebugToasts(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2797
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    return-void
.end method

.method private RestoreDefaults()V
    .locals 1

    .prologue
    .line 1430
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->SetDefaults()V

    .line 1431
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    invoke-virtual {v0}, Lcom/caf/fmradio/FmSharedPreferences;->Save()V

    .line 1432
    return-void
.end method

.method private SeekNextStation()V
    .locals 2

    .prologue
    .line 2190
    const-string v0, "FMRadio"

    const-string v1, "SeekNextStation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-eqz v0, :cond_0

    .line 2193
    :try_start_0
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isSeekActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2194
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/caf/fmradio/IFMRadioService;->seek(Z)Z

    move-result v0

    sput-boolean v0, Lcom/caf/fmradio/FMRadio;->mIsSeeking:Z

    .line 2195
    sget-boolean v0, Lcom/caf/fmradio/FMRadio;->mIsSeeking:Z

    if-nez v0, :cond_0

    .line 2196
    const/4 v0, 0x6

    sput v0, Lcom/caf/fmradio/FMRadio;->mCommandFailed:I

    .line 2197
    const-string v0, "FMRadio"

    const-string v1, "mService.seek failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->showDialog(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2205
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->updateSearchProgress()V

    .line 2206
    return-void

    .line 2201
    :catch_0
    move-exception v0

    .line 2202
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private SeekPreviousStation()V
    .locals 2

    .prologue
    .line 2171
    const-string v0, "FMRadio"

    const-string v1, "SeekPreviousStation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-eqz v0, :cond_0

    .line 2174
    :try_start_0
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isSeekActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2175
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/caf/fmradio/IFMRadioService;->seek(Z)Z

    move-result v0

    sput-boolean v0, Lcom/caf/fmradio/FMRadio;->mIsSeeking:Z

    .line 2176
    sget-boolean v0, Lcom/caf/fmradio/FMRadio;->mIsSeeking:Z

    if-nez v0, :cond_0

    .line 2177
    const/4 v0, 0x6

    sput v0, Lcom/caf/fmradio/FMRadio;->mCommandFailed:I

    .line 2178
    const-string v0, "FMRadio"

    const-string v1, "mService.seek failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->showDialog(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2186
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->updateSearchProgress()V

    .line 2187
    return-void

    .line 2182
    :catch_0
    move-exception v0

    .line 2183
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/caf/fmradio/FMRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isRecording()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/caf/fmradio/FMRadio;Lcom/caf/fmradio/PresetStation;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/caf/fmradio/FMRadio;->stationExists(Lcom/caf/fmradio/PresetStation;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/caf/fmradio/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->setupPresetLayout()V

    return-void
.end method

.method static synthetic access$1200(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/FmSharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/caf/fmradio/FMRadio;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/caf/fmradio/FMRadio;->initiatePISearch(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/caf/fmradio/FMRadio;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/caf/fmradio/FMRadio;->initiateSleepTimer(J)V

    return-void
.end method

.method static synthetic access$1500(Lcom/caf/fmradio/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->cancelSearch()V

    return-void
.end method

.method static synthetic access$1600(Lcom/caf/fmradio/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->cleanupTimeoutHandler()V

    return-void
.end method

.method static synthetic access$1702(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    sput p0, Lcom/caf/fmradio/FMRadio;->mCommandFailed:I

    return p0
.end method

.method static synthetic access$1800(Lcom/caf/fmradio/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->SeekNextStation()V

    return-void
.end method

.method static synthetic access$1900(Lcom/caf/fmradio/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->SeekPreviousStation()V

    return-void
.end method

.method static synthetic access$200(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mUIUpdateHandlerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2008(Lcom/caf/fmradio/FMRadio;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/caf/fmradio/FMRadio;->mPresetPageNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/caf/fmradio/FMRadio;->mPresetPageNumber:I

    return v0
.end method

.method static synthetic access$2100(Lcom/caf/fmradio/FMRadio;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/caf/fmradio/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->addToPresets()V

    return-void
.end method

.method static synthetic access$2300(Lcom/caf/fmradio/FMRadio;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mSpeakerButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/caf/fmradio/FMRadio;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mEnableRadioTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/caf/fmradio/FMRadio;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mEnableSpeakerTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/caf/fmradio/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->enableSpeaker()V

    return-void
.end method

.method static synthetic access$2700(Lcom/caf/fmradio/FMRadio;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mSpeakerClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/IFMRadioService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/caf/fmradio/FMRadio;Lcom/caf/fmradio/IFMRadioService;)Lcom/caf/fmradio/IFMRadioService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/caf/fmradio/FMRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isMuted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/caf/fmradio/FMRadio;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/caf/fmradio/FMRadio;->setMuteModeButtonImage(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/caf/fmradio/FMRadio;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput p1, p0, Lcom/caf/fmradio/FMRadio;->mItemsIndex:I

    return p1
.end method

.method static synthetic access$3100(Lcom/caf/fmradio/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->stopRecording()V

    return-void
.end method

.method static synthetic access$3200(Lcom/caf/fmradio/FMRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isAnalogModeEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/caf/fmradio/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->startRecording()V

    return-void
.end method

.method static synthetic access$3400(Lcom/caf/fmradio/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->enableRadio()V

    return-void
.end method

.method static synthetic access$3500(Lcom/caf/fmradio/FMRadio;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mOnOffButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/caf/fmradio/FMRadio;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mTurnOnOffClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/caf/fmradio/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->disableRadio()V

    return-void
.end method

.method static synthetic access$3800(Lcom/caf/fmradio/FMRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isFmOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mEnableRadioHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/caf/fmradio/FMRadio;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/caf/fmradio/FMRadio;->DebugToasts(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/caf/fmradio/FMRadio;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mDisableRadioTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mDisableRadioHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/caf/fmradio/FMRadio;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/caf/fmradio/FMRadio;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mSearchProgressHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4402(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    sput-wide p0, Lcom/caf/fmradio/FMRadio;->mSleepAtPhoneTime:J

    return-wide p0
.end method

.method static synthetic access$4500(Lcom/caf/fmradio/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->updateExpiredSleepTime()V

    return-void
.end method

.method static synthetic access$4600(Lcom/caf/fmradio/FMRadio;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRecordingMsgTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4700()Z
    .locals 1

    .prologue
    .line 100
    sget-boolean v0, Lcom/caf/fmradio/FMRadio;->mRecording:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/caf/fmradio/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->updateExpiredRecordTime()V

    return-void
.end method

.method static synthetic access$4900(Lcom/caf/fmradio/FMRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->hasSleepTimerExpired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000()I
    .locals 1

    .prologue
    .line 100
    sget v0, Lcom/caf/fmradio/FMRadio;->mCommandActive:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    sput p0, Lcom/caf/fmradio/FMRadio;->mScanPtyIndex:I

    return p0
.end method

.method static synthetic access$5100(Lcom/caf/fmradio/FMRadio;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mCommandTimeoutHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/caf/fmradio/FMRadio;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/caf/fmradio/FMRadio;->enableRadioOnOffUI(Z)V

    return-void
.end method

.method static synthetic access$5300(Lcom/caf/fmradio/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->endSleepTimer()V

    return-void
.end method

.method static synthetic access$5400(Lcom/caf/fmradio/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->resetRadio()V

    return-void
.end method

.method static synthetic access$5500(Lcom/caf/fmradio/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->updateSearchProgress()V

    return-void
.end method

.method static synthetic access$5600(Lcom/caf/fmradio/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->resetFMStationInfoUI()V

    return-void
.end method

.method static synthetic access$5702(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    sput p0, Lcom/caf/fmradio/FMRadio;->mScanPty:I

    return p0
.end method

.method static synthetic access$5800()Z
    .locals 1

    .prologue
    .line 100
    sget-boolean v0, Lcom/caf/fmradio/FMRadio;->mIsScaning:Z

    return v0
.end method

.method static synthetic access$5802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    sput-boolean p0, Lcom/caf/fmradio/FMRadio;->mIsScaning:Z

    return p0
.end method

.method static synthetic access$5902(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    sput-boolean p0, Lcom/caf/fmradio/FMRadio;->mIsSeeking:Z

    return p0
.end method

.method static synthetic access$600(Lcom/caf/fmradio/FMRadio;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/caf/fmradio/FMRadio;->initiateSearch(I)V

    return-void
.end method

.method static synthetic access$6002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    sput-boolean p0, Lcom/caf/fmradio/FMRadio;->mIsSearching:Z

    return p0
.end method

.method static synthetic access$6100(Lcom/caf/fmradio/FMRadio;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/caf/fmradio/FMRadio;->mStereo:I

    return v0
.end method

.method static synthetic access$6102(Lcom/caf/fmradio/FMRadio;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput p1, p0, Lcom/caf/fmradio/FMRadio;->mStereo:I

    return p1
.end method

.method static synthetic access$6200(Lcom/caf/fmradio/FMRadio;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mStereoTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/caf/fmradio/FMRadio;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioTextTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/FMRadio$ScrollerText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/caf/fmradio/FMRadio;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mProgramTypeTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/caf/fmradio/FMRadio;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mStationCallSignTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/caf/fmradio/FMRadio;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/caf/fmradio/FMRadio;->mFrequency:I

    return v0
.end method

.method static synthetic access$6800(Lcom/caf/fmradio/FMRadio;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mERadioTextTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/FMRadio$ScrollerText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mERadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/PresetStation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtonStation:Lcom/caf/fmradio/PresetStation;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/caf/fmradio/FMRadio;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mProgramServiceTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/caf/fmradio/FMRadio;Lcom/caf/fmradio/PresetStation;)Lcom/caf/fmradio/PresetStation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtonStation:Lcom/caf/fmradio/PresetStation;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mServiceCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/FMRadio$LoadedDataAndState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->SavedDataAndState:Lcom/caf/fmradio/FMRadio$LoadedDataAndState;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/caf/fmradio/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->initiateRecordThread()V

    return-void
.end method

.method static synthetic access$7400(Lcom/caf/fmradio/FMRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isSleepTimerActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7500(Lcom/caf/fmradio/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->initiateSleepThread()V

    return-void
.end method

.method static synthetic access$7600(Lcom/caf/fmradio/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->startRecordingTimer()V

    return-void
.end method

.method static synthetic access$800(Lcom/caf/fmradio/FMRadio;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/caf/fmradio/FMRadio;->tuneRadio(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/PresetStation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mTunedStation:Lcom/caf/fmradio/PresetStation;

    return-object v0
.end method

.method private addToPresets()V
    .locals 4

    .prologue
    .line 1877
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getCurrentListIndex()I

    move-result v0

    .line 1878
    .local v0, currentList:I
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->getCurrentTunedStation()Lcom/caf/fmradio/PresetStation;

    move-result-object v1

    .line 1879
    .local v1, selectedStation:Lcom/caf/fmradio/PresetStation;
    invoke-direct {p0, v1}, Lcom/caf/fmradio/FMRadio;->stationExists(Lcom/caf/fmradio/PresetStation;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1880
    invoke-virtual {v1}, Lcom/caf/fmradio/PresetStation;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/caf/fmradio/PresetStation;->getFrequency()I

    move-result v3

    invoke-static {v2, v3, v0}, Lcom/caf/fmradio/FmSharedPreferences;->addStation(Ljava/lang/String;II)V

    .line 1882
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->setupPresetLayout()V

    .line 1884
    :cond_0
    return-void
.end method

.method private cancelSearch()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2258
    monitor-enter p0

    .line 2259
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 2261
    :try_start_1
    sget-boolean v1, Lcom/caf/fmradio/FMRadio;->mIsScaning:Z

    if-eq v1, v2, :cond_0

    sget-boolean v1, Lcom/caf/fmradio/FMRadio;->mIsSeeking:Z

    if-eq v1, v2, :cond_0

    sget-boolean v1, Lcom/caf/fmradio/FMRadio;->mIsSearching:Z

    if-ne v1, v2, :cond_1

    .line 2264
    :cond_0
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v1}, Lcom/caf/fmradio/IFMRadioService;->cancelSearch()Z

    .line 2265
    const/4 v1, 0x0

    sput-boolean v1, Lcom/caf/fmradio/FMRadio;->mIsScaning:Z

    .line 2266
    const/4 v1, 0x0

    sput-boolean v1, Lcom/caf/fmradio/FMRadio;->mIsSeeking:Z

    .line 2267
    const/4 v1, 0x0

    sput-boolean v1, Lcom/caf/fmradio/FMRadio;->mIsSearching:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2273
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2274
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->updateSearchProgress()V

    .line 2275
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->invalidateOptionsMenu()V

    .line 2276
    return-void

    .line 2269
    :catch_0
    move-exception v0

    .line 2270
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2273
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private declared-synchronized cleanupTimeoutHandler()V
    .locals 2

    .prologue
    .line 2556
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sput v0, Lcom/caf/fmradio/FMRadio;->mCommandActive:I

    .line 2557
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mCommandTimeoutHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2558
    monitor-exit p0

    return-void

    .line 2556
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createCmdFailedDlg(ILandroid/app/AlertDialog$Builder;)Landroid/app/Dialog;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1378
    const v0, 0x7f020001

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060086

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1380
    const v0, 0x7f060087

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1382
    const v0, 0x7f06006d

    new-instance v1, Lcom/caf/fmradio/FMRadio$14;

    invoke-direct {v1, p0}, Lcom/caf/fmradio/FMRadio$14;-><init>(Lcom/caf/fmradio/FMRadio;)V

    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1391
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createCmdFailedDlgCallOn(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 1413
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1414
    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060086

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1416
    const v1, 0x7f060089

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1418
    const v1, 0x7f06006d

    new-instance v2, Lcom/caf/fmradio/FMRadio$16;

    invoke-direct {v2, p0}, Lcom/caf/fmradio/FMRadio$16;-><init>(Lcom/caf/fmradio/FMRadio;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1427
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createCmdFailedDlgHdmiOn(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 1395
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1396
    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060086

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1398
    const v1, 0x7f060088

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1400
    const v1, 0x7f06006d

    new-instance v2, Lcom/caf/fmradio/FMRadio$15;

    invoke-direct {v2, p0}, Lcom/caf/fmradio/FMRadio$15;-><init>(Lcom/caf/fmradio/FMRadio;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1409
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createCmdTimeoutDlg(ILandroid/app/AlertDialog$Builder;)Landroid/app/Dialog;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1359
    sget v0, Lcom/caf/fmradio/FMRadio;->mCommandActive:I

    if-lez v0, :cond_0

    .line 1360
    const v0, 0x7f020001

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060084

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1362
    const v0, 0x7f060085

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1363
    const v0, 0x7f06006d

    new-instance v1, Lcom/caf/fmradio/FMRadio$13;

    invoke-direct {v1, p0}, Lcom/caf/fmradio/FMRadio$13;-><init>(Lcom/caf/fmradio/FMRadio;)V

    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1371
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1373
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createPresetOptionsDlg(ILandroid/app/AlertDialog$Builder;)Landroid/app/Dialog;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 1099
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtonStation:Lcom/caf/fmradio/PresetStation;

    if-eqz v0, :cond_1

    .line 1100
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtonStation:Lcom/caf/fmradio/PresetStation;

    invoke-virtual {v0}, Lcom/caf/fmradio/PresetStation;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1103
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1105
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1107
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1110
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtonStation:Lcom/caf/fmradio/PresetStation;

    invoke-virtual {v1}, Lcom/caf/fmradio/PresetStation;->getPIString()Ljava/lang/String;

    move-result-object v1

    .line 1111
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1113
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060042

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1116
    :cond_0
    invoke-virtual {p2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1117
    new-instance v1, Lcom/caf/fmradio/FMRadio$5;

    invoke-direct {v1, p0}, Lcom/caf/fmradio/FMRadio$5;-><init>(Lcom/caf/fmradio/FMRadio;)V

    invoke-virtual {p2, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1123
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 1124
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1125
    new-instance v0, Lcom/caf/fmradio/FMRadio$6;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$6;-><init>(Lcom/caf/fmradio/FMRadio;)V

    invoke-virtual {p2, v1, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1185
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1187
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createPresetRenameDlg(ILandroid/app/AlertDialog$Builder;)Landroid/app/Dialog;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1322
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtonStation:Lcom/caf/fmradio/PresetStation;

    if-nez v1, :cond_0

    .line 1355
    :goto_0
    return-object v0

    .line 1325
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1326
    const v2, 0x7f030001

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1328
    const v1, 0x7f060028

    invoke-virtual {p2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1329
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1330
    const v1, 0x7f06006d

    new-instance v2, Lcom/caf/fmradio/FMRadio$11;

    invoke-direct {v2, p0, v0}, Lcom/caf/fmradio/FMRadio$11;-><init>(Lcom/caf/fmradio/FMRadio;Landroid/view/View;)V

    invoke-virtual {p2, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1349
    const v0, 0x7f06006e

    new-instance v1, Lcom/caf/fmradio/FMRadio$12;

    invoke-direct {v1, p0}, Lcom/caf/fmradio/FMRadio$12;-><init>(Lcom/caf/fmradio/FMRadio;)V

    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1355
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method

.method private createProgressDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1209
    const-string v1, ""

    .line 1210
    const-string v0, ""

    .line 1212
    iget-object v4, p0, Lcom/caf/fmradio/FMRadio;->mTunedStation:Lcom/caf/fmradio/PresetStation;

    invoke-virtual {v4}, Lcom/caf/fmradio/PresetStation;->getFrequency()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x408f400000000000L

    div-double/2addr v4, v6

    .line 1215
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isSeekActive()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1216
    const v1, 0x7f060018

    invoke-virtual {p0, v1}, Lcom/caf/fmradio/FMRadio;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v9, v2

    move-object v2, v1

    move-object v1, v0

    move v0, v9

    .line 1242
    :goto_0
    if-eqz v0, :cond_1

    .line 1243
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1244
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1246
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1247
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 1248
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1249
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1250
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x1

    const v2, 0x7f060017

    invoke-virtual {p0, v2}, Lcom/caf/fmradio/FMRadio;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/caf/fmradio/FMRadio$8;

    invoke-direct {v3, p0}, Lcom/caf/fmradio/FMRadio$8;-><init>(Lcom/caf/fmradio/FMRadio;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1257
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/caf/fmradio/FMRadio$9;

    invoke-direct {v1, p0}, Lcom/caf/fmradio/FMRadio$9;-><init>(Lcom/caf/fmradio/FMRadio;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1262
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/caf/fmradio/FMRadio$10;

    invoke-direct {v1, p0}, Lcom/caf/fmradio/FMRadio$10;-><init>(Lcom/caf/fmradio/FMRadio;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1280
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1281
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1282
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mSearchProgressHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1284
    :cond_1
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0

    .line 1218
    :cond_2
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isScanActive()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1219
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->isRBDSStd()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1220
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1226
    :goto_1
    const-string v1, ""

    .line 1227
    array-length v6, v0

    sget v7, Lcom/caf/fmradio/FMRadio;->mScanPtyIndex:I

    if-le v6, v7, :cond_7

    .line 1228
    sget v1, Lcom/caf/fmradio/FMRadio;->mScanPtyIndex:I

    aget-object v0, v0, v1

    .line 1229
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1230
    const v1, 0x7f06001a

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-virtual {p0, v1, v6}, Lcom/caf/fmradio/FMRadio;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1235
    :goto_3
    const v1, 0x7f06001b

    new-array v6, v2, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-virtual {p0, v1, v6}, Lcom/caf/fmradio/FMRadio;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move v9, v2

    move-object v2, v0

    move v0, v9

    .line 1237
    goto/16 :goto_0

    .line 1223
    :cond_3
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1232
    :cond_4
    const-string v0, "FMRadio"

    const-string v1, "pty is null\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    const v0, 0x7f060019

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1237
    :cond_5
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isSearchActive()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1238
    const v0, 0x7f06001c

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1239
    const v0, 0x7f06001d

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v9, v2

    move-object v2, v1

    move-object v1, v0

    move v0, v9

    .line 1240
    goto/16 :goto_0

    :cond_6
    move-object v2, v1

    move-object v1, v0

    move v0, v3

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_2
.end method

.method private createSearchDlg(ILandroid/app/AlertDialog$Builder;)Landroid/app/Dialog;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1020
    const v0, 0x7f020028

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1021
    const v0, 0x7f060070

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1023
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->isRBDSStd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1024
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1028
    :goto_0
    new-instance v1, Lcom/caf/fmradio/FMRadio$4;

    invoke-direct {v1, p0}, Lcom/caf/fmradio/FMRadio$4;-><init>(Lcom/caf/fmradio/FMRadio;)V

    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1061
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 1026
    :cond_0
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private createSleepDlg(ILandroid/app/AlertDialog$Builder;)Landroid/app/Dialog;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1191
    const v0, 0x7f060022

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1192
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1194
    new-instance v1, Lcom/caf/fmradio/FMRadio$7;

    invoke-direct {v1, p0}, Lcom/caf/fmradio/FMRadio$7;-><init>(Lcom/caf/fmradio/FMRadio;)V

    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1205
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private disableRadio()V
    .locals 2

    .prologue
    .line 1693
    .line 1694
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isSpeakerEnabled()Z

    move-result v0

    .line 1695
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->cancelSearch()V

    .line 1696
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->endSleepTimer()V

    .line 1697
    sget-boolean v1, Lcom/caf/fmradio/FMRadio;->mRecording:Z

    if-eqz v1, :cond_0

    .line 1699
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->stopRecording()V

    .line 1701
    :cond_0
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-eqz v1, :cond_2

    .line 1703
    if-eqz v0, :cond_1

    .line 1704
    :try_start_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/caf/fmradio/IFMRadioService;->enableSpeaker(Z)V

    .line 1706
    :cond_1
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v0}, Lcom/caf/fmradio/IFMRadioService;->fmOff()Z

    move-result v0

    .line 1707
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->enableRadioOnOffUI()V

    .line 1708
    if-nez v0, :cond_2

    .line 1709
    const/4 v0, 0x3

    sput v0, Lcom/caf/fmradio/FMRadio;->mCommandFailed:I

    .line 1710
    const-string v0, "FMRadio"

    const-string v1, " mService.fmOff failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1716
    :cond_2
    :goto_0
    return-void

    .line 1712
    :catch_0
    move-exception v0

    .line 1713
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private enableRadio()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1658
    sput-boolean v0, Lcom/caf/fmradio/FMRadio;->mIsScaning:Z

    .line 1659
    sput-boolean v0, Lcom/caf/fmradio/FMRadio;->mIsSeeking:Z

    .line 1660
    sput-boolean v0, Lcom/caf/fmradio/FMRadio;->mIsSearching:Z

    .line 1662
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isHdmiOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1663
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->showDialog(I)V

    .line 1690
    :cond_0
    :goto_0
    return-void

    .line 1665
    :cond_1
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-eqz v0, :cond_0

    .line 1667
    :try_start_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v0}, Lcom/caf/fmradio/IFMRadioService;->isFmOn()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->isAntennaAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1668
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v0}, Lcom/caf/fmradio/IFMRadioService;->fmOn()Z

    move-result v0

    .line 1669
    if-eqz v0, :cond_2

    .line 1670
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getTunedFrequency()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/caf/fmradio/FMRadio;->tuneRadio(I)V

    .line 1671
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->enableRadioOnOffUI()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1685
    :catch_0
    move-exception v0

    .line 1686
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1673
    :cond_2
    :try_start_1
    const-string v0, "FMRadio"

    const-string v1, "mService.fmOn failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    const/4 v0, 0x2

    sput v0, Lcom/caf/fmradio/FMRadio;->mCommandFailed:I

    .line 1675
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->isCallActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1676
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->enableRadioOnOffUI()V

    .line 1677
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->showDialog(I)V

    goto :goto_0

    .line 1679
    :cond_3
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->showDialog(I)V

    goto :goto_0

    .line 1683
    :cond_4
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->enableRadioOnOffUI()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private enableRadioOnOffUI()V
    .locals 2

    .prologue
    .line 1887
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isFmOn()Z

    move-result v0

    .line 1889
    .local v0, bEnable:Z
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->isAntennaAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1890
    const/4 v0, 0x0

    .line 1892
    :cond_0
    invoke-direct {p0, v0}, Lcom/caf/fmradio/FMRadio;->enableRadioOnOffUI(Z)V

    .line 1893
    return-void
.end method

.method private enableRadioOnOffUI(Z)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f02000d

    const/4 v5, 0x7

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1896
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mMuteButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1897
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mMuteButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1898
    invoke-direct {p0, v1}, Lcom/caf/fmradio/FMRadio;->setMuteModeButtonImage(Z)V

    .line 1900
    :cond_0
    if-eqz p1, :cond_17

    .line 1901
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    if-eqz v0, :cond_1

    .line 1902
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadio$ScrollerText;->startScroll()V

    .line 1904
    :cond_1
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mERadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    if-eqz v0, :cond_2

    .line 1905
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mERadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadio$ScrollerText;->startScroll()V

    .line 1907
    :cond_2
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mTuneStationFrequencyTV:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1908
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mTuneStationFrequencyTV:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/caf/fmradio/FMRadio;->mFrequencyViewClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1910
    :cond_3
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->invalidateOptionsMenu()V

    .line 1911
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRecordingMsgTV:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isRecording()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1912
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRecordingMsgTV:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1914
    :cond_4
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1915
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->setRecordingStopImage()V

    .line 1927
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mForwardButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 1928
    iget-object v4, p0, Lcom/caf/fmradio/FMRadio;->mForwardButton:Landroid/widget/ImageView;

    if-ne p1, v3, :cond_19

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1931
    :cond_6
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mBackButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 1932
    iget-object v4, p0, Lcom/caf/fmradio/FMRadio;->mBackButton:Landroid/widget/ImageView;

    if-ne p1, v3, :cond_1a

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1935
    :cond_7
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mTuneStationFrequencyTV:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 1936
    iget-object v4, p0, Lcom/caf/fmradio/FMRadio;->mTuneStationFrequencyTV:Landroid/widget/TextView;

    if-ne p1, v3, :cond_1b

    move v0, v1

    :goto_3
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1939
    :cond_8
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    if-eqz v0, :cond_9

    .line 1940
    iget-object v4, p0, Lcom/caf/fmradio/FMRadio;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    if-eqz p1, :cond_1c

    move v0, v1

    :goto_4
    invoke-virtual {v4, v0}, Lcom/caf/fmradio/HorizontalNumberPicker;->setVisibility(I)V

    .line 1943
    :cond_9
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mStationCallSignTV:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 1944
    iget-object v4, p0, Lcom/caf/fmradio/FMRadio;->mStationCallSignTV:Landroid/widget/TextView;

    if-ne p1, v3, :cond_1d

    move v0, v1

    :goto_5
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1947
    :cond_a
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mProgramTypeTV:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 1948
    iget-object v4, p0, Lcom/caf/fmradio/FMRadio;->mProgramTypeTV:Landroid/widget/TextView;

    if-ne p1, v3, :cond_1e

    move v0, v1

    :goto_6
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1951
    :cond_b
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mSleepMsgTV:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 1952
    iget-object v4, p0, Lcom/caf/fmradio/FMRadio;->mSleepMsgTV:Landroid/widget/TextView;

    if-eqz p1, :cond_1f

    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isSleepTimerActive()Z

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v1

    :goto_7
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1955
    :cond_c
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRecordingMsgTV:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 1956
    iget-object v4, p0, Lcom/caf/fmradio/FMRadio;->mRecordingMsgTV:Landroid/widget/TextView;

    if-ne p1, v3, :cond_20

    move v0, v1

    :goto_8
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1959
    :cond_d
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioTextTV:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    .line 1960
    iget-object v4, p0, Lcom/caf/fmradio/FMRadio;->mRadioTextTV:Landroid/widget/TextView;

    if-ne p1, v3, :cond_21

    move v0, v1

    :goto_9
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1963
    :cond_e
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mERadioTextTV:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    .line 1964
    iget-object v4, p0, Lcom/caf/fmradio/FMRadio;->mERadioTextTV:Landroid/widget/TextView;

    if-ne p1, v3, :cond_22

    move v0, v1

    :goto_a
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1967
    :cond_f
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mProgramServiceTV:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    .line 1968
    iget-object v4, p0, Lcom/caf/fmradio/FMRadio;->mProgramServiceTV:Landroid/widget/TextView;

    if-ne p1, v3, :cond_23

    move v0, v1

    :goto_b
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1972
    :cond_10
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->isAntennaAvailable()Z

    move-result v0

    if-nez v0, :cond_24

    .line 1973
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioTextTV:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    .line 1974
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioTextTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1975
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioTextTV:Landroid/widget/TextView;

    const v4, 0x7f06001f

    invoke-virtual {p0, v4}, Lcom/caf/fmradio/FMRadio;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1976
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    const v4, 0x7f06001f

    invoke-virtual {p0, v4}, Lcom/caf/fmradio/FMRadio;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mOriginalString:Ljava/lang/String;

    .line 1978
    :cond_11
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mOnOffButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_12

    .line 1979
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mOnOffButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2007
    :cond_12
    :goto_c
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mStereoTV:Landroid/widget/TextView;

    if-eqz v0, :cond_14

    .line 2008
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mStereoTV:Landroid/widget/TextView;

    if-ne p1, v3, :cond_13

    move v2, v1

    :cond_13
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_14
    move v0, v1

    .line 2011
    :goto_d
    if-ge v0, v5, :cond_2a

    .line 2012
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtons:[Landroid/widget/Button;

    aget-object v2, v2, v0

    if-eqz v2, :cond_15

    .line 2013
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtons:[Landroid/widget/Button;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2011
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1917
    :cond_16
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->setRecordingStartImage()V

    goto/16 :goto_0

    .line 1920
    :cond_17
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    if-eqz v0, :cond_18

    .line 1921
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadio$ScrollerText;->stopScroll()V

    .line 1923
    :cond_18
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mERadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    if-eqz v0, :cond_5

    .line 1924
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mERadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadio$ScrollerText;->stopScroll()V

    goto/16 :goto_0

    :cond_19
    move v0, v2

    .line 1928
    goto/16 :goto_1

    :cond_1a
    move v0, v2

    .line 1932
    goto/16 :goto_2

    :cond_1b
    move v0, v2

    .line 1936
    goto/16 :goto_3

    :cond_1c
    move v0, v2

    .line 1940
    goto/16 :goto_4

    :cond_1d
    move v0, v2

    .line 1944
    goto/16 :goto_5

    :cond_1e
    move v0, v2

    .line 1948
    goto/16 :goto_6

    :cond_1f
    move v0, v2

    .line 1952
    goto/16 :goto_7

    :cond_20
    move v0, v2

    .line 1956
    goto/16 :goto_8

    :cond_21
    move v0, v2

    .line 1960
    goto/16 :goto_9

    :cond_22
    move v0, v2

    .line 1964
    goto/16 :goto_a

    :cond_23
    move v0, v2

    .line 1968
    goto/16 :goto_b

    .line 1981
    :cond_24
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->isCallActive()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1982
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioTextTV:Landroid/widget/TextView;

    if-eqz v0, :cond_25

    .line 1983
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioTextTV:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1984
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    const-string v4, ""

    iput-object v4, v0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mOriginalString:Ljava/lang/String;

    .line 1986
    :cond_25
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mERadioTextTV:Landroid/widget/TextView;

    if-eqz v0, :cond_26

    .line 1987
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mERadioTextTV:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1988
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mERadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    const-string v4, ""

    iput-object v4, v0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mOriginalString:Ljava/lang/String;

    .line 1990
    :cond_26
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mOnOffButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_12

    .line 1991
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mOnOffButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_c

    .line 1994
    :cond_27
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioTextTV:Landroid/widget/TextView;

    if-eqz v0, :cond_28

    .line 1995
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioTextTV:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1996
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    const-string v4, ""

    iput-object v4, v0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mOriginalString:Ljava/lang/String;

    .line 1998
    :cond_28
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mERadioTextTV:Landroid/widget/TextView;

    if-eqz v0, :cond_29

    .line 1999
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mERadioTextTV:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2000
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mERadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    const-string v4, ""

    iput-object v4, v0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mOriginalString:Ljava/lang/String;

    .line 2002
    :cond_29
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mOnOffButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_12

    .line 2003
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mOnOffButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_c

    .line 2016
    :cond_2a
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPresetListButton:Landroid/widget/Button;

    if-eqz v0, :cond_2b

    .line 2017
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPresetListButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2019
    :cond_2b
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPresetPageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2d

    .line 2020
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPresetPageButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_2c

    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getListStationCount()I

    move-result v2

    if-lt v2, v5, :cond_2c

    move v1, v3

    :cond_2c
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2023
    :cond_2d
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mSpeakerButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2e

    .line 2024
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mSpeakerButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2025
    if-eqz p1, :cond_30

    .line 2026
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isSpeakerEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2027
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mSpeakerButton:Landroid/widget/ImageView;

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2035
    :cond_2e
    :goto_e
    return-void

    .line 2029
    :cond_2f
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mSpeakerButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e

    .line 2032
    :cond_30
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mSpeakerButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e
.end method

.method private enableSpeaker()V
    .locals 2

    .prologue
    .line 753
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isSpeakerEnabled()Z

    move-result v0

    .line 754
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-eqz v1, :cond_0

    .line 756
    if-eqz v0, :cond_1

    .line 757
    :try_start_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/caf/fmradio/IFMRadioService;->enableSpeaker(Z)V

    .line 758
    const-string v0, "FMRadio"

    const-string v1, "Speaker phone is  turned off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mSpeakerButton:Landroid/widget/ImageView;

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 765
    :goto_0
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->invalidateOptionsMenu()V

    .line 770
    :cond_0
    :goto_1
    return-void

    .line 761
    :cond_1
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/caf/fmradio/IFMRadioService;->enableSpeaker(Z)V

    .line 762
    const-string v0, "FMRadio"

    const-string v1, "Speaker phone is turned on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mSpeakerButton:Landroid/widget/ImageView;

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 766
    :catch_0
    move-exception v0

    .line 767
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private endSleepTimer()V
    .locals 3

    .prologue
    .line 2367
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/caf/fmradio/FMRadio;->mSleepAtPhoneTime:J

    .line 2369
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-eqz v1, :cond_0

    .line 2370
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/caf/fmradio/IFMRadioService;->cancelDelayedStop(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2376
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 2377
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 2379
    :cond_1
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mSleepMsgTV:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 2380
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mSleepMsgTV:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2382
    :cond_2
    return-void

    .line 2372
    :catch_0
    move-exception v0

    .line 2373
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getRecordingStartTime()J
    .locals 4

    .prologue
    const-wide/16 v1, 0x0

    .line 816
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-nez v3, :cond_0

    .line 822
    :goto_0
    return-wide v1

    .line 820
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v3}, Lcom/caf/fmradio/IFMRadioService;->getRecordingStartTime()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    goto :goto_0

    .line 821
    :catch_0
    move-exception v0

    .line 822
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private hasSleepTimerExpired()Z
    .locals 5

    .prologue
    .line 2385
    const/4 v0, 0x1

    .line 2386
    .local v0, expired:Z
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isSleepTimerActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2387
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 2388
    .local v1, timeNow:J
    sget-wide v3, Lcom/caf/fmradio/FMRadio;->mSleepAtPhoneTime:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 2389
    const/4 v0, 0x0

    .line 2392
    .end local v1           #timeNow:J
    :cond_0
    return v0
.end method

.method private initiatePISearch(I)V
    .locals 2
    .parameter

    .prologue
    .line 2232
    const-string v0, "FMRadio"

    const-string v1, "initiatePISearch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-eqz v0, :cond_0

    .line 2235
    :try_start_0
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isSeekActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2236
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v0, p1}, Lcom/caf/fmradio/IFMRadioService;->seekPI(I)Z

    move-result v0

    sput-boolean v0, Lcom/caf/fmradio/FMRadio;->mIsSeeking:Z

    .line 2237
    sget-boolean v0, Lcom/caf/fmradio/FMRadio;->mIsSeeking:Z

    if-nez v0, :cond_0

    .line 2238
    const/16 v0, 0x8

    sput v0, Lcom/caf/fmradio/FMRadio;->mCommandFailed:I

    .line 2239
    const-string v0, "FMRadio"

    const-string v1, "mService.seekPI failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->showDialog(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2247
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->updateSearchProgress()V

    .line 2248
    return-void

    .line 2243
    :catch_0
    move-exception v0

    .line 2244
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private initiateRecordDurationTimer(J)V
    .locals 3
    .parameter

    .prologue
    .line 827
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop Recording in mins : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->initiateRecordThread()V

    .line 829
    return-void
.end method

.method private initiateRecordThread()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 831
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRecordUpdateHandlerThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 832
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->doRecordProcessing:Ljava/lang/Runnable;

    const-string v2, "RecordUpdateThread"

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRecordUpdateHandlerThread:Ljava/lang/Thread;

    .line 836
    :cond_0
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mRecordUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRecordUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1

    .line 838
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->doRecordProcessing:Ljava/lang/Runnable;

    const-string v2, "RecordUpdateThread"

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRecordUpdateHandlerThread:Ljava/lang/Thread;

    .line 842
    :cond_1
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRecordUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_2

    .line 843
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRecordUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 845
    :cond_2
    return-void
.end method

.method private initiateSearch(I)V
    .locals 2
    .parameter

    .prologue
    .line 2210
    monitor-enter p0

    .line 2211
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/caf/fmradio/FMRadio;->mIsScaning:Z

    .line 2212
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2214
    :try_start_1
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v0, p1}, Lcom/caf/fmradio/IFMRadioService;->scan(I)Z

    move-result v0

    sput-boolean v0, Lcom/caf/fmradio/FMRadio;->mIsScaning:Z

    .line 2215
    sget-boolean v0, Lcom/caf/fmradio/FMRadio;->mIsScaning:Z

    if-nez v0, :cond_1

    .line 2216
    const/4 v0, 0x7

    sput v0, Lcom/caf/fmradio/FMRadio;->mCommandFailed:I

    .line 2217
    const-string v0, "FMRadio"

    const-string v1, "mService.scan failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->showDialog(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2225
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->updateSearchProgress()V

    .line 2227
    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2228
    return-void

    .line 2220
    :cond_1
    :try_start_3
    sput p1, Lcom/caf/fmradio/FMRadio;->mScanPty:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 2222
    :catch_0
    move-exception v0

    .line 2223
    :try_start_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2227
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method private initiateSleepThread()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2338
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 2339
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->doSleepProcessing:Ljava/lang/Runnable;

    const-string v2, "SleepUpdateThread"

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    .line 2343
    :cond_0
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1

    .line 2345
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->doSleepProcessing:Ljava/lang/Runnable;

    const-string v2, "SleepUpdateThread"

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    .line 2349
    :cond_1
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2351
    :try_start_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v0}, Lcom/caf/fmradio/IFMRadioService;->isSleepTimerActive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2353
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2354
    sget-wide v2, Lcom/caf/fmradio/FMRadio;->mSleepAtPhoneTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 2355
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    sget-wide v3, Lcom/caf/fmradio/FMRadio;->mSleepAtPhoneTime:J

    sub-long v0, v3, v0

    const/4 v3, 0x0

    invoke-interface {v2, v0, v1, v3}, Lcom/caf/fmradio/IFMRadioService;->delayedStop(JI)V

    .line 2359
    :cond_2
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2364
    :cond_3
    :goto_0
    return-void

    .line 2360
    :catch_0
    move-exception v0

    .line 2361
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initiateSleepTimer(J)V
    .locals 4
    .parameter

    .prologue
    .line 2333
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/caf/fmradio/FMRadio;->mSleepAtPhoneTime:J

    .line 2334
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sleep in seconds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->initiateSleepThread()V

    .line 2336
    return-void
.end method

.method private isAnalogModeEnabled()Z
    .locals 3

    .prologue
    .line 2132
    const/4 v0, 0x0

    .line 2133
    .local v0, aEnabled:Z
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-eqz v2, :cond_0

    .line 2135
    :try_start_0
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v2}, Lcom/caf/fmradio/IFMRadioService;->isAnalogModeEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2140
    :cond_0
    :goto_0
    return v0

    .line 2136
    :catch_0
    move-exception v1

    .line 2137
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private isFmOn()Z
    .locals 3

    .prologue
    .line 2120
    const/4 v0, 0x0

    .line 2121
    .local v0, bOn:Z
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-eqz v2, :cond_0

    .line 2123
    :try_start_0
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v2}, Lcom/caf/fmradio/IFMRadioService;->isFmOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2128
    :cond_0
    :goto_0
    return v0

    .line 2124
    :catch_0
    move-exception v1

    .line 2125
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private isHdmiOn()Z
    .locals 2

    .prologue
    .line 744
    :try_start_0
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "HDMI_USEROPTION"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 746
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isMuted()Z
    .locals 3

    .prologue
    .line 2144
    const/4 v0, 0x0

    .line 2145
    .local v0, bMuted:Z
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-eqz v2, :cond_0

    .line 2147
    :try_start_0
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v2}, Lcom/caf/fmradio/IFMRadioService;->isMuted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2152
    :cond_0
    :goto_0
    return v0

    .line 2148
    :catch_0
    move-exception v1

    .line 2149
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private isRecording()Z
    .locals 2

    .prologue
    .line 1844
    const/4 v1, 0x0

    sput-boolean v1, Lcom/caf/fmradio/FMRadio;->mRecording:Z

    .line 1845
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-eqz v1, :cond_0

    .line 1847
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v1}, Lcom/caf/fmradio/IFMRadioService;->isFmRecordingOn()Z

    move-result v1

    sput-boolean v1, Lcom/caf/fmradio/FMRadio;->mRecording:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1852
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/caf/fmradio/FMRadio;->mRecording:Z

    return v1

    .line 1848
    :catch_0
    move-exception v0

    .line 1849
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private isScanActive()Z
    .locals 1

    .prologue
    .line 2156
    sget-boolean v0, Lcom/caf/fmradio/FMRadio;->mIsScaning:Z

    return v0
.end method

.method private isSearchActive()Z
    .locals 1

    .prologue
    .line 2163
    sget-boolean v0, Lcom/caf/fmradio/FMRadio;->mIsSearching:Z

    return v0
.end method

.method private isSeekActive()Z
    .locals 1

    .prologue
    .line 2160
    sget-boolean v0, Lcom/caf/fmradio/FMRadio;->mIsSeeking:Z

    return v0
.end method

.method private isSleepTimerActive()Z
    .locals 5

    .prologue
    .line 2396
    const/4 v0, 0x0

    .line 2398
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v1}, Lcom/caf/fmradio/IFMRadioService;->isSleepTimerActive()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-wide v1, Lcom/caf/fmradio/FMRadio;->mSleepAtPhoneTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 2401
    const/4 v0, 0x1

    .line 2402
    const-string v1, "FMRadio"

    const-string v2, "Sleeptimer is active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2408
    :cond_0
    :goto_0
    return v0

    .line 2405
    :catch_0
    move-exception v1

    .line 2406
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private isSpeakerEnabled()Z
    .locals 3

    .prologue
    .line 1856
    const/4 v1, 0x0

    .line 1857
    .local v1, speakerEnabled:Z
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-eqz v2, :cond_0

    .line 1859
    :try_start_0
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v2}, Lcom/caf/fmradio/IFMRadioService;->isSpeakerEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1864
    :cond_0
    :goto_0
    return v1

    .line 1860
    :catch_0
    move-exception v0

    .line 1861
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private makeTimeString(J)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const-wide/16 v5, 0x3c

    .line 2501
    const v0, 0x7f06008a

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2507
    sget-object v1, Lcom/caf/fmradio/FMRadio;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2509
    sget-object v1, Lcom/caf/fmradio/FMRadio;->sTimeArgs:[Ljava/lang/Object;

    .line 2510
    const-wide/16 v2, 0xe10

    div-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    .line 2511
    const/4 v2, 0x1

    div-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2512
    const/4 v2, 0x2

    div-long v3, p1, v5

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2513
    const/4 v2, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2514
    const/4 v2, 0x4

    rem-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2516
    sget-object v2, Lcom/caf/fmradio/FMRadio;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v2, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized postTimeoutHandler(I)V
    .locals 4
    .parameter "cmd"

    .prologue
    .line 2549
    monitor-enter p0

    :try_start_0
    sput p1, Lcom/caf/fmradio/FMRadio;->mCommandActive:I

    .line 2550
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mCommandTimeoutHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2551
    monitor-exit p0

    return-void

    .line 2549
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private registerFMSettingListner()V
    .locals 2

    .prologue
    .line 3120
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mFmSettingReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 3121
    new-instance v0, Lcom/caf/fmradio/FMRadio$52;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMRadio$52;-><init>(Lcom/caf/fmradio/FMRadio;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mFmSettingReceiver:Landroid/content/BroadcastReceiver;

    .line 3147
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3148
    const-string v1, "com.caf.fmradio.settings.changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3149
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mFmSettingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/caf/fmradio/FMRadio;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3151
    :cond_0
    return-void
.end method

.method private resetFMStationInfoUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2597
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mTunedStation:Lcom/caf/fmradio/PresetStation;

    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getTunedFrequency()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/caf/fmradio/PresetStation;->setFrequency(I)V

    .line 2598
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mTunedStation:Lcom/caf/fmradio/PresetStation;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/caf/fmradio/PresetStation;->setName(Ljava/lang/String;)V

    .line 2599
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mTunedStation:Lcom/caf/fmradio/PresetStation;

    invoke-virtual {v0, v2}, Lcom/caf/fmradio/PresetStation;->setPI(I)V

    .line 2600
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mTunedStation:Lcom/caf/fmradio/PresetStation;

    invoke-virtual {v0, v2}, Lcom/caf/fmradio/PresetStation;->setRDSSupported(Z)V

    .line 2601
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mTunedStation:Lcom/caf/fmradio/PresetStation;

    invoke-virtual {v0, v2}, Lcom/caf/fmradio/PresetStation;->setPty(I)V

    .line 2602
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioTextTV:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2603
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mERadioTextTV:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2604
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    const-string v1, ""

    iput-object v1, v0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mOriginalString:Ljava/lang/String;

    .line 2605
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mProgramServiceTV:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2606
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadio$ScrollerText;->stopScroll()V

    .line 2607
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mERadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    const-string v1, ""

    iput-object v1, v0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mOriginalString:Ljava/lang/String;

    .line 2608
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mERadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadio$ScrollerText;->stopScroll()V

    .line 2609
    const/4 v0, 0x1

    sput-boolean v0, Lcom/caf/fmradio/FMRadio;->mUpdatePickerValue:Z

    .line 2610
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->updateStationInfoToUI()V

    .line 2611
    return-void
.end method

.method private resetRadio()V
    .locals 4

    .prologue
    .line 1719
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isSpeakerEnabled()Z

    move-result v0

    .line 1720
    .local v0, bSpeakerPhoneOn:Z
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->resetSearch()V

    .line 1721
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->endSleepTimer()V

    .line 1722
    sget-boolean v2, Lcom/caf/fmradio/FMRadio;->mRecording:Z

    if-eqz v2, :cond_0

    .line 1724
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->stopRecording()V

    .line 1726
    :cond_0
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-eqz v2, :cond_2

    .line 1728
    if-eqz v0, :cond_1

    .line 1729
    :try_start_0
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/caf/fmradio/IFMRadioService;->enableSpeaker(Z)V

    .line 1731
    :cond_1
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v2}, Lcom/caf/fmradio/IFMRadioService;->fmRadioReset()Z

    .line 1732
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/caf/fmradio/FMRadio;->enableRadioOnOffUI(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1737
    :cond_2
    :goto_0
    return-void

    .line 1733
    :catch_0
    move-exception v1

    .line 1734
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private resetSearch()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2251
    sput-boolean v0, Lcom/caf/fmradio/FMRadio;->mIsScaning:Z

    .line 2252
    sput-boolean v0, Lcom/caf/fmradio/FMRadio;->mIsSeeking:Z

    .line 2253
    sput-boolean v0, Lcom/caf/fmradio/FMRadio;->mIsSearching:Z

    .line 2254
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->resetSearchProgress()V

    .line 2255
    return-void
.end method

.method private resetSearchProgress()V
    .locals 2

    .prologue
    .line 2038
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2039
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2040
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mSearchProgressHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2041
    return-void
.end method

.method private searchAllStations()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1070
    iput v0, p0, Lcom/caf/fmradio/FMRadio;->mItemsIndex:I

    .line 1072
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->isRBDSStd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1073
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1075
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f050007

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1083
    :goto_0
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 1085
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Search Stations for : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v2, v2, v0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/caf/fmradio/FMRadio;->DebugToasts(Ljava/lang/String;I)V

    .line 1088
    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1089
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->clearStationList()V

    .line 1090
    sput v0, Lcom/caf/fmradio/FMRadio;->mScanPtyIndex:I

    .line 1091
    invoke-direct {p0, v1}, Lcom/caf/fmradio/FMRadio;->initiateSearch(I)V

    .line 1092
    const/4 v0, 0x1

    .line 1094
    :cond_0
    return v0

    .line 1078
    :cond_1
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1080
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f050009

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setMuteModeButtonImage(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1643
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isMuted()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1644
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mMuteButton:Landroid/widget/ImageView;

    const v1, 0x7f020030

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1645
    const-string v0, "FM Radio Muted"

    .line 1651
    :goto_0
    if-eqz p1, :cond_0

    .line 1653
    const-string v1, "FMRadio"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    :cond_0
    return-void

    .line 1648
    :cond_1
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mMuteButton:Landroid/widget/ImageView;

    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1649
    const-string v0, "FM Radio Playing"

    goto :goto_0
.end method

.method private setRecordingStartImage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1808
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRecordingMsgTV:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1809
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRecordingMsgTV:Landroid/widget/TextView;

    const v1, 0x7f020038

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1812
    :cond_0
    return-void
.end method

.method private setRecordingStopImage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1801
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRecordingMsgTV:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1802
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRecordingMsgTV:Landroid/widget/TextView;

    const v1, 0x7f020039

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1805
    :cond_0
    return-void
.end method

.method private setupPresetLayout()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2063
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getListStationCount()I

    move-result v1

    .line 2069
    iget v2, p0, Lcom/caf/fmradio/FMRadio;->mPresetPageNumber:I

    div-int/lit8 v1, v1, 0x7

    if-le v2, v1, :cond_0

    .line 2070
    iput v0, p0, Lcom/caf/fmradio/FMRadio;->mPresetPageNumber:I

    :cond_0
    move v1, v0

    .line 2077
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_3

    .line 2078
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtons:[Landroid/widget/Button;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 2079
    iget v2, p0, Lcom/caf/fmradio/FMRadio;->mPresetPageNumber:I

    mul-int/lit8 v2, v2, 0x7

    add-int/2addr v2, v1

    .line 2081
    invoke-static {v2}, Lcom/caf/fmradio/FmSharedPreferences;->getStationInList(I)Lcom/caf/fmradio/PresetStation;

    move-result-object v2

    .line 2082
    const-string v3, ""

    .line 2083
    if-eqz v2, :cond_2

    .line 2084
    invoke-virtual {v2}, Lcom/caf/fmradio/PresetStation;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2085
    iget-object v4, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtons:[Landroid/widget/Button;

    aget-object v4, v4, v1

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2086
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtons:[Landroid/widget/Button;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 2087
    add-int/lit8 v0, v0, 0x1

    .line 2077
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2089
    :cond_2
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtons:[Landroid/widget/Button;

    aget-object v3, v3, v1

    const v4, 0x7f06008f

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 2090
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtons:[Landroid/widget/Button;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 2094
    :cond_3
    return-void
.end method

.method private startRecording()V
    .locals 2

    .prologue
    .line 1791
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-eqz v1, :cond_0

    .line 1793
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v1}, Lcom/caf/fmradio/IFMRadioService;->startRecording()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1798
    :cond_0
    :goto_0
    return-void

    .line 1794
    :catch_0
    move-exception v0

    .line 1795
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private startRecordingTimer()V
    .locals 4

    .prologue
    .line 1815
    const/4 v0, 0x1

    sput-boolean v0, Lcom/caf/fmradio/FMRadio;->mRecording:Z

    .line 1816
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getRecordDuration()I

    move-result v0

    .line 1817
    const-string v1, "FMRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Fected duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/caf/fmradio/FMRadio;->initiateRecordDurationTimer(J)V

    .line 1819
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->setRecordingStopImage()V

    .line 1820
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->invalidateOptionsMenu()V

    .line 1821
    return-void
.end method

.method private stationExists(Lcom/caf/fmradio/PresetStation;)Z
    .locals 3
    .parameter

    .prologue
    .line 1868
    invoke-static {p1}, Lcom/caf/fmradio/FmSharedPreferences;->sameStationExists(Lcom/caf/fmradio/PresetStation;)Z

    move-result v0

    .line 1869
    if-eqz v0, :cond_0

    .line 1870
    const v1, 0x7f0600a8

    invoke-virtual {p0, v1}, Lcom/caf/fmradio/FMRadio;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1871
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1873
    :cond_0
    return v0
.end method

.method private stopRecording()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1824
    sput-boolean v1, Lcom/caf/fmradio/FMRadio;->mRecording:Z

    .line 1825
    const-string v0, "Stopped Recording"

    invoke-direct {p0, v0, v1}, Lcom/caf/fmradio/FMRadio;->DebugToasts(Ljava/lang/String;I)V

    .line 1826
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRecordUpdateHandlerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1827
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRecordUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1829
    :cond_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRecordingMsgTV:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1830
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRecordingMsgTV:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1831
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->setRecordingStartImage()V

    .line 1833
    :cond_1
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-eqz v0, :cond_2

    .line 1835
    :try_start_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v0}, Lcom/caf/fmradio/IFMRadioService;->stopRecording()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1840
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->invalidateOptionsMenu()V

    .line 1841
    return-void

    .line 1836
    :catch_0
    move-exception v0

    .line 1837
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private tuneRadio(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 2521
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-eqz v0, :cond_2

    sget v0, Lcom/caf/fmradio/FMRadio;->mCommandActive:I

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2524
    :try_start_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v0, p1}, Lcom/caf/fmradio/IFMRadioService;->tune(I)Z

    move-result v0

    .line 2525
    if-eqz v0, :cond_1

    .line 2526
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/caf/fmradio/FMRadio;->postTimeoutHandler(I)V

    .line 2534
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mTunedStation:Lcom/caf/fmradio/PresetStation;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/caf/fmradio/PresetStation;->setName(Ljava/lang/String;)V

    .line 2535
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mTunedStation:Lcom/caf/fmradio/PresetStation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/caf/fmradio/PresetStation;->setPI(I)V

    .line 2536
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mTunedStation:Lcom/caf/fmradio/PresetStation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/caf/fmradio/PresetStation;->setPty(I)V

    .line 2537
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->updateStationInfoToUI()V

    .line 2544
    :goto_1
    return-void

    .line 2528
    :cond_1
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2529
    const/4 v0, 0x1

    sput v0, Lcom/caf/fmradio/FMRadio;->mCommandFailed:I

    .line 2530
    const-string v0, "FMRadio"

    const-string v1, "mService.tune failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->showDialog(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2538
    :catch_0
    move-exception v0

    .line 2539
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 2542
    :cond_2
    const-string v0, "FMRadio"

    const-string v1, "Delayed Tune handler stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private unRegisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 0
    .parameter "myReceiver"

    .prologue
    .line 3154
    if-eqz p1, :cond_0

    .line 3155
    invoke-virtual {p0, p1}, Lcom/caf/fmradio/FMRadio;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3156
    const/4 p1, 0x0

    .line 3158
    :cond_0
    return-void
.end method

.method private updateExpiredRecordTime()V
    .locals 10

    .prologue
    .line 776
    const/4 v5, 0x0

    .line 777
    .local v5, vis:I
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isRecording()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 779
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 780
    .local v3, timeNow:J
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->getRecordingStartTime()J

    move-result-wide v6

    sub-long v6, v3, v6

    const-wide/16 v8, 0x3e8

    div-long v1, v6, v8

    .line 781
    .local v1, seconds:J
    invoke-direct {p0, v1, v2}, Lcom/caf/fmradio/FMRadio;->makeTimeString(J)Ljava/lang/String;

    move-result-object v0

    .line 782
    .local v0, Msg:Ljava/lang/String;
    iget-object v6, p0, Lcom/caf/fmradio/FMRadio;->mRecordingMsgTV:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 783
    iget-object v6, p0, Lcom/caf/fmradio/FMRadio;->mRecordingMsgTV:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 785
    .end local v0           #Msg:Ljava/lang/String;
    .end local v1           #seconds:J
    .end local v3           #timeNow:J
    :cond_0
    return-void
.end method

.method private updateExpiredSleepTime()V
    .locals 12

    .prologue
    const/4 v7, 0x4

    .line 2412
    const/4 v6, 0x4

    .line 2413
    .local v6, vis:I
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isSleepTimerActive()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2414
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2415
    .local v4, timeNow:J
    sget-wide v8, Lcom/caf/fmradio/FMRadio;->mSleepAtPhoneTime:J

    cmp-long v8, v8, v4

    if-ltz v8, :cond_3

    .line 2416
    sget-wide v8, Lcom/caf/fmradio/FMRadio;->mSleepAtPhoneTime:J

    sub-long/2addr v8, v4

    const-wide/16 v10, 0x3e8

    div-long v1, v8, v10

    .line 2417
    .local v1, seconds:J
    invoke-direct {p0, v1, v2}, Lcom/caf/fmradio/FMRadio;->makeTimeString(J)Ljava/lang/String;

    move-result-object v3

    .line 2418
    .local v3, sleepMsg:Ljava/lang/String;
    iget-object v8, p0, Lcom/caf/fmradio/FMRadio;->mSleepMsgTV:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2419
    const-wide/16 v8, 0x3c

    cmp-long v8, v1, v8

    if-gez v8, :cond_2

    .line 2420
    iget-object v8, p0, Lcom/caf/fmradio/FMRadio;->mSleepMsgTV:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    .line 2421
    .local v0, nowVis:I
    if-ne v0, v7, :cond_1

    const/4 v6, 0x0

    .line 2431
    .end local v0           #nowVis:I
    .end local v1           #seconds:J
    .end local v3           #sleepMsg:Ljava/lang/String;
    .end local v4           #timeNow:J
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/caf/fmradio/FMRadio;->mSleepMsgTV:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2432
    return-void

    .restart local v0       #nowVis:I
    .restart local v1       #seconds:J
    .restart local v3       #sleepMsg:Ljava/lang/String;
    .restart local v4       #timeNow:J
    :cond_1
    move v6, v7

    .line 2421
    goto :goto_0

    .line 2424
    .end local v0           #nowVis:I
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 2428
    .end local v1           #seconds:J
    .end local v3           #sleepMsg:Ljava/lang/String;
    :cond_3
    const-wide/16 v7, 0x0

    sput-wide v7, Lcom/caf/fmradio/FMRadio;->mSleepAtPhoneTime:J

    goto :goto_0
.end method

.method private updateSearchProgress()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2044
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isScanActive()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isSeekActive()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isSearchActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2045
    .local v1, searchActive:Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 2046
    monitor-enter p0

    .line 2047
    :try_start_0
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v2, :cond_2

    .line 2048
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/caf/fmradio/FMRadio;->showDialog(I)V

    .line 2054
    :goto_1
    monitor-exit p0

    .line 2060
    :goto_2
    return-void

    .line 2044
    .end local v1           #searchActive:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2050
    .restart local v1       #searchActive:Z
    :cond_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2051
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2052
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mSearchProgressHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 2054
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2056
    :cond_3
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2057
    .restart local v0       #msg:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2058
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mSearchProgressHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method

.method private updateStationInfoToUI()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2097
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mTunedStation:Lcom/caf/fmradio/PresetStation;

    invoke-virtual {v0}, Lcom/caf/fmradio/PresetStation;->getFrequency()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L

    div-double/2addr v0, v2

    .line 2098
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mTuneStationFrequencyTV:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MHz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2099
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/caf/fmradio/FMRadio;->mUpdatePickerValue:Z

    if-eqz v0, :cond_0

    .line 2100
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mTunedStation:Lcom/caf/fmradio/PresetStation;

    invoke-virtual {v1}, Lcom/caf/fmradio/PresetStation;->getFrequency()I

    move-result v1

    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getLowerLimit()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getFrequencyStepSize()I

    move-result v2

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/caf/fmradio/HorizontalNumberPicker;->setValue(I)V

    .line 2103
    :cond_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mStationCallSignTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mTunedStation:Lcom/caf/fmradio/PresetStation;

    invoke-virtual {v1}, Lcom/caf/fmradio/PresetStation;->getPIString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2104
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mProgramTypeTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mTunedStation:Lcom/caf/fmradio/PresetStation;

    invoke-virtual {v1}, Lcom/caf/fmradio/PresetStation;->getPtyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2105
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioTextTV:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2106
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mERadioTextTV:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2107
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    const-string v1, ""

    iput-object v1, v0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mOriginalString:Ljava/lang/String;

    .line 2108
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    iput v5, v0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mStringlength:I

    .line 2109
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    iput v5, v0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mIteration:I

    .line 2110
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mERadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    const-string v1, ""

    iput-object v1, v0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mOriginalString:Ljava/lang/String;

    .line 2111
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mERadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    iput v5, v0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mStringlength:I

    .line 2112
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mERadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    iput v5, v0, Lcom/caf/fmradio/FMRadio$ScrollerText;->mIteration:I

    .line 2113
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mProgramServiceTV:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2114
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mStereoTV:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2115
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->setupPresetLayout()V

    .line 2116
    return-void
.end method


# virtual methods
.method public bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2933
    const-string v0, "FMRadio"

    const-string v1, "bindToService: Context with serviceconnection callback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2934
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/caf/fmradio/FMRadioService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2935
    new-instance v0, Lcom/caf/fmradio/FMRadio$ServiceBinder;

    invoke-direct {v0, p0, p2}, Lcom/caf/fmradio/FMRadio$ServiceBinder;-><init>(Lcom/caf/fmradio/FMRadio;Landroid/content/ServiceConnection;)V

    .line 2936
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2937
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public clearStationList()V
    .locals 2

    .prologue
    .line 1739
    const-string v0, "scan_station_list"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/caf/fmradio/FMRadio;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1740
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1741
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1742
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1743
    return-void
.end method

.method public fmAudioOutputMode()V
    .locals 2

    .prologue
    .line 1776
    .line 1777
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-eqz v0, :cond_0

    .line 1779
    :try_start_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getAudioOutputMode()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/caf/fmradio/IFMRadioService;->enableStereo(Z)Z

    move-result v0

    .line 1780
    if-nez v0, :cond_0

    .line 1781
    const/16 v0, 0xc

    sput v0, Lcom/caf/fmradio/FMRadio;->mCommandFailed:I

    .line 1782
    const-string v0, "FMRadio"

    const-string v1, "mService.enableStereo failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1788
    :cond_0
    :goto_0
    return-void

    .line 1784
    :catch_0
    move-exception v0

    .line 1785
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public fmConfigure()Z
    .locals 3

    .prologue
    .line 1745
    const/4 v0, 0x1

    .line 1746
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-eqz v1, :cond_0

    .line 1748
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v1}, Lcom/caf/fmradio/IFMRadioService;->fmReconfigure()Z

    move-result v0

    .line 1749
    if-nez v0, :cond_0

    .line 1750
    const/4 v1, 0x4

    sput v1, Lcom/caf/fmradio/FMRadio;->mCommandFailed:I

    .line 1751
    const-string v1, "FMRadio"

    const-string v2, "mService.fmReconfigure failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1758
    :cond_0
    :goto_0
    return v0

    .line 1754
    :catch_0
    move-exception v1

    .line 1755
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrentTunedStation()Lcom/caf/fmradio/PresetStation;
    .locals 1

    .prologue
    .line 2167
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mTunedStation:Lcom/caf/fmradio/PresetStation;

    return-object v0
.end method

.method isAntennaAvailable()Z
    .locals 3

    .prologue
    .line 995
    const/4 v0, 0x0

    .line 996
    .local v0, bAvailable:Z
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-eqz v2, :cond_0

    .line 998
    :try_start_0
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v2}, Lcom/caf/fmradio/IFMRadioService;->isAntennaAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1003
    :cond_0
    :goto_0
    return v0

    .line 999
    :catch_0
    move-exception v1

    .line 1000
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method isCallActive()Z
    .locals 3

    .prologue
    .line 1007
    const/4 v0, 0x0

    .line 1008
    .local v0, bCallActive:Z
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-eqz v2, :cond_0

    .line 1010
    :try_start_0
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v2}, Lcom/caf/fmradio/IFMRadioService;->isCallActive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1015
    :cond_0
    :goto_0
    return v0

    .line 1011
    :catch_0
    move-exception v1

    .line 1012
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 955
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 956
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult : requestCode -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult : resultCode -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 959
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 960
    if-eqz p3, :cond_0

    .line 961
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 962
    if-eqz v0, :cond_0

    .line 963
    const-string v1, "com.caf.fmradio.settings.revert_to_defaults"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->RestoreDefaults()V

    .line 965
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->enableRadioOnOffUI()V

    .line 966
    const v0, 0x17f34

    invoke-direct {p0, v0}, Lcom/caf/fmradio/FMRadio;->tuneRadio(I)V

    .line 972
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 281
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 282
    invoke-virtual {p0, v4}, Lcom/caf/fmradio/FMRadio;->setVolumeControlStream(I)V

    .line 283
    new-instance v0, Lcom/caf/fmradio/FmSharedPreferences;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FmSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    .line 284
    sput v1, Lcom/caf/fmradio/FMRadio;->mCommandActive:I

    .line 285
    sput v1, Lcom/caf/fmradio/FMRadio;->mCommandFailed:I

    .line 287
    const-string v0, "FMRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate - Height : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - Width  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    sput v0, Lcom/caf/fmradio/FMRadio;->mDisplayWidth:I

    .line 291
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 292
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 294
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->setContentView(I)V

    .line 295
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadio$LoadedDataAndState;

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->SavedDataAndState:Lcom/caf/fmradio/FMRadio$LoadedDataAndState;

    .line 297
    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/HorizontalNumberPicker;

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    .line 298
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    sget v3, Lcom/caf/fmradio/FMRadio;->mDisplayWidth:I

    div-int/lit8 v3, v3, 0x14

    invoke-virtual {v0, v3}, Lcom/caf/fmradio/HorizontalNumberPicker;->setTextSize(I)V

    .line 300
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v2}, Lcom/caf/fmradio/HorizontalNumberPicker;->setDensity(I)V

    .line 301
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    new-instance v2, Lcom/caf/fmradio/FMRadio$1;

    invoke-direct {v2, p0}, Lcom/caf/fmradio/FMRadio$1;-><init>(Lcom/caf/fmradio/FMRadio;)V

    invoke-virtual {v0, v2}, Lcom/caf/fmradio/HorizontalNumberPicker;->setOnValueChangedListener(Lcom/caf/fmradio/HorizontalNumberPicker$OnValueChangeListener;)V

    .line 312
    :cond_0
    const/high16 v0, 0x7f04

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mAnimation:Landroid/view/animation/Animation;

    .line 315
    const v0, 0x7f090010

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mMuteButton:Landroid/widget/ImageView;

    .line 316
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mMuteButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mMuteButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mMuteModeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    :cond_1
    const v0, 0x7f090011

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mSpeakerButton:Landroid/widget/ImageView;

    .line 321
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mSpeakerButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mSpeakerButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mSpeakerClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    :cond_2
    const v0, 0x7f09000d

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mOnOffButton:Landroid/widget/ImageView;

    .line 326
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mOnOffButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 327
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mOnOffButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mTurnOnOffClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    :cond_3
    const v0, 0x7f09002f

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mForwardButton:Landroid/widget/ImageView;

    .line 331
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mForwardButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 332
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mForwardButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mForwardClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mForwardButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mForwardLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 336
    :cond_4
    const v0, 0x7f09002d

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mBackButton:Landroid/widget/ImageView;

    .line 337
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mBackButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 338
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mBackButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mBackButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mBackLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 343
    :cond_5
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtons:[Landroid/widget/Button;

    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v2, v1

    .line 344
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtons:[Landroid/widget/Button;

    const/4 v3, 0x1

    const v0, 0x7f090016

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v2, v3

    .line 345
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtons:[Landroid/widget/Button;

    const/4 v3, 0x2

    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v2, v3

    .line 346
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtons:[Landroid/widget/Button;

    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v2, v4

    .line 347
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtons:[Landroid/widget/Button;

    const v0, 0x7f090019

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v2, v5

    .line 348
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtons:[Landroid/widget/Button;

    const/4 v3, 0x5

    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v2, v3

    .line 349
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtons:[Landroid/widget/Button;

    const/4 v3, 0x6

    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v2, v3

    move v0, v1

    .line 351
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_7

    .line 352
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtons:[Landroid/widget/Button;

    aget-object v1, v1, v0

    if-eqz v1, :cond_6

    .line 353
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtons:[Landroid/widget/Button;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtons:[Landroid/widget/Button;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtonOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 351
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    :cond_7
    const v0, 0x7f09002e

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mTuneStationFrequencyTV:Landroid/widget/TextView;

    .line 361
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mTuneStationFrequencyTV:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 362
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mTuneStationFrequencyTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mFrequencyViewClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 364
    :cond_8
    const v0, 0x7f09000f

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mProgramServiceTV:Landroid/widget/TextView;

    .line 365
    const v0, 0x7f090043

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mStereoTV:Landroid/widget/TextView;

    .line 367
    const v0, 0x7f090045

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mStationCallSignTV:Landroid/widget/TextView;

    .line 368
    const v0, 0x7f090046

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mProgramTypeTV:Landroid/widget/TextView;

    .line 370
    const v0, 0x7f090031

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioTextTV:Landroid/widget/TextView;

    .line 371
    const v0, 0x7f090048

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mERadioTextTV:Landroid/widget/TextView;

    .line 372
    const v0, 0x7f09000e

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mSleepMsgTV:Landroid/widget/TextView;

    .line 373
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRecordingMsgTV:Landroid/widget/TextView;

    .line 374
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRecordingMsgTV:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 375
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRecordingMsgTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mRecordButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    :cond_9
    const v0, 0x7f090042

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRSSI:Landroid/widget/ImageView;

    .line 379
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRSSI:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 380
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRSSI:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    :cond_a
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioTextTV:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 384
    new-instance v0, Lcom/caf/fmradio/FMRadio$ScrollerText;

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mRadioTextTV:Landroid/widget/TextView;

    invoke-direct {v0, p0, v1}, Lcom/caf/fmradio/FMRadio$ScrollerText;-><init>(Lcom/caf/fmradio/FMRadio;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    .line 387
    :cond_b
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mERadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mERadioTextTV:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 388
    new-instance v0, Lcom/caf/fmradio/FMRadio$ScrollerText;

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mERadioTextTV:Landroid/widget/TextView;

    invoke-direct {v0, p0, v1}, Lcom/caf/fmradio/FMRadio$ScrollerText;-><init>(Lcom/caf/fmradio/FMRadio;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->mERadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    .line 390
    :cond_c
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    .line 860
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 861
    .local v0, dlgBuilder:Landroid/app/AlertDialog$Builder;
    new-instance v2, Lcom/caf/fmradio/FMRadio$3;

    invoke-direct {v2, p0}, Lcom/caf/fmradio/FMRadio$3;-><init>(Lcom/caf/fmradio/FMRadio;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 878
    packed-switch p1, :pswitch_data_0

    .line 913
    :pswitch_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 880
    :pswitch_1
    invoke-direct {p0, p1, v0}, Lcom/caf/fmradio/FMRadio;->createSearchDlg(ILandroid/app/AlertDialog$Builder;)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0

    .line 883
    :pswitch_2
    invoke-direct {p0, p1, v0}, Lcom/caf/fmradio/FMRadio;->createSleepDlg(ILandroid/app/AlertDialog$Builder;)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0

    .line 886
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/caf/fmradio/FMRadio;->createProgressDialog(I)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0

    .line 889
    :pswitch_4
    invoke-direct {p0, p1, v0}, Lcom/caf/fmradio/FMRadio;->createPresetOptionsDlg(ILandroid/app/AlertDialog$Builder;)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0

    .line 892
    :pswitch_5
    invoke-direct {p0, p1, v0}, Lcom/caf/fmradio/FMRadio;->createPresetRenameDlg(ILandroid/app/AlertDialog$Builder;)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0

    .line 895
    :pswitch_6
    invoke-direct {p0, p1, v0}, Lcom/caf/fmradio/FMRadio;->createCmdTimeoutDlg(ILandroid/app/AlertDialog$Builder;)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0

    .line 898
    :pswitch_7
    invoke-direct {p0, p1, v0}, Lcom/caf/fmradio/FMRadio;->createCmdFailedDlg(ILandroid/app/AlertDialog$Builder;)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0

    .line 901
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/caf/fmradio/FMRadio;->createCmdFailedDlgHdmiOn(I)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0

    .line 904
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/caf/fmradio/FMRadio;->createCmdFailedDlgCallOn(I)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0

    .line 907
    :pswitch_a
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getFMConfiguration()Lqcom/fmradio/FmConfig;

    move-result-object v1

    .line 908
    .local v1, fmConfig:Lqcom/fmradio/FmConfig;
    new-instance v2, Lcom/caf/utils/FrequencyPickerDialog;

    iget-object v3, p0, Lcom/caf/fmradio/FMRadio;->mTunedStation:Lcom/caf/fmradio/PresetStation;

    invoke-virtual {v3}, Lcom/caf/fmradio/PresetStation;->getFrequency()I

    move-result v3

    iget-object v4, p0, Lcom/caf/fmradio/FMRadio;->mFrequencyChangeListener:Lcom/caf/utils/FrequencyPickerDialog$OnFrequencySetListener;

    invoke-direct {v2, p0, v1, v3, v4}, Lcom/caf/utils/FrequencyPickerDialog;-><init>(Landroid/content/Context;Lqcom/fmradio/FmConfig;ILcom/caf/utils/FrequencyPickerDialog$OnFrequencySetListener;)V

    goto :goto_0

    .line 878
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 11
    .parameter

    .prologue
    const v10, 0x7f06000e

    const v9, 0x7f02002e

    const v8, 0x7f020028

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 590
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 592
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isFmOn()Z

    move-result v4

    .line 593
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isRecording()Z

    move-result v5

    .line 594
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isSpeakerEnabled()Z

    .line 595
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isSleepTimerActive()Z

    move-result v6

    .line 596
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isScanActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isSeekActive()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_0
    move v0, v2

    .line 598
    :goto_0
    const/4 v3, 0x3

    const v7, 0x7f060014

    invoke-interface {p1, v1, v3, v1, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 600
    if-eqz v7, :cond_1

    .line 601
    if-nez v0, :cond_9

    if-eqz v4, :cond_9

    move v3, v2

    :goto_1
    invoke-interface {v7, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 603
    :cond_1
    const/4 v3, 0x4

    const v7, 0x7f060015

    invoke-interface {p1, v1, v3, v1, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 605
    if-eqz v3, :cond_2

    .line 606
    if-eqz v0, :cond_a

    if-eqz v4, :cond_a

    move v0, v2

    :goto_2
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 610
    :cond_2
    const/4 v0, 0x5

    const v3, 0x7f060005

    invoke-interface {p1, v1, v0, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 612
    if-eqz v3, :cond_3

    .line 613
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 614
    if-nez v5, :cond_b

    if-eqz v4, :cond_b

    move v0, v2

    :goto_3
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 616
    :cond_3
    const/4 v0, 0x6

    const v3, 0x7f060006

    invoke-interface {p1, v1, v0, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 618
    if-eqz v3, :cond_4

    .line 619
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 620
    if-eqz v5, :cond_c

    if-eqz v4, :cond_c

    move v0, v2

    :goto_4
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 624
    :cond_4
    const/16 v0, 0x9

    const v3, 0x7f060004

    invoke-interface {p1, v1, v0, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x1080049

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 627
    const/4 v0, 0x7

    invoke-interface {p1, v1, v0, v1, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 629
    if-eqz v3, :cond_5

    .line 630
    if-nez v6, :cond_d

    if-eqz v4, :cond_d

    move v0, v2

    :goto_5
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 632
    :cond_5
    const/16 v0, 0x8

    const v3, 0x7f06000f

    invoke-interface {p1, v1, v0, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x7f06000f

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 634
    if-eqz v3, :cond_6

    .line 635
    if-eqz v6, :cond_e

    if-eqz v4, :cond_e

    move v0, v2

    :goto_6
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 637
    :cond_6
    const-string v0, "persist.fm.stats"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/caf/fmradio/FMRadio;->mFMStats:Z

    .line 638
    sget-boolean v0, Lcom/caf/fmradio/FMRadio;->mFMStats:Z

    if-eqz v0, :cond_7

    .line 639
    const/16 v0, 0xc

    const v3, 0x7f060016

    invoke-interface {p1, v1, v0, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x1080041

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 642
    :cond_7
    const/16 v0, 0xd

    const v3, 0x7f060007

    invoke-interface {p1, v1, v0, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 645
    return v2

    :cond_8
    move v0, v1

    .line 596
    goto/16 :goto_0

    :cond_9
    move v3, v1

    .line 601
    goto/16 :goto_1

    :cond_a
    move v0, v1

    .line 606
    goto/16 :goto_2

    :cond_b
    move v0, v1

    .line 614
    goto/16 :goto_3

    :cond_c
    move v0, v1

    .line 620
    goto :goto_4

    :cond_d
    move v0, v1

    .line 630
    goto :goto_5

    :cond_e
    move v0, v1

    .line 635
    goto :goto_6
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 562
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 563
    const-string v0, "FMRadio"

    const-string v1, "FMRadio: onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 565
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->cleanupTimeoutHandler()V

    .line 566
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mSearchProgressHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mSearchProgressHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 572
    :cond_1
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->removeDialog(I)V

    .line 573
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mFmSettingReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/caf/fmradio/FMRadio;->unRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 574
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-eqz v0, :cond_2

    .line 576
    :try_start_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v0}, Lcom/caf/fmradio/IFMRadioService;->isFmOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 577
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->endSleepTimer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :cond_2
    :goto_0
    invoke-virtual {p0, p0}, Lcom/caf/fmradio/FMRadio;->unbindFromService(Landroid/content/Context;)V

    .line 584
    iput-object v2, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    .line 585
    const-string v0, "FMRadio"

    const-string v1, "onDestroy: unbindFromService completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    return-void

    .line 579
    :catch_0
    move-exception v0

    .line 580
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2582
    const-string v0, "FMRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY event received"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    sparse-switch p1, :sswitch_data_0

    .line 2594
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 2592
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2583
    :sswitch_data_0
    .sparse-switch
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 692
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 738
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 694
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/caf/fmradio/Settings;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 696
    const-string v2, "rx_mode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 697
    invoke-virtual {p0, v1, v0}, Lcom/caf/fmradio/FMRadio;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 701
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/caf/fmradio/FMStats;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 703
    invoke-virtual {p0, v1}, Lcom/caf/fmradio/FMRadio;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 707
    :pswitch_3
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->searchAllStations()Z

    goto :goto_0

    .line 710
    :pswitch_4
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->cancelSearch()V

    goto :goto_0

    .line 713
    :pswitch_5
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->startRecording()V

    goto :goto_0

    .line 716
    :pswitch_6
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->stopRecording()V

    goto :goto_0

    .line 719
    :pswitch_7
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/caf/fmradio/FMRadio;->showDialog(I)V

    goto :goto_0

    .line 722
    :pswitch_8
    const-string v1, "Sleep Cancelled"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/caf/fmradio/FMRadio;->DebugToasts(Ljava/lang/String;I)V

    .line 723
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->endSleepTimer()V

    goto :goto_0

    .line 726
    :pswitch_9
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/caf/fmradio/StationListActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 728
    invoke-virtual {p0, v1}, Lcom/caf/fmradio/FMRadio;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 731
    :pswitch_a
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/caf/fmradio/FmTags;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 733
    invoke-virtual {p0, v1}, Lcom/caf/fmradio/FMRadio;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 692
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_a
        :pswitch_2
        :pswitch_9
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 486
    const-string v0, "FMRadio"

    const-string v1, "FMRadio: onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 488
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadio$ScrollerText;->stopScroll()V

    .line 489
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mERadioTextScroller:Lcom/caf/fmradio/FMRadio$ScrollerText;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMRadio$ScrollerText;->stopScroll()V

    .line 490
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mTunedStation:Lcom/caf/fmradio/PresetStation;

    invoke-virtual {v0}, Lcom/caf/fmradio/PresetStation;->getFrequency()I

    move-result v0

    invoke-static {v0}, Lcom/caf/fmradio/FmSharedPreferences;->setTunedFrequency(I)V

    .line 491
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    invoke-virtual {v0}, Lcom/caf/fmradio/FmSharedPreferences;->Save()V

    .line 492
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 918
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 919
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getCurrentListIndex()I

    move-result v0

    .line 920
    invoke-static {v0}, Lcom/caf/fmradio/FmSharedPreferences;->getStationList(I)Lcom/caf/fmradio/PresetList;

    .line 921
    packed-switch p1, :pswitch_data_0

    .line 951
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 923
    :pswitch_1
    const v0, 0x7f090001

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 924
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtonStation:Lcom/caf/fmradio/PresetStation;

    if-eqz v1, :cond_0

    .line 925
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtonStation:Lcom/caf/fmradio/PresetStation;

    invoke-virtual {v1}, Lcom/caf/fmradio/PresetStation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 930
    :pswitch_2
    check-cast p2, Landroid/app/AlertDialog;

    .line 931
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtonStation:Lcom/caf/fmradio/PresetStation;

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPresetButtonStation:Lcom/caf/fmradio/PresetStation;

    invoke-virtual {v0}, Lcom/caf/fmradio/PresetStation;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 938
    :pswitch_3
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mTunedStation:Lcom/caf/fmradio/PresetStation;

    if-eqz v0, :cond_0

    .line 940
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getFMConfiguration()Lqcom/fmradio/FmConfig;

    move-result-object v1

    move-object v0, p2

    .line 941
    check-cast v0, Lcom/caf/utils/FrequencyPickerDialog;

    invoke-virtual {v1}, Lqcom/fmradio/FmConfig;->getChSpacing()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/caf/utils/FrequencyPickerDialog;->updateSteps(I)V

    move-object v0, p2

    .line 942
    check-cast v0, Lcom/caf/utils/FrequencyPickerDialog;

    invoke-virtual {v1}, Lqcom/fmradio/FmConfig;->getLowerLimit()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/caf/utils/FrequencyPickerDialog;->updateMinFreq(I)V

    move-object v0, p2

    .line 943
    check-cast v0, Lcom/caf/utils/FrequencyPickerDialog;

    invoke-virtual {v1}, Lqcom/fmradio/FmConfig;->getUpperLimit()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/caf/utils/FrequencyPickerDialog;->updateMaxFreq(I)V

    .line 944
    check-cast p2, Lcom/caf/utils/FrequencyPickerDialog;

    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mTunedStation:Lcom/caf/fmradio/PresetStation;

    invoke-virtual {v0}, Lcom/caf/fmradio/PresetStation;->getFrequency()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/caf/utils/FrequencyPickerDialog;->UpdateFrequency(I)V

    goto :goto_0

    .line 921
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 650
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 652
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isFmOn()Z

    move-result v2

    .line 653
    .local v2, radioOn:Z
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isRecording()Z

    move-result v3

    .line 654
    .local v3, recording:Z
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isSpeakerEnabled()Z

    move-result v1

    .line 655
    .local v1, mSpeakerPhoneOn:Z
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isScanActive()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isSeekActive()Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_0
    move v4, v7

    .line 657
    .local v4, searchActive:Z
    :goto_0
    const/4 v8, 0x3

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 658
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 659
    if-nez v4, :cond_9

    if-eqz v2, :cond_9

    move v8, v7

    :goto_1
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 661
    :cond_1
    const/4 v8, 0x4

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 662
    if-eqz v0, :cond_2

    .line 663
    if-eqz v4, :cond_a

    if-eqz v2, :cond_a

    move v8, v7

    :goto_2
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 666
    :cond_2
    const/4 v8, 0x5

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 667
    if-eqz v0, :cond_3

    .line 668
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 669
    if-nez v3, :cond_b

    if-eqz v2, :cond_b

    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isAnalogModeEnabled()Z

    move-result v8

    if-nez v8, :cond_b

    move v8, v7

    :goto_3
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 671
    :cond_3
    const/4 v8, 0x6

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 672
    if-eqz v0, :cond_4

    .line 673
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 674
    if-eqz v3, :cond_c

    if-eqz v2, :cond_c

    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isAnalogModeEnabled()Z

    move-result v8

    if-nez v8, :cond_c

    move v8, v7

    :goto_4
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 678
    :cond_4
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isSleepTimerActive()Z

    move-result v5

    .line 679
    .local v5, sleepActive:Z
    const/4 v8, 0x7

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 680
    if-eqz v0, :cond_5

    .line 681
    if-nez v5, :cond_d

    if-eqz v2, :cond_d

    move v8, v7

    :goto_5
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 683
    :cond_5
    const/16 v8, 0x8

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 684
    if-eqz v0, :cond_7

    .line 685
    if-eqz v5, :cond_6

    if-eqz v2, :cond_6

    move v6, v7

    :cond_6
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 687
    :cond_7
    return v7

    .end local v0           #item:Landroid/view/MenuItem;
    .end local v4           #searchActive:Z
    .end local v5           #sleepActive:Z
    :cond_8
    move v4, v6

    .line 655
    goto :goto_0

    .restart local v0       #item:Landroid/view/MenuItem;
    .restart local v4       #searchActive:Z
    :cond_9
    move v8, v6

    .line 659
    goto :goto_1

    :cond_a
    move v8, v6

    .line 663
    goto :goto_2

    :cond_b
    move v8, v6

    .line 669
    goto :goto_3

    :cond_c
    move v8, v6

    .line 674
    goto :goto_4

    .restart local v5       #sleepActive:Z
    :cond_d
    move v8, v6

    .line 681
    goto :goto_5
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 428
    const-string v0, "FMRadio"

    const-string v1, "FMRadio: onRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v0}, Lcom/caf/fmradio/IFMRadioService;->requestFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 437
    return-void

    .line 433
    :catch_0
    move-exception v0

    .line 434
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 496
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 498
    :try_start_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mServiceCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;

    invoke-interface {v0, v1}, Lcom/caf/fmradio/IFMRadioService;->registerCallbacks(Lcom/caf/fmradio/IFMRadioServiceCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isSleepTimerActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 505
    const-string v0, "FMRadio"

    const-string v1, "isSleepTimerActive is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :try_start_1
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/caf/fmradio/IFMRadioService;->cancelDelayedStop(I)V

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 511
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 516
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->initiateSleepThread()V

    .line 518
    :cond_3
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 519
    const-string v0, "FMRadio"

    const-string v1, "isRecordTimerActive is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :try_start_2
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-eqz v0, :cond_4

    .line 522
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/caf/fmradio/IFMRadioService;->cancelDelayedStop(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 527
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 528
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->initiateRecordThread()V

    .line 531
    :cond_5
    const-string v0, "FMRadio"

    const-string v1, "FMRadio: onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getLastAudioMode()I

    move-result v0

    iput v0, p0, Lcom/caf/fmradio/FMRadio;->mStereo:I

    .line 533
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mUpdateProgramService:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 534
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mUpdateRadioText:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 535
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mOnStereo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 536
    sput-boolean v2, Lcom/caf/fmradio/FMRadio;->mUpdatePickerValue:Z

    .line 537
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->updateStationInfoToUI()V

    .line 538
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->enableRadioOnOffUI()V

    .line 539
    return-void

    .line 501
    :catch_0
    move-exception v0

    .line 502
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 513
    :catch_1
    move-exception v0

    .line 514
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 524
    :catch_2
    move-exception v0

    .line 525
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 546
    new-instance v0, Lcom/caf/fmradio/FMRadio$LoadedDataAndState;

    invoke-direct {v0}, Lcom/caf/fmradio/FMRadio$LoadedDataAndState;-><init>()V

    .line 547
    .local v0, data:Lcom/caf/fmradio/FMRadio$LoadedDataAndState;
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-eqz v2, :cond_0

    .line 549
    :try_start_0
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v2}, Lcom/caf/fmradio/IFMRadioService;->isFmOn()Z

    move-result v2

    iput-boolean v2, v0, Lcom/caf/fmradio/FMRadio$LoadedDataAndState;->onOrOff:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :goto_0
    return-object v0

    .line 550
    :catch_0
    move-exception v1

    .line 551
    .local v1, e:Landroid/os/RemoteException;
    iput-boolean v3, v0, Lcom/caf/fmradio/FMRadio$LoadedDataAndState;->onOrOff:Z

    .line 552
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 555
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iput-boolean v3, v0, Lcom/caf/fmradio/FMRadio$LoadedDataAndState;->onOrOff:Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 459
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 460
    const-string v0, "FMRadio"

    const-string v1, "FMRadio: onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isHdmiOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 462
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMRadio;->showDialog(I)V

    .line 472
    :goto_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    invoke-virtual {v0}, Lcom/caf/fmradio/FmSharedPreferences;->Load()V

    .line 473
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/caf/fmradio/FMRadio;->setDisplayvalue()V

    .line 476
    :cond_0
    new-instance v0, Lcom/caf/fmradio/PresetStation;

    const-string v1, ""

    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getTunedFrequency()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/caf/fmradio/PresetStation;-><init>(Ljava/lang/String;I)V

    .line 478
    if-eqz v0, :cond_1

    .line 479
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mTunedStation:Lcom/caf/fmradio/PresetStation;

    invoke-virtual {v1, v0}, Lcom/caf/fmradio/PresetStation;->Copy(Lcom/caf/fmradio/PresetStation;)V

    .line 482
    :cond_1
    return-void

    .line 465
    :cond_2
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->osc:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p0, v0}, Lcom/caf/fmradio/FMRadio;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 466
    const-string v0, "FMRadio"

    const-string v1, "onStart: Failed to Start Service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :goto_1
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->registerFMSettingListner()V

    goto :goto_0

    .line 468
    :cond_3
    const-string v0, "FMRadio"

    const-string v1, "onStart: Start Service completed successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 441
    const-string v0, "FMRadio"

    const-string v1, "FMRadio: onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isSleepTimerActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 445
    :cond_0
    invoke-direct {p0}, Lcom/caf/fmradio/FMRadio;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    :try_start_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRecordUpdateHandlerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mRecordUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 455
    return-void

    .line 450
    :catch_0
    move-exception v0

    .line 451
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method protected setDisplayvalue()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 393
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getUpperLimit()I

    move-result v0

    .line 394
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getLowerLimit()I

    move-result v1

    .line 395
    iget-object v2, p0, Lcom/caf/fmradio/FMRadio;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getFrequencyStepSize()I

    move-result v2

    .line 396
    sparse-switch v2, :sswitch_data_0

    .line 407
    :goto_0
    sub-int/2addr v0, v1

    div-int/2addr v0, v2

    .line 408
    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    .line 409
    const/4 v0, 0x0

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 410
    mul-int v4, v0, v2

    add-int/2addr v4, v1

    int-to-float v4, v4

    const/high16 v5, 0x447a

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 398
    :sswitch_0
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    sget-object v4, Lcom/caf/fmradio/HorizontalNumberPicker$Scale;->SCALE_SMALL:Lcom/caf/fmradio/HorizontalNumberPicker$Scale;

    invoke-virtual {v3, v4}, Lcom/caf/fmradio/HorizontalNumberPicker;->setScale(Lcom/caf/fmradio/HorizontalNumberPicker$Scale;)V

    goto :goto_0

    .line 401
    :sswitch_1
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    sget-object v4, Lcom/caf/fmradio/HorizontalNumberPicker$Scale;->SCALE_MEDIUM:Lcom/caf/fmradio/HorizontalNumberPicker$Scale;

    invoke-virtual {v3, v4}, Lcom/caf/fmradio/HorizontalNumberPicker;->setScale(Lcom/caf/fmradio/HorizontalNumberPicker$Scale;)V

    goto :goto_0

    .line 404
    :sswitch_2
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    sget-object v4, Lcom/caf/fmradio/HorizontalNumberPicker$Scale;->SCALE_LARGE:Lcom/caf/fmradio/HorizontalNumberPicker$Scale;

    invoke-virtual {v3, v4}, Lcom/caf/fmradio/HorizontalNumberPicker;->setScale(Lcom/caf/fmradio/HorizontalNumberPicker$Scale;)V

    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    invoke-virtual {v0, v3, v6}, Lcom/caf/fmradio/HorizontalNumberPicker;->setDisplayedValues([Ljava/lang/String;Z)V

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/caf/fmradio/HorizontalNumberPicker;->setWrapSelectorWheel(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_2
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    invoke-virtual {v0}, Lcom/caf/fmradio/HorizontalNumberPicker;->invalidate()V

    .line 419
    return-void

    .line 415
    :catch_0
    move-exception v0

    .line 416
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    .line 396
    :sswitch_data_0
    .sparse-switch
        0x32 -> :sswitch_0
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_2
    .end sparse-switch
.end method

.method public unbindFromService(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 2942
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMRadio$ServiceBinder;

    .line 2943
    const-string v1, "FMRadio"

    const-string v2, "unbindFromService: Context"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    if-nez v0, :cond_1

    .line 2945
    const-string v0, "FMRadio"

    const-string v1, "Trying to unbind for unknown Context"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    :cond_0
    :goto_0
    return-void

    .line 2948
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2949
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2952
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caf/fmradio/FMRadio;->sService:Lcom/caf/fmradio/IFMRadioService;

    goto :goto_0
.end method

.method protected valueToFrequency(I)I
    .locals 2
    .parameter "value"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getLowerLimit()I

    move-result v0

    iget-object v1, p0, Lcom/caf/fmradio/FMRadio;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getFrequencyStepSize()I

    move-result v1

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/caf/fmradio/FMRadio;->mFrequency:I

    .line 423
    iget v0, p0, Lcom/caf/fmradio/FMRadio;->mFrequency:I

    return v0
.end method
