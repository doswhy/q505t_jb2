.class public Lcom/caf/fmradio/FMTransmitterActivity;
.super Landroid/app/Activity;
.source "FMTransmitterActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caf/fmradio/FMTransmitterActivity$ServiceBinder;,
        Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;,
        Lcom/caf/fmradio/FMTransmitterActivity$LoadedDataAndState;
    }
.end annotation


# static fields
.field private static mDisplayWidth:I

.field private static mIsSearching:Z

.field private static mSearchingResultStatus:Z

.field private static mTunedFrequency:I

.field public static mUpdatePickerValue:Z


# instance fields
.field private SavedDataAndState:Lcom/caf/fmradio/FMTransmitterActivity$LoadedDataAndState;

.field private disableRadioHandler:Landroid/os/Handler;

.field private disableRadioTask:Ljava/lang/Runnable;

.field private enableRadioHandler:Landroid/os/Handler;

.field private enableRadioTask:Ljava/lang/Runnable;

.field private mAnimation:Landroid/view/animation/Animation;

.field private mBackButton:Landroid/widget/ImageView;

.field private mBackClickListener:Landroid/view/View$OnClickListener;

.field private mFmSettingReceiver:Landroid/content/BroadcastReceiver;

.field private mForwardButton:Landroid/widget/ImageView;

.field private mForwardClickListener:Landroid/view/View$OnClickListener;

.field private mFrequency:I

.field private mFrequencyChangeListener:Lcom/caf/utils/FrequencyPickerDialog$OnFrequencySetListener;

.field private mFrequencyViewClickListener:Landroid/view/View$OnLongClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mInternalAntennaAvailable:Z

.field private mMetaData:Ljava/lang/String;

.field private mOnOffButton:Landroid/widget/ImageView;

.field private mPSData:Ljava/lang/String;

.field private mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

.field private mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

.field private mPresetButtonClickListener:Landroid/view/View$OnClickListener;

.field private mPresetButtonIndex:I

.field private mPresetButtonOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mPresetButtons:[Landroid/widget/Button;

.field private mPresetFrequencies:[I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRadioChangeFrequency:Ljava/lang/Runnable;

.field private mRadioReset:Ljava/lang/Runnable;

.field private mRadioStateUpdated:Ljava/lang/Runnable;

.field private mRadioTextScroller:Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;

.field private mRadioTextTV:Landroid/widget/TextView;

.field private mSearchListComplete:Ljava/lang/Runnable;

.field private mSearchProgressHandler:Landroid/os/Handler;

.field private mService:Lcom/caf/fmradio/IFMTransmitterService;

.field private mServiceCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks$Stub;

.field private mTransmitStaticMsgTV:Landroid/widget/TextView;

.field private mTuneStationFrequencyTV:Landroid/widget/TextView;

.field private mTurnOnOffClickListener:Landroid/view/View$OnClickListener;

.field private mUpdateRadioText:Ljava/lang/Runnable;

.field private mUpdateStationInfo:Ljava/lang/Runnable;

.field private osc:Landroid/content/ServiceConnection;

.field private sConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/caf/fmradio/FMTransmitterActivity$ServiceBinder;",
            ">;"
        }
    .end annotation
.end field

.field public sService:Lcom/caf/fmradio/IFMTransmitterService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 122
    sput-boolean v0, Lcom/caf/fmradio/FMTransmitterActivity;->mIsSearching:Z

    .line 123
    sput-boolean v0, Lcom/caf/fmradio/FMTransmitterActivity;->mSearchingResultStatus:Z

    .line 130
    sput v0, Lcom/caf/fmradio/FMTransmitterActivity;->mTunedFrequency:I

    .line 151
    sput-boolean v0, Lcom/caf/fmradio/FMTransmitterActivity;->mUpdatePickerValue:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 101
    iput-object v2, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;

    .line 108
    new-array v0, v4, [Landroid/widget/Button;

    aput-object v2, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtons:[Landroid/widget/Button;

    .line 109
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetFrequencies:[I

    .line 125
    iput-boolean v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mInternalAntennaAvailable:Z

    .line 127
    iput-object v2, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mAnimation:Landroid/view/animation/Animation;

    .line 128
    iput-object v2, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextScroller:Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtonIndex:I

    .line 133
    iput-object v2, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mMetaData:Ljava/lang/String;

    .line 134
    iput-object v2, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPSData:Ljava/lang/String;

    .line 137
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mHandler:Landroid/os/Handler;

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioHandler:Landroid/os/Handler;

    .line 139
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->disableRadioHandler:Landroid/os/Handler;

    .line 142
    iput-object v2, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 144
    iput-object v2, p0, Lcom/caf/fmradio/FMTransmitterActivity;->SavedDataAndState:Lcom/caf/fmradio/FMTransmitterActivity$LoadedDataAndState;

    .line 153
    iput-object v2, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mFmSettingReceiver:Landroid/content/BroadcastReceiver;

    .line 700
    new-instance v0, Lcom/caf/fmradio/FMTransmitterActivity$8;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMTransmitterActivity$8;-><init>(Lcom/caf/fmradio/FMTransmitterActivity;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mFrequencyViewClickListener:Landroid/view/View$OnLongClickListener;

    .line 707
    new-instance v0, Lcom/caf/fmradio/FMTransmitterActivity$9;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMTransmitterActivity$9;-><init>(Lcom/caf/fmradio/FMTransmitterActivity;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mForwardClickListener:Landroid/view/View$OnClickListener;

    .line 716
    new-instance v0, Lcom/caf/fmradio/FMTransmitterActivity$10;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMTransmitterActivity$10;-><init>(Lcom/caf/fmradio/FMTransmitterActivity;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mBackClickListener:Landroid/view/View$OnClickListener;

    .line 726
    new-instance v0, Lcom/caf/fmradio/FMTransmitterActivity$11;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMTransmitterActivity$11;-><init>(Lcom/caf/fmradio/FMTransmitterActivity;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtonClickListener:Landroid/view/View$OnClickListener;

    .line 755
    new-instance v0, Lcom/caf/fmradio/FMTransmitterActivity$12;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMTransmitterActivity$12;-><init>(Lcom/caf/fmradio/FMTransmitterActivity;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtonOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 775
    new-instance v0, Lcom/caf/fmradio/FMTransmitterActivity$13;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMTransmitterActivity$13;-><init>(Lcom/caf/fmradio/FMTransmitterActivity;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mFrequencyChangeListener:Lcom/caf/utils/FrequencyPickerDialog$OnFrequencySetListener;

    .line 789
    new-instance v0, Lcom/caf/fmradio/FMTransmitterActivity$14;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMTransmitterActivity$14;-><init>(Lcom/caf/fmradio/FMTransmitterActivity;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mTurnOnOffClickListener:Landroid/view/View$OnClickListener;

    .line 836
    new-instance v0, Lcom/caf/fmradio/FMTransmitterActivity$15;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMTransmitterActivity$15;-><init>(Lcom/caf/fmradio/FMTransmitterActivity;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioTask:Ljava/lang/Runnable;

    .line 842
    new-instance v0, Lcom/caf/fmradio/FMTransmitterActivity$16;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMTransmitterActivity$16;-><init>(Lcom/caf/fmradio/FMTransmitterActivity;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->disableRadioTask:Ljava/lang/Runnable;

    .line 1123
    new-instance v0, Lcom/caf/fmradio/FMTransmitterActivity$17;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMTransmitterActivity$17;-><init>(Lcom/caf/fmradio/FMTransmitterActivity;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mSearchProgressHandler:Landroid/os/Handler;

    .line 1164
    new-instance v0, Lcom/caf/fmradio/FMTransmitterActivity$18;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMTransmitterActivity$18;-><init>(Lcom/caf/fmradio/FMTransmitterActivity;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mUpdateStationInfo:Ljava/lang/Runnable;

    .line 1171
    new-instance v0, Lcom/caf/fmradio/FMTransmitterActivity$19;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMTransmitterActivity$19;-><init>(Lcom/caf/fmradio/FMTransmitterActivity;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mSearchListComplete:Ljava/lang/Runnable;

    .line 1212
    new-instance v0, Lcom/caf/fmradio/FMTransmitterActivity$20;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMTransmitterActivity$20;-><init>(Lcom/caf/fmradio/FMTransmitterActivity;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mUpdateRadioText:Ljava/lang/Runnable;

    .line 1253
    new-instance v0, Lcom/caf/fmradio/FMTransmitterActivity$21;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMTransmitterActivity$21;-><init>(Lcom/caf/fmradio/FMTransmitterActivity;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioChangeFrequency:Ljava/lang/Runnable;

    .line 1395
    iput-object v2, p0, Lcom/caf/fmradio/FMTransmitterActivity;->sService:Lcom/caf/fmradio/IFMTransmitterService;

    .line 1396
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->sConnectionMap:Ljava/util/HashMap;

    .line 1453
    new-instance v0, Lcom/caf/fmradio/FMTransmitterActivity$22;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMTransmitterActivity$22;-><init>(Lcom/caf/fmradio/FMTransmitterActivity;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->osc:Landroid/content/ServiceConnection;

    .line 1498
    new-instance v0, Lcom/caf/fmradio/FMTransmitterActivity$23;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMTransmitterActivity$23;-><init>(Lcom/caf/fmradio/FMTransmitterActivity;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mServiceCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks$Stub;

    .line 1546
    new-instance v0, Lcom/caf/fmradio/FMTransmitterActivity$24;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMTransmitterActivity$24;-><init>(Lcom/caf/fmradio/FMTransmitterActivity;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioStateUpdated:Ljava/lang/Runnable;

    .line 1567
    new-instance v0, Lcom/caf/fmradio/FMTransmitterActivity$25;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMTransmitterActivity$25;-><init>(Lcom/caf/fmradio/FMTransmitterActivity;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioReset:Ljava/lang/Runnable;

    return-void

    .line 109
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private RestoreDefaults()V
    .locals 3

    .prologue
    .line 693
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 694
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetFrequencies:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 693
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 696
    :cond_0
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getLowerLimit()I

    move-result v1

    sput v1, Lcom/caf/fmradio/FMTransmitterActivity;->mTunedFrequency:I

    .line 697
    invoke-virtual {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->SavePreferences()V

    .line 698
    return-void
.end method

.method static synthetic access$000(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioChangeFrequency:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/caf/fmradio/FMTransmitterActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->isFmOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->disableRadioTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->disableRadioHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/caf/fmradio/FMTransmitterActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->setTurnOnOffButtonImage()V

    return-void
.end method

.method static synthetic access$1700(Lcom/caf/fmradio/FMTransmitterActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->enableRadio()V

    return-void
.end method

.method static synthetic access$1800(Lcom/caf/fmradio/FMTransmitterActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->disableRadio()V

    return-void
.end method

.method static synthetic access$1900(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/caf/fmradio/FMTransmitterActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/caf/fmradio/FMTransmitterActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtonIndex:I

    return v0
.end method

.method static synthetic access$2000(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mTuneStationFrequencyTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/caf/fmradio/FMTransmitterActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtonIndex:I

    return p1
.end method

.method static synthetic access$2100(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mSearchProgressHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/caf/fmradio/FMTransmitterActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->updateSearchProgress()V

    return-void
.end method

.method static synthetic access$2300(Lcom/caf/fmradio/FMTransmitterActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->resetFMStationInfoUI()V

    return-void
.end method

.method static synthetic access$2402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    sput-boolean p0, Lcom/caf/fmradio/FMTransmitterActivity;->mIsSearching:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/caf/fmradio/FMTransmitterActivity;)Lcom/caf/fmradio/IFMTransmitterService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/caf/fmradio/FMTransmitterActivity;Lcom/caf/fmradio/IFMTransmitterService;)Lcom/caf/fmradio/IFMTransmitterService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;

    return-object p1
.end method

.method static synthetic access$2600()Z
    .locals 1

    .prologue
    .line 83
    sget-boolean v0, Lcom/caf/fmradio/FMTransmitterActivity;->mSearchingResultStatus:Z

    return v0
.end method

.method static synthetic access$2602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    sput-boolean p0, Lcom/caf/fmradio/FMTransmitterActivity;->mSearchingResultStatus:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mMetaData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/caf/fmradio/FMTransmitterActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mMetaData:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/caf/fmradio/FMTransmitterActivity;)Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextScroller:Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/caf/fmradio/FMTransmitterActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetFrequencies:[I

    return-object v0
.end method

.method static synthetic access$3000(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPSData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/caf/fmradio/FMTransmitterActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPSData:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mTransmitStaticMsgTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/caf/fmradio/FMTransmitterActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mFrequency:I

    return v0
.end method

.method static synthetic access$3300(Lcom/caf/fmradio/FMTransmitterActivity;)Lcom/caf/fmradio/IFMTransmitterServiceCallbacks$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mServiceCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks$Stub;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/caf/fmradio/FMTransmitterActivity;)Lcom/caf/fmradio/FMTransmitterActivity$LoadedDataAndState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->SavedDataAndState:Lcom/caf/fmradio/FMTransmitterActivity$LoadedDataAndState;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/caf/fmradio/FMTransmitterActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioOnOffUI(Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioStateUpdated:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioReset:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mSearchListComplete:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mUpdateStationInfo:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/caf/fmradio/FMTransmitterActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/caf/fmradio/FMTransmitterActivity;->tuneRadio(I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/caf/fmradio/FMTransmitterActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->RestoreDefaults()V

    return-void
.end method

.method static synthetic access$4100(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mUpdateRadioText:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/caf/fmradio/FMTransmitterActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioOnOffButton()V

    return-void
.end method

.method static synthetic access$4300(Lcom/caf/fmradio/FMTransmitterActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->resetSearchProgress()V

    return-void
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 83
    sget v0, Lcom/caf/fmradio/FMTransmitterActivity;->mTunedFrequency:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    sput p0, Lcom/caf/fmradio/FMTransmitterActivity;->mTunedFrequency:I

    return p0
.end method

.method static synthetic access$600(Lcom/caf/fmradio/FMTransmitterActivity;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/caf/fmradio/FMTransmitterActivity;->stationExists(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/caf/fmradio/FMTransmitterActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->setupPresetLayout()V

    return-void
.end method

.method static synthetic access$800(Lcom/caf/fmradio/FMTransmitterActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->cancelSearch()V

    return-void
.end method

.method static synthetic access$900(Lcom/caf/fmradio/FMTransmitterActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->initiateSearchList()V

    return-void
.end method

.method private cancelSearch()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1072
    monitor-enter p0

    .line 1073
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1075
    :try_start_1
    sget-boolean v1, Lcom/caf/fmradio/FMTransmitterActivity;->mIsSearching:Z

    if-ne v1, v2, :cond_0

    .line 1076
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;

    invoke-interface {v1}, Lcom/caf/fmradio/IFMTransmitterService;->cancelSearch()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-ne v2, v1, :cond_0

    .line 1083
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1084
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->updateSearchProgress()V

    .line 1085
    return-void

    .line 1079
    :catch_0
    move-exception v0

    .line 1080
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1083
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private createPresetListAutoSelectWarnDlg(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 664
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 665
    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06002b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 667
    const v1, 0x7f06002d

    invoke-virtual {p0, v1}, Lcom/caf/fmradio/FMTransmitterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 669
    const v1, 0x7f06006d

    new-instance v2, Lcom/caf/fmradio/FMTransmitterActivity$6;

    invoke-direct {v2, p0}, Lcom/caf/fmradio/FMTransmitterActivity$6;-><init>(Lcom/caf/fmradio/FMTransmitterActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 683
    const v1, 0x7f06006e

    new-instance v2, Lcom/caf/fmradio/FMTransmitterActivity$7;

    invoke-direct {v2, p0}, Lcom/caf/fmradio/FMTransmitterActivity$7;-><init>(Lcom/caf/fmradio/FMTransmitterActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 689
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createPresetOptionsDlg(I)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    .line 556
    iget v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtonIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtonIndex:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    .line 557
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetFrequencies:[I

    iget v1, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtonIndex:I

    aget v0, v0, v1

    .line 558
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 559
    invoke-static {v0}, Lcom/caf/fmradio/PresetStation;->getFrequencyString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 560
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 561
    invoke-virtual {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06003f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    invoke-virtual {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06003e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    invoke-virtual {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 565
    new-instance v2, Lcom/caf/fmradio/FMTransmitterActivity$2;

    invoke-direct {v2, p0}, Lcom/caf/fmradio/FMTransmitterActivity$2;-><init>(Lcom/caf/fmradio/FMTransmitterActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 571
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 572
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 573
    new-instance v0, Lcom/caf/fmradio/FMTransmitterActivity$3;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMTransmitterActivity$3;-><init>(Lcom/caf/fmradio/FMTransmitterActivity;)V

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 616
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 618
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createProgressDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 622
    const-string v2, ""

    .line 623
    const-string v0, ""

    .line 626
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->isSearchActive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 627
    const v0, 0x7f06001e

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMTransmitterActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 628
    const v0, 0x7f06001d

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMTransmitterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 629
    const/4 v0, 0x1

    .line 632
    :goto_0
    if-eqz v0, :cond_1

    .line 633
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 634
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 636
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 637
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f02002c

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 638
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 639
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 640
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x1

    const v2, 0x7f060017

    invoke-virtual {p0, v2}, Lcom/caf/fmradio/FMTransmitterActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/caf/fmradio/FMTransmitterActivity$4;

    invoke-direct {v3, p0}, Lcom/caf/fmradio/FMTransmitterActivity$4;-><init>(Lcom/caf/fmradio/FMTransmitterActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 648
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/caf/fmradio/FMTransmitterActivity$5;

    invoke-direct {v1, p0}, Lcom/caf/fmradio/FMTransmitterActivity$5;-><init>(Lcom/caf/fmradio/FMTransmitterActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 656
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 657
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 658
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mSearchProgressHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0

    :cond_2
    move-object v3, v2

    move-object v2, v0

    move v0, v1

    goto :goto_0
.end method

.method private disableRadio()V
    .locals 2

    .prologue
    .line 869
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioOnOffUI(Z)V

    .line 870
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->cancelSearch()V

    .line 871
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;

    if-eqz v1, :cond_0

    .line 873
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;

    invoke-interface {v1}, Lcom/caf/fmradio/IFMTransmitterService;->fmOff()Z

    move-result v1

    if-nez v1, :cond_0

    .line 874
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioOnOffButton()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    :cond_0
    :goto_0
    return-void

    .line 876
    :catch_0
    move-exception v0

    .line 877
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioOnOffButton()V

    .line 878
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private disableRadioOnOffButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 823
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mOnOffButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mOnOffButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 825
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mOnOffButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 827
    :cond_0
    return-void
.end method

.method private enableRadio()V
    .locals 2

    .prologue
    .line 849
    const/4 v1, 0x0

    sput-boolean v1, Lcom/caf/fmradio/FMTransmitterActivity;->mIsSearching:Z

    .line 850
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->disableRadioOnOffButton()V

    .line 851
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;

    if-eqz v1, :cond_0

    .line 853
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;

    invoke-interface {v1}, Lcom/caf/fmradio/IFMTransmitterService;->isHeadsetPlugged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 854
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->setHsPluggedInMsg()V

    .line 855
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioOnOffButton()V

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 856
    :cond_1
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;

    invoke-interface {v1}, Lcom/caf/fmradio/IFMTransmitterService;->isCallActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 857
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioOnOffButton()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 861
    :catch_0
    move-exception v0

    .line 862
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioOnOffButton()V

    .line 863
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 858
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;

    invoke-interface {v1}, Lcom/caf/fmradio/IFMTransmitterService;->fmOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 859
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioOnOffButton()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private enableRadioOnOffButton()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 816
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mOnOffButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mOnOffButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 818
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mOnOffButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 820
    :cond_0
    return-void
.end method

.method private enableRadioOnOffUI()V
    .locals 2

    .prologue
    .line 894
    const/4 v0, 0x1

    .line 899
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->isSearchActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 900
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->isFmOn()Z

    move-result v0

    .line 903
    :cond_0
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->readInternalAntennaAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 904
    const-string v0, "FMTransmitterActivity"

    const-string v1, "finding internal antenna avialable as false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const/4 v0, 0x0

    .line 907
    :cond_1
    invoke-direct {p0, v0}, Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioOnOffUI(Z)V

    .line 908
    return-void
.end method

.method private enableRadioOnOffUI(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 911
    if-eqz p1, :cond_c

    .line 912
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mTuneStationFrequencyTV:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mTuneStationFrequencyTV:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mFrequencyViewClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextScroller:Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;

    if-eqz v0, :cond_1

    .line 917
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextScroller:Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->startScroll()V

    .line 928
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mForwardButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 929
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mForwardButton:Landroid/widget/ImageView;

    if-ne p1, v4, :cond_e

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 932
    :cond_2
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mBackButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 933
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mBackButton:Landroid/widget/ImageView;

    if-ne p1, v4, :cond_f

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 936
    :cond_3
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mTransmitStaticMsgTV:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 937
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mTransmitStaticMsgTV:Landroid/widget/TextView;

    if-ne p1, v4, :cond_10

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 940
    :cond_4
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mTuneStationFrequencyTV:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 941
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mTuneStationFrequencyTV:Landroid/widget/TextView;

    if-ne p1, v4, :cond_11

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 944
    :cond_5
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextTV:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 945
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextTV:Landroid/widget/TextView;

    if-ne p1, v4, :cond_12

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 948
    :cond_6
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    if-eqz v0, :cond_8

    .line 949
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    if-eqz p1, :cond_7

    move v2, v1

    :cond_7
    invoke-virtual {v0, v2}, Lcom/caf/fmradio/HorizontalNumberPicker;->setVisibility(I)V

    .line 953
    :cond_8
    :try_start_0
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;

    if-eqz v0, :cond_17

    .line 954
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;

    invoke-interface {v0}, Lcom/caf/fmradio/IFMTransmitterService;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 955
    const-string v0, "FMTransmitterActivity"

    const-string v2, "headset plugged in"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextTV:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 957
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextTV:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 958
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextTV:Landroid/widget/TextView;

    const v2, 0x7f060020

    invoke-virtual {p0, v2}, Lcom/caf/fmradio/FMTransmitterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 960
    :cond_9
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mOnOffButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 961
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mOnOffButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 993
    :cond_a
    :goto_6
    const/4 v0, 0x7

    if-ge v1, v0, :cond_19

    .line 994
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtons:[Landroid/widget/Button;

    aget-object v0, v0, v1

    if-eqz v0, :cond_b

    .line 995
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtons:[Landroid/widget/Button;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 993
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 920
    :cond_c
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mTuneStationFrequencyTV:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 921
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mTuneStationFrequencyTV:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 923
    :cond_d
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextScroller:Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;

    if-eqz v0, :cond_1

    .line 924
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextScroller:Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->stopScroll()V

    goto/16 :goto_0

    :cond_e
    move v0, v2

    .line 929
    goto/16 :goto_1

    :cond_f
    move v0, v2

    .line 933
    goto/16 :goto_2

    :cond_10
    move v0, v2

    .line 937
    goto/16 :goto_3

    :cond_11
    move v0, v2

    .line 941
    goto :goto_4

    :cond_12
    move v0, v2

    .line 945
    goto :goto_5

    .line 963
    :cond_13
    :try_start_1
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;

    invoke-interface {v0}, Lcom/caf/fmradio/IFMTransmitterService;->isCallActive()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 964
    const-string v0, "FMTransmitterActivity"

    const-string v2, "call active"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextTV:Landroid/widget/TextView;

    if-eqz v0, :cond_14

    .line 966
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextTV:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 967
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextTV:Landroid/widget/TextView;

    const v2, 0x7f060021

    invoke-virtual {p0, v2}, Lcom/caf/fmradio/FMTransmitterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 969
    :cond_14
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mOnOffButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 970
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mOnOffButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 989
    :catch_0
    move-exception v0

    .line 990
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    .line 973
    :cond_15
    :try_start_2
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextTV:Landroid/widget/TextView;

    if-eqz v0, :cond_16

    .line 974
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextTV:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 976
    :cond_16
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mOnOffButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 977
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mOnOffButton:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_6

    .line 981
    :cond_17
    const-string v0, "FMTransmitterActivity"

    const-string v2, "Service null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextTV:Landroid/widget/TextView;

    if-eqz v0, :cond_18

    .line 983
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextTV:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 985
    :cond_18
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mOnOffButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 986
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mOnOffButton:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    .line 998
    :cond_19
    return-void
.end method

.method private initiateSearchList()V
    .locals 3

    .prologue
    .line 1089
    monitor-enter p0

    .line 1090
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/caf/fmradio/FMTransmitterActivity;->mIsSearching:Z

    .line 1091
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1093
    const/4 v1, 0x0

    :try_start_1
    sput-boolean v1, Lcom/caf/fmradio/FMTransmitterActivity;->mSearchingResultStatus:Z

    .line 1094
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Lcom/caf/fmradio/IFMTransmitterService;->searchWeakStationList(I)Z

    move-result v1

    sput-boolean v1, Lcom/caf/fmradio/FMTransmitterActivity;->mIsSearching:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1098
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->updateSearchProgress()V

    .line 1100
    :cond_0
    monitor-exit p0

    .line 1101
    return-void

    .line 1095
    :catch_0
    move-exception v0

    .line 1096
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1100
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private isFmOn()Z
    .locals 3

    .prologue
    .line 1052
    const/4 v0, 0x0

    .line 1053
    .local v0, bOn:Z
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;

    if-eqz v2, :cond_0

    .line 1055
    :try_start_0
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;

    invoke-interface {v2}, Lcom/caf/fmradio/IFMTransmitterService;->isFmOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1060
    :cond_0
    :goto_0
    return v0

    .line 1056
    :catch_0
    move-exception v1

    .line 1057
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private isHdmiOn()Z
    .locals 3

    .prologue
    .line 469
    :try_start_0
    invoke-virtual {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "HDMI_USEROPTION"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "FMTransmitterActivity"

    const-string v2, "Get HDMI open failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isSearchActive()Z
    .locals 1

    .prologue
    .line 1064
    sget-boolean v0, Lcom/caf/fmradio/FMTransmitterActivity;->mIsSearching:Z

    return v0
.end method

.method private readInternalAntennaAvailable()Z
    .locals 3

    .prologue
    .line 1105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mInternalAntennaAvailable:Z

    .line 1106
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;

    if-eqz v0, :cond_0

    .line 1108
    :try_start_0
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;

    invoke-interface {v0}, Lcom/caf/fmradio/IFMTransmitterService;->isInternalAntennaAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mInternalAntennaAvailable:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1114
    :cond_0
    :goto_0
    const-string v0, "FMTransmitterActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readInternalAntennaAvailable: internalAntenna : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mInternalAntennaAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    iget-boolean v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mInternalAntennaAvailable:Z

    return v0

    .line 1110
    :catch_0
    move-exception v0

    .line 1111
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private registerFMSettingListner()V
    .locals 2

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mFmSettingReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1579
    new-instance v0, Lcom/caf/fmradio/FMTransmitterActivity$26;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMTransmitterActivity$26;-><init>(Lcom/caf/fmradio/FMTransmitterActivity;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mFmSettingReceiver:Landroid/content/BroadcastReceiver;

    .line 1599
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1600
    const-string v1, "com.caf.fmradio.settings.changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1601
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mFmSettingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/caf/fmradio/FMTransmitterActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1603
    :cond_0
    return-void
.end method

.method private resetFMStationInfoUI()V
    .locals 2

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextTV:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1158
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextScroller:Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->stopScroll()V

    .line 1159
    const/4 v0, 0x1

    sput-boolean v0, Lcom/caf/fmradio/FMTransmitterActivity;->mUpdatePickerValue:Z

    .line 1160
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->updateStationInfoToUI()V

    .line 1161
    return-void
.end method

.method private resetSearchProgress()V
    .locals 2

    .prologue
    .line 1020
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1021
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1022
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mSearchProgressHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1023
    return-void
.end method

.method private setHsPluggedInMsg()V
    .locals 2

    .prologue
    .line 830
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextTV:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextTV:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 832
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextTV:Landroid/widget/TextView;

    const v1, 0x7f060020

    invoke-virtual {p0, v1}, Lcom/caf/fmradio/FMTransmitterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 834
    :cond_0
    return-void
.end method

.method private setTurnOnOffButtonImage()V
    .locals 3

    .prologue
    const v2, 0x7f020023

    .line 807
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->isFmOn()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 808
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mOnOffButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 813
    :goto_0
    return-void

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mOnOffButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setupPresetLayout()V
    .locals 3

    .prologue
    .line 1026
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x7

    if-ge v1, v0, :cond_2

    .line 1027
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtons:[Landroid/widget/Button;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 1028
    const-string v0, ""

    .line 1029
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetFrequencies:[I

    aget v0, v0, v1

    .line 1030
    if-eqz v0, :cond_1

    .line 1031
    invoke-static {v0}, Lcom/caf/fmradio/PresetStation;->getFrequencyString(I)Ljava/lang/String;

    move-result-object v0

    .line 1035
    :goto_1
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtons:[Landroid/widget/Button;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1036
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtons:[Landroid/widget/Button;

    aget-object v0, v0, v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1026
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1033
    :cond_1
    const v0, 0x7f06008f

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMTransmitterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1039
    :cond_2
    return-void
.end method

.method private stationExists(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 742
    move v0, v1

    .line 743
    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_2

    .line 744
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetFrequencies:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_1

    .line 745
    const/4 v0, 0x1

    .line 749
    :goto_1
    if-eqz v0, :cond_0

    .line 750
    const v2, 0x7f0600a8

    invoke-virtual {p0, v2}, Lcom/caf/fmradio/FMTransmitterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 751
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 753
    :cond_0
    return v0

    .line 743
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private tuneRadio(I)V
    .locals 2
    .parameter "frequency"

    .prologue
    .line 1146
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;

    if-eqz v1, :cond_0

    .line 1148
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;

    invoke-interface {v1, p1}, Lcom/caf/fmradio/IFMTransmitterService;->tune(I)Z

    .line 1149
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->updateStationInfoToUI()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1154
    :cond_0
    :goto_0
    return-void

    .line 1150
    :catch_0
    move-exception v0

    .line 1151
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private unRegisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 0
    .parameter "myReceiver"

    .prologue
    .line 1606
    if-eqz p1, :cond_0

    .line 1607
    invoke-virtual {p0, p1}, Lcom/caf/fmradio/FMTransmitterActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1608
    const/4 p1, 0x0

    .line 1610
    :cond_0
    return-void
.end method

.method private updateSearchProgress()V
    .locals 3

    .prologue
    .line 1001
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->isSearchActive()Z

    move-result v1

    .line 1002
    .local v1, searchActive:Z
    if-eqz v1, :cond_1

    .line 1003
    monitor-enter p0

    .line 1004
    :try_start_0
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v2, :cond_0

    .line 1005
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/caf/fmradio/FMTransmitterActivity;->showDialog(I)V

    .line 1011
    :goto_0
    monitor-exit p0

    .line 1017
    :goto_1
    return-void

    .line 1007
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1008
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1009
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mSearchProgressHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1011
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1013
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1014
    .restart local v0       #msg:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1015
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mSearchProgressHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method private updateStationInfoToUI()V
    .locals 3

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mTuneStationFrequencyTV:Landroid/widget/TextView;

    sget v1, Lcom/caf/fmradio/FMTransmitterActivity;->mTunedFrequency:I

    invoke-static {v1}, Lcom/caf/fmradio/PresetStation;->getFrequencyString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1043
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/caf/fmradio/FMTransmitterActivity;->mUpdatePickerValue:Z

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    sget v1, Lcom/caf/fmradio/FMTransmitterActivity;->mTunedFrequency:I

    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getLowerLimit()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getFrequencyStepSize()I

    move-result v2

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/caf/fmradio/HorizontalNumberPicker;->setValue(I)V

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextTV:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1048
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->setupPresetLayout()V

    .line 1049
    return-void
.end method


# virtual methods
.method public LoadPreferences()V
    .locals 6

    .prologue
    const v5, 0x17f34

    .line 303
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/caf/fmradio/FMTransmitterActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 304
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "last_tx_frequency"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/caf/fmradio/FMTransmitterActivity;->mTunedFrequency:I

    .line 306
    const/4 v0, 0x0

    .local v0, presetIndex:I
    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_0

    .line 307
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetFrequencies:[I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tx_preset_freq_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v0

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :cond_0
    return-void
.end method

.method public SavePreferences()V
    .locals 5

    .prologue
    .line 289
    const-string v3, "FMTransmitterActivity"

    const-string v4, "Save preferences"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/caf/fmradio/FMTransmitterActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 291
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 293
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "last_tx_frequency"

    sget v4, Lcom/caf/fmradio/FMTransmitterActivity;->mTunedFrequency:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 295
    const/4 v1, 0x0

    .local v1, presetIndex:I
    :goto_0
    const/4 v3, 0x7

    if-ge v1, v3, :cond_0

    .line 296
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tx_preset_freq_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetFrequencies:[I

    aget v4, v4, v1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 300
    return-void
.end method

.method public bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1405
    const-string v0, "FMTransmitterActivity"

    const-string v1, "bindToService: Context with serviceconnection callback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/caf/fmradio/FMTransmitterService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1407
    new-instance v0, Lcom/caf/fmradio/FMTransmitterActivity$ServiceBinder;

    invoke-direct {v0, p0, p2}, Lcom/caf/fmradio/FMTransmitterActivity$ServiceBinder;-><init>(Lcom/caf/fmradio/FMTransmitterActivity;Landroid/content/ServiceConnection;)V

    .line 1408
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/caf/fmradio/FMTransmitterService;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public fmConfigure()V
    .locals 2

    .prologue
    .line 884
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;

    if-eqz v1, :cond_0

    .line 886
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;

    invoke-interface {v1}, Lcom/caf/fmradio/IFMTransmitterService;->fmReconfigure()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 887
    :catch_0
    move-exception v0

    .line 888
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 528
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 529
    const-string v0, "FMTransmitterActivity"

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

    .line 530
    const-string v0, "FMTransmitterActivity"

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

    .line 531
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 532
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 533
    if-eqz p3, :cond_0

    .line 534
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 535
    if-eqz v0, :cond_0

    .line 536
    const-string v1, "com.caf.fmradio.settings.revert_to_defaults"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->RestoreDefaults()V

    .line 538
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioOnOffUI()V

    .line 539
    sget v0, Lcom/caf/fmradio/FMTransmitterActivity;->mTunedFrequency:I

    invoke-direct {p0, v0}, Lcom/caf/fmradio/FMTransmitterActivity;->tuneRadio(I)V

    .line 545
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 158
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 159
    new-instance v3, Lcom/caf/fmradio/FmSharedPreferences;

    invoke-direct {v3, p0}, Lcom/caf/fmradio/FmSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    .line 160
    const-string v3, "FMTransmitterActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate - Height : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - Width  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    sput v3, Lcom/caf/fmradio/FMTransmitterActivity;->mDisplayWidth:I

    .line 166
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 167
    .local v1, outMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 169
    const v3, 0x7f030007

    invoke-virtual {p0, v3}, Lcom/caf/fmradio/FMTransmitterActivity;->setContentView(I)V

    .line 170
    invoke-virtual {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caf/fmradio/FMTransmitterActivity$LoadedDataAndState;

    iput-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->SavedDataAndState:Lcom/caf/fmradio/FMTransmitterActivity$LoadedDataAndState;

    .line 171
    const/high16 v3, 0x7f04

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mAnimation:Landroid/view/animation/Animation;

    .line 173
    const v3, 0x7f090013

    invoke-virtual {p0, v3}, Lcom/caf/fmradio/FMTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/caf/fmradio/HorizontalNumberPicker;

    iput-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    .line 174
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    if-eqz v3, :cond_0

    .line 175
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    sget v4, Lcom/caf/fmradio/FMTransmitterActivity;->mDisplayWidth:I

    div-int/lit8 v4, v4, 0x14

    invoke-virtual {v3, v4}, Lcom/caf/fmradio/HorizontalNumberPicker;->setTextSize(I)V

    .line 176
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    iget v4, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v3, v4}, Lcom/caf/fmradio/HorizontalNumberPicker;->setDensity(I)V

    .line 177
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    new-instance v4, Lcom/caf/fmradio/FMTransmitterActivity$1;

    invoke-direct {v4, p0}, Lcom/caf/fmradio/FMTransmitterActivity$1;-><init>(Lcom/caf/fmradio/FMTransmitterActivity;)V

    invoke-virtual {v3, v4}, Lcom/caf/fmradio/HorizontalNumberPicker;->setOnValueChangedListener(Lcom/caf/fmradio/HorizontalNumberPicker$OnValueChangeListener;)V

    .line 187
    :cond_0
    const v3, 0x7f09000d

    invoke-virtual {p0, v3}, Lcom/caf/fmradio/FMTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mOnOffButton:Landroid/widget/ImageView;

    .line 188
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mOnOffButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 189
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mOnOffButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mTurnOnOffClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    :cond_1
    const v3, 0x7f09002f

    invoke-virtual {p0, v3}, Lcom/caf/fmradio/FMTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mForwardButton:Landroid/widget/ImageView;

    .line 192
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mForwardButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 193
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mForwardButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mForwardClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    :cond_2
    const v3, 0x7f09002d

    invoke-virtual {p0, v3}, Lcom/caf/fmradio/FMTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mBackButton:Landroid/widget/ImageView;

    .line 196
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mBackButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    .line 197
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mBackButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    :cond_3
    iget-object v4, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtons:[Landroid/widget/Button;

    const v3, 0x7f090015

    invoke-virtual {p0, v3}, Lcom/caf/fmradio/FMTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    aput-object v3, v4, v6

    .line 202
    iget-object v4, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtons:[Landroid/widget/Button;

    const/4 v5, 0x1

    const v3, 0x7f090016

    invoke-virtual {p0, v3}, Lcom/caf/fmradio/FMTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    aput-object v3, v4, v5

    .line 203
    iget-object v4, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtons:[Landroid/widget/Button;

    const/4 v5, 0x2

    const v3, 0x7f090017

    invoke-virtual {p0, v3}, Lcom/caf/fmradio/FMTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    aput-object v3, v4, v5

    .line 204
    iget-object v4, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtons:[Landroid/widget/Button;

    const/4 v5, 0x3

    const v3, 0x7f090018

    invoke-virtual {p0, v3}, Lcom/caf/fmradio/FMTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    aput-object v3, v4, v5

    .line 205
    iget-object v4, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtons:[Landroid/widget/Button;

    const/4 v5, 0x4

    const v3, 0x7f090019

    invoke-virtual {p0, v3}, Lcom/caf/fmradio/FMTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    aput-object v3, v4, v5

    .line 206
    iget-object v4, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtons:[Landroid/widget/Button;

    const/4 v5, 0x5

    const v3, 0x7f09001a

    invoke-virtual {p0, v3}, Lcom/caf/fmradio/FMTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    aput-object v3, v4, v5

    .line 207
    iget-object v4, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtons:[Landroid/widget/Button;

    const/4 v5, 0x6

    const v3, 0x7f09001b

    invoke-virtual {p0, v3}, Lcom/caf/fmradio/FMTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    aput-object v3, v4, v5

    .line 208
    const/4 v0, 0x0

    .local v0, nButton:I
    :goto_0
    const/4 v3, 0x7

    if-ge v0, v3, :cond_5

    .line 209
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtons:[Landroid/widget/Button;

    aget-object v3, v3, v0

    if-eqz v3, :cond_4

    .line 210
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtons:[Landroid/widget/Button;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtons:[Landroid/widget/Button;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtonOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 208
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_5
    const v3, 0x7f09002b

    invoke-virtual {p0, v3}, Lcom/caf/fmradio/FMTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mTransmitStaticMsgTV:Landroid/widget/TextView;

    .line 218
    const v3, 0x7f060091

    invoke-virtual {p0, v3}, Lcom/caf/fmradio/FMTransmitterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, str:Ljava/lang/String;
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPSData:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 220
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPSData:Ljava/lang/String;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 222
    :cond_6
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mTransmitStaticMsgTV:Landroid/widget/TextView;

    if-eqz v3, :cond_7

    .line 223
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mTransmitStaticMsgTV:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    :cond_7
    const v3, 0x7f09002e

    invoke-virtual {p0, v3}, Lcom/caf/fmradio/FMTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mTuneStationFrequencyTV:Landroid/widget/TextView;

    .line 227
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mTuneStationFrequencyTV:Landroid/widget/TextView;

    if-eqz v3, :cond_8

    .line 228
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mTuneStationFrequencyTV:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mFrequencyViewClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 231
    :cond_8
    const v3, 0x7f090031

    invoke-virtual {p0, v3}, Lcom/caf/fmradio/FMTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextTV:Landroid/widget/TextView;

    .line 233
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextScroller:Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextTV:Landroid/widget/TextView;

    if-eqz v3, :cond_9

    .line 234
    new-instance v3, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;

    iget-object v4, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextTV:Landroid/widget/TextView;

    invoke-direct {v3, p0, v4}, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;-><init>(Lcom/caf/fmradio/FMTransmitterActivity;Landroid/widget/TextView;)V

    iput-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextScroller:Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;

    .line 237
    :cond_9
    invoke-direct {p0, v6}, Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioOnOffUI(Z)V

    .line 239
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->isHdmiOn()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 240
    const/16 v3, 0xe

    invoke-virtual {p0, v3}, Lcom/caf/fmradio/FMTransmitterActivity;->showDialog(I)V

    .line 249
    :goto_1
    return-void

    .line 242
    :cond_a
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->osc:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p0, v3}, Lcom/caf/fmradio/FMTransmitterActivity;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 243
    const-string v3, "FMTransmitterActivity"

    const-string v4, "onCreate: Failed to Start Service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_2
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->registerFMSettingListner()V

    goto :goto_1

    .line 245
    :cond_b
    const-string v3, "FMTransmitterActivity"

    const-string v4, "onCreate: Start Service completed successfully"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 479
    packed-switch p1, :pswitch_data_0

    .line 497
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 481
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/caf/fmradio/FMTransmitterActivity;->createPresetListAutoSelectWarnDlg(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0

    .line 484
    :pswitch_2
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getFMConfiguration()Lqcom/fmradio/FmConfig;

    move-result-object v0

    .line 485
    .local v0, fmConfig:Lqcom/fmradio/FmConfig;
    new-instance v1, Lcom/caf/utils/FrequencyPickerDialog;

    sget v2, Lcom/caf/fmradio/FMTransmitterActivity;->mTunedFrequency:I

    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mFrequencyChangeListener:Lcom/caf/utils/FrequencyPickerDialog$OnFrequencySetListener;

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/caf/utils/FrequencyPickerDialog;-><init>(Landroid/content/Context;Lqcom/fmradio/FmConfig;ILcom/caf/utils/FrequencyPickerDialog$OnFrequencySetListener;)V

    goto :goto_0

    .line 489
    .end local v0           #fmConfig:Lqcom/fmradio/FmConfig;
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/caf/fmradio/FMTransmitterActivity;->createProgressDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0

    .line 492
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/caf/fmradio/FMTransmitterActivity;->createPresetOptionsDlg(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0

    .line 479
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const v7, 0x7f020028

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 398
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 400
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->isFmOn()Z

    move-result v1

    .line 401
    .local v1, radioOn:Z
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->isSearchActive()Z

    move-result v2

    .line 403
    .local v2, searchActive:Z
    const/4 v3, 0x2

    const v6, 0x7f06006b

    invoke-interface {p1, v5, v3, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 405
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 406
    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    move v3, v4

    :goto_0
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 408
    :cond_0
    const/4 v3, 0x3

    const v6, 0x7f060015

    invoke-interface {p1, v5, v3, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 410
    if-eqz v0, :cond_1

    .line 411
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    move v3, v4

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 415
    :cond_1
    const/4 v3, 0x4

    const v6, 0x7f060004

    invoke-interface {p1, v5, v3, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v5, 0x1080049

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 418
    return v4

    :cond_2
    move v3, v5

    .line 406
    goto :goto_0

    :cond_3
    move v3, v5

    .line 411
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 359
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 360
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 361
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 363
    iput-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mSearchProgressHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mSearchProgressHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 368
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMTransmitterActivity;->removeDialog(I)V

    .line 369
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mFmSettingReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/caf/fmradio/FMTransmitterActivity;->unRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 370
    invoke-virtual {p0, p0}, Lcom/caf/fmradio/FMTransmitterActivity;->unbindFromService(Landroid/content/Context;)V

    .line 371
    iput-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;

    .line 372
    const-string v0, "FMTransmitterActivity"

    const-string v1, "onDestroy: unbindFromService completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 442
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 463
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 444
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/caf/fmradio/Settings;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 446
    const-string v2, "rx_mode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 447
    invoke-virtual {p0, v1, v0}, Lcom/caf/fmradio/FMTransmitterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 453
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMTransmitterActivity;->showDialog(I)V

    goto :goto_0

    .line 457
    :pswitch_2
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->cancelSearch()V

    goto :goto_0

    .line 442
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 279
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 280
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextScroller:Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;

    invoke-virtual {v0}, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->stopScroll()V

    .line 281
    invoke-virtual {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->SavePreferences()V

    .line 282
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 502
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 503
    packed-switch p1, :pswitch_data_0

    .line 524
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 505
    .restart local p2
    :pswitch_0
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getFMConfiguration()Lqcom/fmradio/FmConfig;

    move-result-object v1

    .local v1, fmConfig:Lqcom/fmradio/FmConfig;
    move-object v3, p2

    .line 506
    check-cast v3, Lcom/caf/utils/FrequencyPickerDialog;

    invoke-virtual {v1}, Lqcom/fmradio/FmConfig;->getChSpacing()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/caf/utils/FrequencyPickerDialog;->updateSteps(I)V

    move-object v3, p2

    .line 507
    check-cast v3, Lcom/caf/utils/FrequencyPickerDialog;

    invoke-virtual {v1}, Lqcom/fmradio/FmConfig;->getLowerLimit()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/caf/utils/FrequencyPickerDialog;->updateMinFreq(I)V

    move-object v3, p2

    .line 508
    check-cast v3, Lcom/caf/utils/FrequencyPickerDialog;

    invoke-virtual {v1}, Lqcom/fmradio/FmConfig;->getUpperLimit()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/caf/utils/FrequencyPickerDialog;->updateMaxFreq(I)V

    .line 509
    check-cast p2, Lcom/caf/utils/FrequencyPickerDialog;

    .end local p2
    sget v3, Lcom/caf/fmradio/FMTransmitterActivity;->mTunedFrequency:I

    invoke-virtual {p2, v3}, Lcom/caf/utils/FrequencyPickerDialog;->UpdateFrequency(I)V

    goto :goto_0

    .end local v1           #fmConfig:Lqcom/fmradio/FmConfig;
    .restart local p2
    :pswitch_1
    move-object v0, p2

    .line 513
    check-cast v0, Landroid/app/AlertDialog;

    .line 514
    .local v0, alertDlg:Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    iget v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtonIndex:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtonIndex:I

    const/4 v4, 0x7

    if-gt v3, v4, :cond_0

    .line 516
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetFrequencies:[I

    iget v4, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPresetButtonIndex:I

    aget v2, v3, v4

    .line 517
    .local v2, frequency:I
    invoke-static {v2}, Lcom/caf/fmradio/PresetStation;->getFrequencyString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 503
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 423
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 426
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->isFmOn()Z

    move-result v1

    .line 427
    .local v1, radioOn:Z
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->isSearchActive()Z

    move-result v2

    .line 429
    .local v2, searchActive:Z
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 430
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 431
    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    move v3, v4

    :goto_0
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 433
    :cond_0
    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 434
    if-eqz v0, :cond_2

    .line 435
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    move v5, v4

    :cond_1
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 437
    :cond_2
    return v4

    :cond_3
    move v3, v5

    .line 431
    goto :goto_0
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 253
    const-string v0, "FMTransmitterActivity"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 255
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 345
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 346
    const-string v0, "FMTransmitterActivity"

    const-string v1, "Resuming"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->LoadPreferences()V

    .line 348
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->setDisplayvalue()V

    .line 351
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/caf/fmradio/FMTransmitterActivity;->mUpdatePickerValue:Z

    .line 352
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mUpdateRadioText:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 353
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->updateStationInfoToUI()V

    .line 354
    invoke-direct {p0}, Lcom/caf/fmradio/FMTransmitterActivity;->enableRadioOnOffUI()V

    .line 355
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 382
    new-instance v0, Lcom/caf/fmradio/FMTransmitterActivity$LoadedDataAndState;

    invoke-direct {v0}, Lcom/caf/fmradio/FMTransmitterActivity$LoadedDataAndState;-><init>()V

    .line 383
    .local v0, data:Lcom/caf/fmradio/FMTransmitterActivity$LoadedDataAndState;
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;

    if-eqz v2, :cond_0

    .line 385
    :try_start_0
    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;

    invoke-interface {v2}, Lcom/caf/fmradio/IFMTransmitterService;->isFmOn()Z

    move-result v2

    iput-boolean v2, v0, Lcom/caf/fmradio/FMTransmitterActivity$LoadedDataAndState;->onOrOff:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_0
    return-object v0

    .line 386
    :catch_0
    move-exception v1

    .line 387
    .local v1, e:Landroid/os/RemoteException;
    iput-boolean v3, v0, Lcom/caf/fmradio/FMTransmitterActivity$LoadedDataAndState;->onOrOff:Z

    .line 388
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 391
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iput-boolean v3, v0, Lcom/caf/fmradio/FMTransmitterActivity$LoadedDataAndState;->onOrOff:Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 265
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 266
    const-string v1, "FMTransmitterActivity"

    const-string v2, "onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;

    iget-object v2, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mServiceCallbacks:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks$Stub;

    invoke-interface {v1, v2}, Lcom/caf/fmradio/IFMTransmitterService;->registerCallbacks(Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 259
    const-string v0, "FMTransmitterActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 261
    return-void
.end method

.method protected setDisplayvalue()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 314
    iget-object v6, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getUpperLimit()I

    move-result v3

    .line 315
    .local v3, max:I
    iget-object v6, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getLowerLimit()I

    move-result v4

    .line 316
    .local v4, min:I
    iget-object v6, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getFrequencyStepSize()I

    move-result v5

    .line 318
    .local v5, step:I
    iget-object v6, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    if-nez v6, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    sparse-switch v5, :sswitch_data_0

    .line 332
    :goto_1
    sub-int v6, v3, v4

    div-int v0, v6, v5

    .line 333
    .local v0, channels:I
    add-int/lit8 v6, v0, 0x1

    new-array v1, v6, [Ljava/lang/String;

    .line 334
    .local v1, displayValues:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v6, v1

    if-ge v2, v6, :cond_2

    .line 335
    mul-int v6, v2, v5

    add-int/2addr v6, v4

    int-to-float v6, v6

    const/high16 v7, 0x447a

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    .line 334
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 323
    .end local v0           #channels:I
    .end local v1           #displayValues:[Ljava/lang/String;
    .end local v2           #i:I
    :sswitch_0
    iget-object v6, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    sget-object v7, Lcom/caf/fmradio/HorizontalNumberPicker$Scale;->SCALE_SMALL:Lcom/caf/fmradio/HorizontalNumberPicker$Scale;

    invoke-virtual {v6, v7}, Lcom/caf/fmradio/HorizontalNumberPicker;->setScale(Lcom/caf/fmradio/HorizontalNumberPicker$Scale;)V

    goto :goto_1

    .line 326
    :sswitch_1
    iget-object v6, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    sget-object v7, Lcom/caf/fmradio/HorizontalNumberPicker$Scale;->SCALE_MEDIUM:Lcom/caf/fmradio/HorizontalNumberPicker$Scale;

    invoke-virtual {v6, v7}, Lcom/caf/fmradio/HorizontalNumberPicker;->setScale(Lcom/caf/fmradio/HorizontalNumberPicker$Scale;)V

    goto :goto_1

    .line 329
    :sswitch_2
    iget-object v6, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    sget-object v7, Lcom/caf/fmradio/HorizontalNumberPicker$Scale;->SCALE_LARGE:Lcom/caf/fmradio/HorizontalNumberPicker$Scale;

    invoke-virtual {v6, v7}, Lcom/caf/fmradio/HorizontalNumberPicker;->setScale(Lcom/caf/fmradio/HorizontalNumberPicker$Scale;)V

    goto :goto_1

    .line 337
    .restart local v0       #channels:I
    .restart local v1       #displayValues:[Ljava/lang/String;
    .restart local v2       #i:I
    :cond_2
    iget-object v6, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    if-eqz v6, :cond_0

    .line 338
    iget-object v6, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    invoke-virtual {v6, v1, v8}, Lcom/caf/fmradio/HorizontalNumberPicker;->setDisplayedValues([Ljava/lang/String;Z)V

    .line 339
    iget-object v6, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    invoke-virtual {v6, v8}, Lcom/caf/fmradio/HorizontalNumberPicker;->setWrapSelectorWheel(Z)V

    .line 340
    iget-object v6, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPicker:Lcom/caf/fmradio/HorizontalNumberPicker;

    invoke-virtual {v6}, Lcom/caf/fmradio/HorizontalNumberPicker;->invalidate()V

    goto :goto_0

    .line 321
    nop

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
    .line 1414
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMTransmitterActivity$ServiceBinder;

    .line 1415
    const-string v1, "FMTransmitterActivity"

    const-string v2, "unbindFromService: Context"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    if-nez v0, :cond_1

    .line 1417
    const-string v0, "FMTransmitterActivity"

    const-string v1, "Trying to unbind for unknown Context"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :cond_0
    :goto_0
    return-void

    .line 1420
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1421
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1425
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->sService:Lcom/caf/fmradio/IFMTransmitterService;

    goto :goto_0
.end method

.method protected valueToFrequency(I)I
    .locals 2
    .parameter "value"

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getLowerLimit()I

    move-result v0

    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getFrequencyStepSize()I

    move-result v1

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mFrequency:I

    .line 1263
    iget v0, p0, Lcom/caf/fmradio/FMTransmitterActivity;->mFrequency:I

    return v0
.end method
