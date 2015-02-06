.class public Lcom/caf/fmradio/FMStats;
.super Landroid/app/Activity;
.source "FMStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caf/fmradio/FMStats$BandSweepMthdsSelectedListener;,
        Lcom/caf/fmradio/FMStats$ServiceBinder;,
        Lcom/caf/fmradio/FMStats$FmRfItemSelectedListener;,
        Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;,
        Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;,
        Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;,
        Lcom/caf/fmradio/FMStats$Result;,
        Lcom/caf/fmradio/FMStats$Band;
    }
.end annotation


# static fields
.field private static LOGTAG:Ljava/lang/String;

.field private static mIsTransportSMD:Z

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;

.field private static final sTimeArgs:[Ljava/lang/Object;


# instance fields
.field Auto:I

.field private final FREQ_LIST_FILE_NAME:Ljava/lang/String;

.field Lo:I

.field RunButton:Landroid/widget/Button;

.field adaptCfgRf:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field adaptFmRf:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field adaptRfCfg:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field bandSweepMthds:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field bandSweepSettingButton:Landroid/widget/TextView;

.field button1:Landroid/widget/Button;

.field button2:Landroid/widget/Button;

.field private curSweepMthd:I

.field private doRecordProcessing:Ljava/lang/Runnable;

.field private getFileSweepResults:Ljava/lang/Runnable;

.field private getManualSweepResults:Ljava/lang/Runnable;

.field private getMultipleResults:Ljava/lang/Runnable;

.field private mBand:Lcom/caf/fmradio/FMStats$Band;

.field private mBandSweepDelayExprdListener:Landroid/content/BroadcastReceiver;

.field private mBandSweepDwellExprdListener:Landroid/content/BroadcastReceiver;

.field private mClicktBandSweepSettingListener:Landroid/view/View$OnClickListener;

.field mColumnHeader:Lcom/caf/fmradio/FMStats$Result;

.field private mCurrentFileName:Ljava/lang/String;

.field private mFileCursor:Ljava/io/FileOutputStream;

.field private mHandler:Landroid/os/Handler;

.field mIsSearching:Z

.field private mMultiUpdateThread:Ljava/lang/Thread;

.field private mNewRowIds:I

.field private mNextFreqInterface:Lcom/caf/fmradio/GetNextFreqInterface;

.field private mOnRunListener:Landroid/view/View$OnClickListener;

.field private mOnSetAfJmpRmssiSmplsCntListener:Landroid/view/View$OnClickListener;

.field private mOnSetAfJmpRmssiThListener:Landroid/view/View$OnClickListener;

.field private mOnSetCFOMeanThListener:Landroid/view/View$OnClickListener;

.field private mOnSetGdChRmssiThListener:Landroid/view/View$OnClickListener;

.field private mOnSetIntfHighThListener:Landroid/view/View$OnClickListener;

.field private mOnSetIntfLowThListener:Landroid/view/View$OnClickListener;

.field private mOnSetRmssiFirstStageListener:Landroid/view/View$OnClickListener;

.field private mOnSetRmssitListener:Landroid/view/View$OnClickListener;

.field private mOnSetRxRePeatCount:Landroid/view/View$OnClickListener;

.field private mOnSetSearchMPXDCCListener:Landroid/view/View$OnClickListener;

.field private mOnSetSearchSinrIntfListener:Landroid/view/View$OnClickListener;

.field private mOnSetSigThListener:Landroid/view/View$OnClickListener;

.field private mOnSetSinrFirstStageListener:Landroid/view/View$OnClickListener;

.field private mOnSetSinrSmplCntListener:Landroid/view/View$OnClickListener;

.field private mOnSetSinrThListener:Landroid/view/View$OnClickListener;

.field private mReceiver:Lqcom/fmradio/FmReceiver;

.field private mRecordUpdateHandlerThread:Ljava/lang/Thread;

.field mRecording:Z

.field private mService:Lcom/caf/fmradio/IFMRadioService;

.field private mServiceCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;

.field mSpinCfgRfListener1:Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;

.field mSpinCfgRfListener2:Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;

.field mSpinFmRfListener:Lcom/caf/fmradio/FMStats$FmRfItemSelectedListener;

.field mSpinRfCfgListener:Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;

.field private mStopIds:I

.field mSweepMthdsListener:Lcom/caf/fmradio/FMStats$BandSweepMthdsSelectedListener;

.field private mSync:Lcom/caf/fmradio/FMStats$Band;

.field mTestRunning:Z

.field mTestSelected:I

.field private mTuneComplete:Ljava/lang/Runnable;

.field private mUIUpdateHandlerHandler:Landroid/os/Handler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private osc:Landroid/content/ServiceConnection;

.field pbar:Landroid/widget/ProgressBar;

.field private prevDelayTime:I

.field private prevDwellTime:I

.field private prevSweepMthd:I

.field private sConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/caf/fmradio/FMStats$ServiceBinder;",
            ">;"
        }
    .end annotation
.end field

.field public sService:Lcom/caf/fmradio/IFMRadioService;

.field spinOptionBandSweepMthds:Landroid/widget/Spinner;

.field spinOptionFmRf:Landroid/widget/Spinner;

.field tLayout:Landroid/widget/TableLayout;

.field tv1:Landroid/widget/TextView;

.field txtbox1:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 180
    const-string v0, "FMStats"

    sput-object v0, Lcom/caf/fmradio/FMStats;->LOGTAG:Ljava/lang/String;

    .line 211
    const/4 v0, 0x0

    sput-boolean v0, Lcom/caf/fmradio/FMStats;->mIsTransportSMD:Z

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/caf/fmradio/FMStats;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 245
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/caf/fmradio/FMStats;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/caf/fmradio/FMStats;->sFormatter:Ljava/util/Formatter;

    .line 247
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/caf/fmradio/FMStats;->sTimeArgs:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 166
    new-instance v0, Lcom/caf/fmradio/FMStats$Result;

    invoke-direct {v0, p0, v1}, Lcom/caf/fmradio/FMStats$Result;-><init>(Lcom/caf/fmradio/FMStats;Lcom/caf/fmradio/FMStats$1;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mColumnHeader:Lcom/caf/fmradio/FMStats$Result;

    .line 168
    iput-boolean v2, p0, Lcom/caf/fmradio/FMStats;->mTestRunning:Z

    .line 169
    new-instance v0, Lcom/caf/fmradio/FMStats$FmRfItemSelectedListener;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMStats$FmRfItemSelectedListener;-><init>(Lcom/caf/fmradio/FMStats;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mSpinFmRfListener:Lcom/caf/fmradio/FMStats$FmRfItemSelectedListener;

    .line 171
    new-instance v0, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;-><init>(Lcom/caf/fmradio/FMStats;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mSpinRfCfgListener:Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;

    .line 173
    iput-object v1, p0, Lcom/caf/fmradio/FMStats;->mSpinCfgRfListener1:Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;

    .line 174
    iput-object v1, p0, Lcom/caf/fmradio/FMStats;->mSpinCfgRfListener2:Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;

    .line 175
    new-instance v0, Lcom/caf/fmradio/FMStats$BandSweepMthdsSelectedListener;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMStats$BandSweepMthdsSelectedListener;-><init>(Lcom/caf/fmradio/FMStats;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mSweepMthdsListener:Lcom/caf/fmradio/FMStats$BandSweepMthdsSelectedListener;

    .line 178
    iput v2, p0, Lcom/caf/fmradio/FMStats;->mTestSelected:I

    .line 179
    iput-boolean v2, p0, Lcom/caf/fmradio/FMStats;->mIsSearching:Z

    .line 181
    iput-object v1, p0, Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;

    .line 182
    iput-object v1, p0, Lcom/caf/fmradio/FMStats;->mMultiUpdateThread:Ljava/lang/Thread;

    .line 189
    const/16 v0, 0xc8

    iput v0, p0, Lcom/caf/fmradio/FMStats;->mStopIds:I

    .line 190
    const/16 v0, 0x12c

    iput v0, p0, Lcom/caf/fmradio/FMStats;->mNewRowIds:I

    .line 197
    iput-object v1, p0, Lcom/caf/fmradio/FMStats;->mBand:Lcom/caf/fmradio/FMStats$Band;

    .line 198
    iput-object v1, p0, Lcom/caf/fmradio/FMStats;->mSync:Lcom/caf/fmradio/FMStats$Band;

    .line 199
    const/4 v0, 0x1

    iput v0, p0, Lcom/caf/fmradio/FMStats;->Lo:I

    iput v2, p0, Lcom/caf/fmradio/FMStats;->Auto:I

    .line 201
    iput-object v1, p0, Lcom/caf/fmradio/FMStats;->mFileCursor:Ljava/io/FileOutputStream;

    .line 202
    iput-object v1, p0, Lcom/caf/fmradio/FMStats;->mCurrentFileName:Ljava/lang/String;

    .line 234
    const/4 v0, 0x2

    iput v0, p0, Lcom/caf/fmradio/FMStats;->prevDwellTime:I

    .line 235
    iput v2, p0, Lcom/caf/fmradio/FMStats;->prevDelayTime:I

    .line 236
    iput v2, p0, Lcom/caf/fmradio/FMStats;->prevSweepMthd:I

    .line 238
    iput v2, p0, Lcom/caf/fmradio/FMStats;->curSweepMthd:I

    .line 240
    iput-object v1, p0, Lcom/caf/fmradio/FMStats;->mRecordUpdateHandlerThread:Ljava/lang/Thread;

    .line 241
    iput-boolean v2, p0, Lcom/caf/fmradio/FMStats;->mRecording:Z

    .line 249
    const-string v0, "/freq_list_comma_separated.txt"

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->FREQ_LIST_FILE_NAME:Ljava/lang/String;

    .line 253
    iput-object v1, p0, Lcom/caf/fmradio/FMStats;->mBandSweepDelayExprdListener:Landroid/content/BroadcastReceiver;

    .line 254
    iput-object v1, p0, Lcom/caf/fmradio/FMStats;->mBandSweepDwellExprdListener:Landroid/content/BroadcastReceiver;

    .line 400
    new-instance v0, Lcom/caf/fmradio/FMStats$1;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMStats$1;-><init>(Lcom/caf/fmradio/FMStats;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mOnRunListener:Landroid/view/View$OnClickListener;

    .line 517
    new-instance v0, Lcom/caf/fmradio/FMStats$2;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMStats$2;-><init>(Lcom/caf/fmradio/FMStats;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mOnSetRmssitListener:Landroid/view/View$OnClickListener;

    .line 535
    new-instance v0, Lcom/caf/fmradio/FMStats$3;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMStats$3;-><init>(Lcom/caf/fmradio/FMStats;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mOnSetRxRePeatCount:Landroid/view/View$OnClickListener;

    .line 559
    new-instance v0, Lcom/caf/fmradio/FMStats$4;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMStats$4;-><init>(Lcom/caf/fmradio/FMStats;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mOnSetSigThListener:Landroid/view/View$OnClickListener;

    .line 577
    new-instance v0, Lcom/caf/fmradio/FMStats$5;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMStats$5;-><init>(Lcom/caf/fmradio/FMStats;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mOnSetSinrSmplCntListener:Landroid/view/View$OnClickListener;

    .line 599
    new-instance v0, Lcom/caf/fmradio/FMStats$6;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMStats$6;-><init>(Lcom/caf/fmradio/FMStats;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mOnSetSinrThListener:Landroid/view/View$OnClickListener;

    .line 621
    new-instance v0, Lcom/caf/fmradio/FMStats$7;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMStats$7;-><init>(Lcom/caf/fmradio/FMStats;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mOnSetIntfLowThListener:Landroid/view/View$OnClickListener;

    .line 642
    new-instance v0, Lcom/caf/fmradio/FMStats$8;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMStats$8;-><init>(Lcom/caf/fmradio/FMStats;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mOnSetIntfHighThListener:Landroid/view/View$OnClickListener;

    .line 664
    new-instance v0, Lcom/caf/fmradio/FMStats$9;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMStats$9;-><init>(Lcom/caf/fmradio/FMStats;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mOnSetSinrFirstStageListener:Landroid/view/View$OnClickListener;

    .line 689
    new-instance v0, Lcom/caf/fmradio/FMStats$10;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMStats$10;-><init>(Lcom/caf/fmradio/FMStats;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mOnSetRmssiFirstStageListener:Landroid/view/View$OnClickListener;

    .line 714
    new-instance v0, Lcom/caf/fmradio/FMStats$11;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMStats$11;-><init>(Lcom/caf/fmradio/FMStats;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mOnSetCFOMeanThListener:Landroid/view/View$OnClickListener;

    .line 739
    new-instance v0, Lcom/caf/fmradio/FMStats$12;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMStats$12;-><init>(Lcom/caf/fmradio/FMStats;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mOnSetSearchMPXDCCListener:Landroid/view/View$OnClickListener;

    .line 753
    new-instance v0, Lcom/caf/fmradio/FMStats$13;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMStats$13;-><init>(Lcom/caf/fmradio/FMStats;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mOnSetSearchSinrIntfListener:Landroid/view/View$OnClickListener;

    .line 767
    new-instance v0, Lcom/caf/fmradio/FMStats$14;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMStats$14;-><init>(Lcom/caf/fmradio/FMStats;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mOnSetAfJmpRmssiThListener:Landroid/view/View$OnClickListener;

    .line 792
    new-instance v0, Lcom/caf/fmradio/FMStats$15;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMStats$15;-><init>(Lcom/caf/fmradio/FMStats;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mOnSetGdChRmssiThListener:Landroid/view/View$OnClickListener;

    .line 817
    new-instance v0, Lcom/caf/fmradio/FMStats$16;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMStats$16;-><init>(Lcom/caf/fmradio/FMStats;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mOnSetAfJmpRmssiSmplsCntListener:Landroid/view/View$OnClickListener;

    .line 1709
    new-instance v0, Lcom/caf/fmradio/FMStats$17;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMStats$17;-><init>(Lcom/caf/fmradio/FMStats;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->getMultipleResults:Ljava/lang/Runnable;

    .line 1755
    new-instance v0, Lcom/caf/fmradio/FMStats$18;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMStats$18;-><init>(Lcom/caf/fmradio/FMStats;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->getManualSweepResults:Ljava/lang/Runnable;

    .line 1798
    new-instance v0, Lcom/caf/fmradio/FMStats$19;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMStats$19;-><init>(Lcom/caf/fmradio/FMStats;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->getFileSweepResults:Ljava/lang/Runnable;

    .line 1954
    new-instance v0, Lcom/caf/fmradio/FMStats$20;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMStats$20;-><init>(Lcom/caf/fmradio/FMStats;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mUIUpdateHandlerHandler:Landroid/os/Handler;

    .line 1981
    iput-object v1, p0, Lcom/caf/fmradio/FMStats;->sService:Lcom/caf/fmradio/IFMRadioService;

    .line 1982
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->sConnectionMap:Ljava/util/HashMap;

    .line 2041
    new-instance v0, Lcom/caf/fmradio/FMStats$21;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMStats$21;-><init>(Lcom/caf/fmradio/FMStats;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->osc:Landroid/content/ServiceConnection;

    .line 2070
    new-instance v0, Lcom/caf/fmradio/FMStats$22;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMStats$22;-><init>(Lcom/caf/fmradio/FMStats;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mServiceCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;

    .line 2168
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mHandler:Landroid/os/Handler;

    .line 2170
    new-instance v0, Lcom/caf/fmradio/FMStats$23;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMStats$23;-><init>(Lcom/caf/fmradio/FMStats;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mTuneComplete:Ljava/lang/Runnable;

    .line 2277
    new-instance v0, Lcom/caf/fmradio/FMStats$26;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMStats$26;-><init>(Lcom/caf/fmradio/FMStats;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mClicktBandSweepSettingListener:Landroid/view/View$OnClickListener;

    .line 2515
    new-instance v0, Lcom/caf/fmradio/FMStats$29;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMStats$29;-><init>(Lcom/caf/fmradio/FMStats;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->doRecordProcessing:Ljava/lang/Runnable;

    return-void
.end method

.method private GetFMStatsForFreq(I)Lcom/caf/fmradio/FMStats$Result;
    .locals 6
    .parameter

    .prologue
    const v5, 0x7fffffff

    const/4 v0, 0x0

    .line 1872
    new-instance v1, Lcom/caf/fmradio/FMStats$Result;

    invoke-direct {v1, p0, v0}, Lcom/caf/fmradio/FMStats$Result;-><init>(Lcom/caf/fmradio/FMStats;Lcom/caf/fmradio/FMStats$1;)V

    .line 1873
    sget-object v2, Lcom/caf/fmradio/FMStats;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "freq is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/caf/fmradio/FMStats$Result;->setFreq(Ljava/lang/String;)V

    .line 1881
    iget-object v2, p0, Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-eqz v2, :cond_0

    .line 1883
    :try_start_0
    iget-object v2, p0, Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v2}, Lcom/caf/fmradio/IFMRadioService;->getRssi()I

    move-result v2

    .line 1884
    if-eq v2, v5, :cond_0

    .line 1885
    int-to-byte v2, v2

    .line 1886
    invoke-static {v2}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/caf/fmradio/FMStats$Result;->setRSSI(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1897
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v2}, Lcom/caf/fmradio/IFMRadioService;->getIoC()I

    move-result v2

    .line 1898
    if-eq v2, v5, :cond_0

    .line 1899
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/caf/fmradio/FMStats$Result;->setIoC(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1908
    :goto_1
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->isTransportLayerSMD()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1910
    :try_start_2
    iget-object v2, p0, Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v2}, Lcom/caf/fmradio/IFMRadioService;->getSINR()I

    move-result v2

    .line 1911
    if-eq v2, v5, :cond_0

    .line 1912
    int-to-byte v2, v2

    .line 1913
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/caf/fmradio/FMStats$Result;->setSINR(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 1937
    :goto_2
    :try_start_3
    iget-object v2, p0, Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v2}, Lcom/caf/fmradio/IFMRadioService;->getIntDet()I

    move-result v2

    .line 1938
    if-eq v2, v5, :cond_0

    .line 1939
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/caf/fmradio/FMStats$Result;->setIntDet(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    :goto_3
    move-object v0, v1

    .line 1950
    :cond_0
    return-object v0

    .line 1890
    :catch_0
    move-exception v2

    .line 1891
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1892
    :catch_1
    move-exception v2

    .line 1893
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1902
    :catch_2
    move-exception v2

    .line 1903
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1904
    :catch_3
    move-exception v2

    .line 1905
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1917
    :catch_4
    move-exception v2

    .line 1918
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 1919
    :catch_5
    move-exception v2

    .line 1920
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1924
    :cond_1
    :try_start_4
    iget-object v2, p0, Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v2}, Lcom/caf/fmradio/IFMRadioService;->getMpxDcc()I

    move-result v2

    .line 1925
    if-eq v2, v5, :cond_0

    .line 1926
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/caf/fmradio/FMStats$Result;->setMpxDcc(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_2

    .line 1929
    :catch_6
    move-exception v2

    .line 1930
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 1931
    :catch_7
    move-exception v2

    .line 1932
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1942
    :catch_8
    move-exception v0

    .line 1943
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 1944
    :catch_9
    move-exception v0

    .line 1945
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private ResumeBandSweep()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2381
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mMultiUpdateThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mMultiUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1

    .line 2383
    :cond_0
    iget v0, p0, Lcom/caf/fmradio/FMStats;->prevSweepMthd:I

    if-nez v0, :cond_3

    .line 2384
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->getManualSweepResults:Ljava/lang/Runnable;

    const-string v2, "MultiResultsThread"

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mMultiUpdateThread:Ljava/lang/Thread;

    .line 2393
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mMultiUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_2

    .line 2394
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mMultiUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2396
    :cond_2
    return-void

    .line 2387
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->getFileSweepResults:Ljava/lang/Runnable;

    const-string v2, "MultiResultsThread"

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mMultiUpdateThread:Ljava/lang/Thread;

    goto :goto_0
.end method

.method private SetButtonState(Z)V
    .locals 4
    .parameter "state"

    .prologue
    .line 444
    const v2, 0x7f09001e

    invoke-virtual {p0, v2}, Lcom/caf/fmradio/FMStats;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 445
    .local v0, RunButton:Landroid/widget/Button;
    const v2, 0x7f090020

    invoke-virtual {p0, v2}, Lcom/caf/fmradio/FMStats;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 448
    .local v1, pbar:Landroid/widget/ProgressBar;
    if-eqz p1, :cond_3

    .line 449
    if-eqz v0, :cond_0

    .line 450
    const v2, 0x7f060097

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 452
    :cond_0
    if-eqz v1, :cond_1

    .line 453
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 455
    :cond_1
    iget v2, p0, Lcom/caf/fmradio/FMStats;->mTestSelected:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 456
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->enableBandSweepSetting()V

    .line 466
    :cond_2
    :goto_0
    return-void

    .line 459
    :cond_3
    if-eqz v0, :cond_4

    .line 460
    const-string v2, "Stop Test"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 462
    :cond_4
    if-eqz v1, :cond_2

    .line 463
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private StartBandSweep()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2362
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mMultiUpdateThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mMultiUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1

    .line 2364
    :cond_0
    iget v0, p0, Lcom/caf/fmradio/FMStats;->prevSweepMthd:I

    if-nez v0, :cond_3

    .line 2365
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->getManualSweepResults:Ljava/lang/Runnable;

    const-string v2, "MultiResultsThread"

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mMultiUpdateThread:Ljava/lang/Thread;

    .line 2375
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mMultiUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_2

    .line 2376
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mMultiUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2378
    :cond_2
    return-void

    .line 2368
    :cond_3
    new-instance v0, Lcom/caf/fmradio/CommaSeparatedFreqFileReader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/caf/fmradio/FMStats;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/freq_list_comma_separated.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caf/fmradio/CommaSeparatedFreqFileReader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mNextFreqInterface:Lcom/caf/fmradio/GetNextFreqInterface;

    .line 2369
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->getFileSweepResults:Ljava/lang/Runnable;

    const-string v2, "MultiResultsThread"

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mMultiUpdateThread:Ljava/lang/Thread;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/caf/fmradio/FMStats;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->clearPreviousTestResults()V

    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/caf/fmradio/FMStats;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/caf/fmradio/FMStats;)Lqcom/fmradio/FmReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mReceiver:Lqcom/fmradio/FmReceiver;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/caf/fmradio/FMStats;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mOnSetRmssitListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/caf/fmradio/FMStats;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mOnSetSigThListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/caf/fmradio/FMStats;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/caf/fmradio/FMStats;->mNewRowIds:I

    return p1
.end method

.method static synthetic access$1500(Lcom/caf/fmradio/FMStats;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mOnSetSinrSmplCntListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/caf/fmradio/FMStats;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mOnSetSinrThListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/caf/fmradio/FMStats;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mOnSetIntfLowThListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/caf/fmradio/FMStats;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mOnSetIntfHighThListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/caf/fmradio/FMStats;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mOnSetSinrFirstStageListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/caf/fmradio/FMStats;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->disableBandSweepSetting()V

    return-void
.end method

.method static synthetic access$2000(Lcom/caf/fmradio/FMStats;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mOnSetRmssiFirstStageListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/caf/fmradio/FMStats;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mOnSetCFOMeanThListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/caf/fmradio/FMStats;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mOnSetSearchMPXDCCListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/caf/fmradio/FMStats;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mOnSetSearchSinrIntfListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/caf/fmradio/FMStats;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mOnSetAfJmpRmssiThListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/caf/fmradio/FMStats;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mOnSetGdChRmssiThListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/caf/fmradio/FMStats;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mOnSetAfJmpRmssiSmplsCntListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/caf/fmradio/FMStats;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mOnSetRxRePeatCount:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/caf/fmradio/FMStats;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->stopCurTest()V

    return-void
.end method

.method static synthetic access$2900(Lcom/caf/fmradio/FMStats;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mOnRunListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/caf/fmradio/FMStats;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->runCurrentTest()V

    return-void
.end method

.method static synthetic access$3000(Lcom/caf/fmradio/FMStats;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->isTransportLayerSMD()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/caf/fmradio/FMStats;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->chooseFMRFoption()V

    return-void
.end method

.method static synthetic access$3200(Lcom/caf/fmradio/FMStats;I)Lcom/caf/fmradio/FMStats$Result;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/caf/fmradio/FMStats;->GetFMStatsForFreq(I)Lcom/caf/fmradio/FMStats$Result;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/caf/fmradio/FMStats;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mUIUpdateHandlerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/FMStats$Band;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mBand:Lcom/caf/fmradio/FMStats$Band;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/caf/fmradio/FMStats;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/caf/fmradio/FMStats;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/caf/fmradio/FMStats;->tuneAndUpdateSweepResult(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/caf/fmradio/FMStats;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/caf/fmradio/FMStats;->prevDwellTime:I

    return v0
.end method

.method static synthetic access$3802(Lcom/caf/fmradio/FMStats;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/caf/fmradio/FMStats;->prevDwellTime:I

    return p1
.end method

.method static synthetic access$3900(Lcom/caf/fmradio/FMStats;JLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/caf/fmradio/FMStats;->setAlarm(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/caf/fmradio/FMStats;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/caf/fmradio/FMStats;->SetButtonState(Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/GetNextFreqInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mNextFreqInterface:Lcom/caf/fmradio/GetNextFreqInterface;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/caf/fmradio/FMStats;Lcom/caf/fmradio/GetNextFreqInterface;)Lcom/caf/fmradio/GetNextFreqInterface;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/caf/fmradio/FMStats;->mNextFreqInterface:Lcom/caf/fmradio/GetNextFreqInterface;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/caf/fmradio/FMStats;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/caf/fmradio/FMStats;->validFreq(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/caf/fmradio/FMStats;Lcom/caf/fmradio/FMStats$Result;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/caf/fmradio/FMStats;->createResult(Lcom/caf/fmradio/FMStats$Result;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/caf/fmradio/FMStats;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->stopRecording()V

    return-void
.end method

.method static synthetic access$4500(Lcom/caf/fmradio/FMStats;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->updateExpiredRecordTime()V

    return-void
.end method

.method static synthetic access$4600(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mServiceCallbacks:Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/caf/fmradio/FMStats;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->initiateRecordThread()V

    return-void
.end method

.method static synthetic access$4800(Lcom/caf/fmradio/FMStats;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->stopAllOperations()V

    return-void
.end method

.method static synthetic access$4900(Lcom/caf/fmradio/FMStats;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mTuneComplete:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/caf/fmradio/FMStats;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mMultiUpdateThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/caf/fmradio/FMStats;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/caf/fmradio/FMStats;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/caf/fmradio/FMStats;->mMultiUpdateThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/caf/fmradio/FMStats;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/caf/fmradio/FMStats;->initiateRecordDurationTimer(J)V

    return-void
.end method

.method static synthetic access$5200(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/FMStats$Band;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mSync:Lcom/caf/fmradio/FMStats$Band;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/caf/fmradio/FMStats;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/caf/fmradio/FMStats;->prevSweepMthd:I

    return p1
.end method

.method static synthetic access$5400(Lcom/caf/fmradio/FMStats;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/caf/fmradio/FMStats;->curSweepMthd:I

    return v0
.end method

.method static synthetic access$5402(Lcom/caf/fmradio/FMStats;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/caf/fmradio/FMStats;->curSweepMthd:I

    return p1
.end method

.method static synthetic access$5502(Lcom/caf/fmradio/FMStats;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/caf/fmradio/FMStats;->prevDelayTime:I

    return p1
.end method

.method static synthetic access$5600(Lcom/caf/fmradio/FMStats;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->StartBandSweep()V

    return-void
.end method

.method static synthetic access$5700(Lcom/caf/fmradio/FMStats;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->ResumeBandSweep()V

    return-void
.end method

.method static synthetic access$600(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/IFMRadioService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;

    return-object v0
.end method

.method static synthetic access$602(Lcom/caf/fmradio/FMStats;Lcom/caf/fmradio/IFMRadioService;)Lcom/caf/fmradio/IFMRadioService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;

    return-object p1
.end method

.method static synthetic access$700(Lcom/caf/fmradio/FMStats;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->stopBandSweep()V

    return-void
.end method

.method static synthetic access$800(Lcom/caf/fmradio/FMStats;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->sendStatusDoneMsg()V

    return-void
.end method

.method static synthetic access$900(Lcom/caf/fmradio/FMStats;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->enableBandSweepSetting()V

    return-void
.end method

.method private cancelAlarm(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2355
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2356
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMStats;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2357
    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2358
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2359
    return-void
.end method

.method private checkTransportLayer()V
    .locals 2

    .prologue
    .line 1530
    const-string v0, ""

    .line 1532
    const-string v0, "ro.qualcomm.bt.hci_transport"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1533
    const-string v1, "smd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1534
    const/4 v0, 0x1

    sput-boolean v0, Lcom/caf/fmradio/FMStats;->mIsTransportSMD:Z

    .line 1535
    :cond_0
    return-void
.end method

.method private chooseFMRFoption()V
    .locals 6

    .prologue
    const v5, 0x1090009

    const/4 v4, 0x4

    .line 469
    invoke-virtual {p0}, Lcom/caf/fmradio/FMStats;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 472
    const-string v2, "running test:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/caf/fmradio/FMStats;->mTestSelected:I

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    .line 475
    iget v0, p0, Lcom/caf/fmradio/FMStats;->mTestSelected:I

    packed-switch v0, :pswitch_data_0

    .line 515
    :goto_0
    return-void

    .line 478
    :pswitch_0
    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMStats;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->RunButton:Landroid/widget/Button;

    .line 479
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->RunButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->RunButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 482
    :cond_0
    const v0, 0x7f090020

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMStats;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->pbar:Landroid/widget/ProgressBar;

    .line 483
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->pbar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->pbar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->adaptCfgRf:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 488
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->spinOptionFmRf:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->adaptCfgRf:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 489
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->isTransportLayerSMD()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 490
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->spinOptionFmRf:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->mSpinCfgRfListener2:Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0

    .line 493
    :cond_2
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->spinOptionFmRf:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->mSpinCfgRfListener1:Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0

    .line 497
    :pswitch_1
    const v0, 0x7f090022

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMStats;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    .line 498
    const v0, 0x7f090021

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMStats;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    .line 499
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    .line 500
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 502
    :cond_3
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 503
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->tv1:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 505
    :cond_4
    const v0, 0x7f090023

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMStats;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 506
    if-eqz v0, :cond_5

    .line 507
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 509
    :cond_5
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->adaptRfCfg:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 511
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->spinOptionFmRf:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->adaptRfCfg:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 512
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->spinOptionFmRf:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->mSpinRfCfgListener:Lcom/caf/fmradio/FMStats$RfCfgItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto/16 :goto_0

    .line 475
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private clearPreviousTestResults()V
    .locals 2

    .prologue
    .line 435
    const v1, 0x7f090026

    invoke-virtual {p0, v1}, Lcom/caf/fmradio/FMStats;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 436
    .local v0, tl:Landroid/widget/TableLayout;
    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {v0}, Landroid/widget/TableLayout;->removeAllViewsInLayout()V

    .line 439
    :cond_0
    const/16 v1, 0x12c

    iput v1, p0, Lcom/caf/fmradio/FMStats;->mNewRowIds:I

    .line 440
    return-void
.end method

.method private createBandSweepDialog(ILandroid/app/AlertDialog$Builder;)Landroid/app/Dialog;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 2235
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2236
    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2237
    const v0, 0x7f090003

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->spinOptionBandSweepMthds:Landroid/widget/Spinner;

    .line 2238
    const v0, 0x7f090005

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2239
    const v1, 0x7f090007

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 2241
    if-eqz v0, :cond_0

    .line 2242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/caf/fmradio/FMStats;->prevDelayTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2244
    :cond_0
    if-eqz v1, :cond_1

    .line 2245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/caf/fmradio/FMStats;->prevDwellTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2247
    :cond_1
    iget-object v3, p0, Lcom/caf/fmradio/FMStats;->spinOptionBandSweepMthds:Landroid/widget/Spinner;

    if-eqz v3, :cond_2

    .line 2248
    iget-object v3, p0, Lcom/caf/fmradio/FMStats;->spinOptionBandSweepMthds:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/caf/fmradio/FMStats;->bandSweepMthds:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2249
    iget-object v3, p0, Lcom/caf/fmradio/FMStats;->spinOptionBandSweepMthds:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/caf/fmradio/FMStats;->mSweepMthdsListener:Lcom/caf/fmradio/FMStats$BandSweepMthdsSelectedListener;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 2250
    iget-object v3, p0, Lcom/caf/fmradio/FMStats;->spinOptionBandSweepMthds:Landroid/widget/Spinner;

    iget v4, p0, Lcom/caf/fmradio/FMStats;->prevSweepMthd:I

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2254
    :goto_0
    invoke-virtual {p2, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0600c6

    new-instance v4, Lcom/caf/fmradio/FMStats$25;

    invoke-direct {v4, p0, v0, v1}, Lcom/caf/fmradio/FMStats$25;-><init>(Lcom/caf/fmradio/FMStats;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0600c7

    new-instance v2, Lcom/caf/fmradio/FMStats$24;

    invoke-direct {v2, p0}, Lcom/caf/fmradio/FMStats$24;-><init>(Lcom/caf/fmradio/FMStats;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2274
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 2252
    :cond_2
    sget-object v3, Lcom/caf/fmradio/FMStats;->LOGTAG:Ljava/lang/String;

    const-string v4, "could not find spinner for methods\n"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createResult(Lcom/caf/fmradio/FMStats$Result;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x2

    const/high16 v5, 0x41c8

    .line 1541
    const v0, 0x7f090026

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMStats;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 1542
    if-nez v0, :cond_1

    .line 1615
    :cond_0
    :goto_0
    return-void

    .line 1547
    :cond_1
    iget v1, p0, Lcom/caf/fmradio/FMStats;->mNewRowIds:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/caf/fmradio/FMStats;->mNewRowIds:I

    .line 1548
    new-instance v1, Landroid/widget/TableRow;

    invoke-virtual {p0}, Lcom/caf/fmradio/FMStats;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 1549
    invoke-virtual {p0}, Lcom/caf/fmradio/FMStats;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 1550
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1553
    iget v3, p0, Lcom/caf/fmradio/FMStats;->mNewRowIds:I

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->setId(I)V

    .line 1555
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/caf/fmradio/FMStats;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1556
    invoke-virtual {p1}, Lcom/caf/fmradio/FMStats$Result;->getFreq()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1557
    invoke-virtual {v3, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1558
    div-int/lit8 v4, v2, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setWidth(I)V

    .line 1560
    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 1562
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/caf/fmradio/FMStats;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1563
    invoke-virtual {p1}, Lcom/caf/fmradio/FMStats$Result;->getRSSI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1564
    invoke-virtual {v3, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1565
    div-int/lit8 v4, v2, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setWidth(I)V

    .line 1566
    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 1568
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/caf/fmradio/FMStats;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1569
    invoke-virtual {p1}, Lcom/caf/fmradio/FMStats$Result;->getIoC()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1570
    invoke-virtual {v3, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1571
    div-int/lit8 v4, v2, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setWidth(I)V

    .line 1572
    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 1573
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->isTransportLayerSMD()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1575
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/caf/fmradio/FMStats;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1576
    invoke-virtual {p1}, Lcom/caf/fmradio/FMStats$Result;->getSINR()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1577
    invoke-virtual {v3, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1578
    div-int/lit8 v2, v2, 0x4

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setWidth(I)V

    .line 1579
    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 1590
    :goto_1
    new-instance v2, Landroid/widget/TableLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v7}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1593
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mFileCursor:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 1596
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1597
    const-string v1, "%10s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/caf/fmradio/FMStats$Result;->getFreq()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1598
    const-string v1, "%10s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/caf/fmradio/FMStats$Result;->getRSSI()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1599
    const-string v1, "%10s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/caf/fmradio/FMStats$Result;->getIoC()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1600
    const-string v1, "%10s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/caf/fmradio/FMStats$Result;->getIntDet()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1601
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->isTransportLayerSMD()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1603
    const-string v1, "%10s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/caf/fmradio/FMStats$Result;->getSINR()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1608
    :goto_2
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1609
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    .line 1610
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mFileCursor:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1611
    :catch_0
    move-exception v0

    .line 1612
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1582
    :cond_2
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/caf/fmradio/FMStats;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1583
    invoke-virtual {p1}, Lcom/caf/fmradio/FMStats$Result;->getMpxDcc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1584
    invoke-virtual {v3, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1585
    div-int/lit8 v2, v2, 0x4

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setWidth(I)V

    .line 1586
    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1606
    :cond_3
    :try_start_1
    const-string v1, "%10s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/caf/fmradio/FMStats$Result;->getMpxDcc()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private disableBandSweepSetting()V
    .locals 2

    .prologue
    .line 2291
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->bandSweepSettingButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2292
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->bandSweepSettingButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2293
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->bandSweepSettingButton:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2295
    :cond_0
    return-void
.end method

.method private enableBandSweepSetting()V
    .locals 2

    .prologue
    .line 2284
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->bandSweepSettingButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2285
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->bandSweepSettingButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2286
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->bandSweepSettingButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2288
    :cond_0
    return-void
.end method

.method private getFMStatsInBand(III)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mBand:Lcom/caf/fmradio/FMStats$Band;

    if-nez v0, :cond_0

    .line 1738
    new-instance v0, Lcom/caf/fmradio/FMStats$Band;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/caf/fmradio/FMStats$Band;-><init>(Lcom/caf/fmradio/FMStats;Lcom/caf/fmradio/FMStats$1;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mBand:Lcom/caf/fmradio/FMStats$Band;

    .line 1740
    :cond_0
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mBand:Lcom/caf/fmradio/FMStats$Band;

    iput p1, v0, Lcom/caf/fmradio/FMStats$Band;->lFreq:I

    .line 1741
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mBand:Lcom/caf/fmradio/FMStats$Band;

    iput p2, v0, Lcom/caf/fmradio/FMStats$Band;->hFreq:I

    .line 1742
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mBand:Lcom/caf/fmradio/FMStats$Band;

    iput p1, v0, Lcom/caf/fmradio/FMStats$Band;->cur_freq:I

    .line 1743
    if-nez p3, :cond_1

    .line 1744
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mBand:Lcom/caf/fmradio/FMStats$Band;

    const/16 v1, 0xc8

    iput v1, v0, Lcom/caf/fmradio/FMStats$Band;->Spacing:I

    .line 1751
    :goto_0
    iget v0, p0, Lcom/caf/fmradio/FMStats;->prevDelayTime:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    const-string v2, "com.caf.fmradio.SWEEP_START_DELAY_EXP"

    invoke-direct {p0, v0, v1, v2}, Lcom/caf/fmradio/FMStats;->setAlarm(JLjava/lang/String;)V

    .line 1752
    return-void

    .line 1745
    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 1746
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mBand:Lcom/caf/fmradio/FMStats$Band;

    const/16 v1, 0x64

    iput v1, v0, Lcom/caf/fmradio/FMStats$Band;->Spacing:I

    goto :goto_0

    .line 1748
    :cond_2
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mBand:Lcom/caf/fmradio/FMStats$Band;

    const/16 v1, 0x32

    iput v1, v0, Lcom/caf/fmradio/FMStats$Band;->Spacing:I

    goto :goto_0
.end method

.method private getRecordingStartTime()J
    .locals 4

    .prologue
    const-wide/16 v1, 0x0

    .line 2483
    iget-object v3, p0, Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-nez v3, :cond_0

    .line 2488
    :goto_0
    return-wide v1

    .line 2486
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v3}, Lcom/caf/fmradio/IFMRadioService;->getRecordingStartTime()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    goto :goto_0

    .line 2487
    :catch_0
    move-exception v0

    .line 2488
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private initiateRecordDurationTimer(J)V
    .locals 3
    .parameter

    .prologue
    .line 2493
    sget-object v0, Lcom/caf/fmradio/FMStats;->LOGTAG:Ljava/lang/String;

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

    .line 2494
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->initiateRecordThread()V

    .line 2495
    return-void
.end method

.method private initiateRecordThread()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2498
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mRecordUpdateHandlerThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 2499
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->doRecordProcessing:Ljava/lang/Runnable;

    const-string v2, "RecordUpdateThread"

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mRecordUpdateHandlerThread:Ljava/lang/Thread;

    .line 2503
    :cond_0
    sget-object v0, Lcom/caf/fmradio/FMStats;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/caf/fmradio/FMStats;->mRecordUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mRecordUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1

    .line 2505
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->doRecordProcessing:Ljava/lang/Runnable;

    const-string v2, "RecordUpdateThread"

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mRecordUpdateHandlerThread:Ljava/lang/Thread;

    .line 2509
    :cond_1
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mRecordUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_2

    .line 2510
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mRecordUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2512
    :cond_2
    return-void
.end method

.method private isFmOn()Z
    .locals 2

    .prologue
    .line 2577
    const/4 v0, 0x0

    .line 2579
    .local v0, status:Z
    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-eqz v1, :cond_0

    .line 2581
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v1}, Lcom/caf/fmradio/IFMRadioService;->isFmOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2585
    :cond_0
    :goto_0
    return v0

    .line 2582
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isTransportLayerSMD()Z
    .locals 1

    .prologue
    .line 1537
    sget-boolean v0, Lcom/caf/fmradio/FMStats;->mIsTransportSMD:Z

    return v0
.end method

.method private makeTimeString(J)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const-wide/16 v5, 0x3c

    .line 2544
    const v0, 0x7f06008a

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMStats;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2549
    sget-object v1, Lcom/caf/fmradio/FMStats;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2551
    sget-object v1, Lcom/caf/fmradio/FMStats;->sTimeArgs:[Ljava/lang/Object;

    .line 2552
    const-wide/16 v2, 0xe10

    div-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    .line 2553
    const/4 v2, 0x1

    div-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2554
    const/4 v2, 0x2

    div-long v3, p1, v5

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2555
    const/4 v2, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2556
    const/4 v2, 0x4

    rem-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2558
    sget-object v2, Lcom/caf/fmradio/FMStats;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v2, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private registerBandSweepDelayExprdListener()V
    .locals 2

    .prologue
    .line 2309
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mBandSweepDelayExprdListener:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 2310
    new-instance v0, Lcom/caf/fmradio/FMStats$27;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMStats$27;-><init>(Lcom/caf/fmradio/FMStats;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mBandSweepDelayExprdListener:Landroid/content/BroadcastReceiver;

    .line 2318
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.caf.fmradio.SWEEP_START_DELAY_EXP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2319
    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->mBandSweepDelayExprdListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/caf/fmradio/FMStats;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2321
    :cond_0
    return-void
.end method

.method private registerBandSweepDwellExprdListener()V
    .locals 2

    .prologue
    .line 2324
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mBandSweepDwellExprdListener:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 2325
    new-instance v0, Lcom/caf/fmradio/FMStats$28;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FMStats$28;-><init>(Lcom/caf/fmradio/FMStats;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mBandSweepDwellExprdListener:Landroid/content/BroadcastReceiver;

    .line 2335
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.caf.fmradio.SWEEP_DWELL_DELAY_EXP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2336
    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->mBandSweepDwellExprdListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/caf/fmradio/FMStats;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2338
    :cond_0
    return-void
.end method

.method private runCurrentTest()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1618
    sget-object v0, Lcom/caf/fmradio/FMStats;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The test being run is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/caf/fmradio/FMStats;->mTestSelected:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    invoke-virtual {p0}, Lcom/caf/fmradio/FMStats;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1624
    const-string v2, "running test:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/caf/fmradio/FMStats;->mTestSelected:I

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1625
    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1626
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    .line 1627
    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->mFileCursor:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 1629
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->mFileCursor:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1634
    :cond_0
    :goto_0
    iget v0, p0, Lcom/caf/fmradio/FMStats;->mTestSelected:I

    packed-switch v0, :pswitch_data_0

    .line 1706
    :cond_1
    :goto_1
    return-void

    .line 1630
    :catch_0
    move-exception v0

    .line 1631
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1637
    :pswitch_0
    sget-object v0, Lcom/caf/fmradio/FMStats;->LOGTAG:Ljava/lang/String;

    const-string v1, "Current Freq test is going to run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getTunedFrequency()I

    move-result v0

    .line 1639
    invoke-direct {p0, v0}, Lcom/caf/fmradio/FMStats;->GetFMStatsForFreq(I)Lcom/caf/fmradio/FMStats$Result;

    move-result-object v0

    .line 1640
    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->mColumnHeader:Lcom/caf/fmradio/FMStats$Result;

    invoke-direct {p0, v1}, Lcom/caf/fmradio/FMStats;->createResult(Lcom/caf/fmradio/FMStats$Result;)V

    .line 1641
    if-eqz v0, :cond_2

    .line 1642
    invoke-direct {p0, v0}, Lcom/caf/fmradio/FMStats;->createResult(Lcom/caf/fmradio/FMStats$Result;)V

    .line 1643
    :cond_2
    iput-boolean v5, p0, Lcom/caf/fmradio/FMStats;->mTestRunning:Z

    goto :goto_1

    .line 1647
    :pswitch_1
    invoke-direct {p0, v5}, Lcom/caf/fmradio/FMStats;->SetButtonState(Z)V

    .line 1648
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mColumnHeader:Lcom/caf/fmradio/FMStats$Result;

    invoke-direct {p0, v0}, Lcom/caf/fmradio/FMStats;->createResult(Lcom/caf/fmradio/FMStats$Result;)V

    .line 1650
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mMultiUpdateThread:Ljava/lang/Thread;

    if-nez v0, :cond_3

    .line 1651
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->getMultipleResults:Ljava/lang/Runnable;

    const-string v2, "MultiResultsThread"

    invoke-direct {v0, v4, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mMultiUpdateThread:Ljava/lang/Thread;

    .line 1655
    :cond_3
    sget-object v0, Lcom/caf/fmradio/FMStats;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/caf/fmradio/FMStats;->mMultiUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mMultiUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_4

    .line 1657
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->getMultipleResults:Ljava/lang/Runnable;

    const-string v2, "MultiResultsThread"

    invoke-direct {v0, v4, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mMultiUpdateThread:Ljava/lang/Thread;

    .line 1661
    :cond_4
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mMultiUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1

    .line 1662
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mMultiUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 1668
    :pswitch_2
    :try_start_1
    sget-object v0, Lcom/caf/fmradio/FMStats;->LOGTAG:Ljava/lang/String;

    const-string v1, "start scanning\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->isTransportLayerSMD()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1670
    sget-object v0, Lcom/caf/fmradio/FMStats;->LOGTAG:Ljava/lang/String;

    const-string v1, "Scanning with 0 scan time"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_5

    .line 1672
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mReceiver:Lqcom/fmradio/FmReceiver;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lqcom/fmradio/FmReceiver;->searchStations(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/caf/fmradio/FMStats;->mIsSearching:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1681
    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcom/caf/fmradio/FMStats;->mIsSearching:Z

    if-eqz v0, :cond_7

    .line 1683
    invoke-direct {p0, v5}, Lcom/caf/fmradio/FMStats;->SetButtonState(Z)V

    .line 1684
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mColumnHeader:Lcom/caf/fmradio/FMStats$Result;

    invoke-direct {p0, v0}, Lcom/caf/fmradio/FMStats;->createResult(Lcom/caf/fmradio/FMStats$Result;)V

    .line 1685
    sget-object v0, Lcom/caf/fmradio/FMStats;->LOGTAG:Ljava/lang/String;

    const-string v1, "Created the results and cancel UI\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1675
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/caf/fmradio/IFMRadioService;->scan(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/caf/fmradio/FMStats;->mIsSearching:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1677
    :catch_1
    move-exception v0

    .line 1678
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 1687
    :cond_7
    iput-boolean v5, p0, Lcom/caf/fmradio/FMStats;->mTestRunning:Z

    goto/16 :goto_1

    .line 1691
    :pswitch_3
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getChSpacing()I

    move-result v1

    .line 1692
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getLowerLimit()I

    move-result v2

    .line 1693
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getUpperLimit()I

    move-result v3

    .line 1695
    :try_start_3
    sget-object v0, Lcom/caf/fmradio/FMStats;->LOGTAG:Ljava/lang/String;

    const-string v4, "Going to set low side injection\n"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;

    iget v4, p0, Lcom/caf/fmradio/FMStats;->Lo:I

    invoke-interface {v0, v4}, Lcom/caf/fmradio/IFMRadioService;->setHiLoInj(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1701
    :goto_3
    invoke-direct {p0, v5}, Lcom/caf/fmradio/FMStats;->SetButtonState(Z)V

    .line 1702
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mColumnHeader:Lcom/caf/fmradio/FMStats$Result;

    invoke-direct {p0, v0}, Lcom/caf/fmradio/FMStats;->createResult(Lcom/caf/fmradio/FMStats$Result;)V

    .line 1703
    invoke-direct {p0, v2, v3, v1}, Lcom/caf/fmradio/FMStats;->getFMStatsInBand(III)V

    goto/16 :goto_1

    .line 1697
    :catch_2
    move-exception v0

    .line 1698
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 1634
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private sendStatusDoneMsg()V
    .locals 3

    .prologue
    .line 1783
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/caf/fmradio/FMStats;->mTestRunning:Z

    .line 1784
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1785
    const/4 v0, 0x2

    iput v0, v1, Landroid/os/Message;->what:I

    .line 1787
    :try_start_0
    sget-object v0, Lcom/caf/fmradio/FMStats;->LOGTAG:Ljava/lang/String;

    const-string v2, "Going to set auto hi-lo injection\n"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;

    iget v2, p0, Lcom/caf/fmradio/FMStats;->Auto:I

    invoke-interface {v0, v2}, Lcom/caf/fmradio/IFMRadioService;->setHiLoInj(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1792
    :goto_0
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mUIUpdateHandlerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1793
    sget-object v0, Lcom/caf/fmradio/FMStats;->LOGTAG:Ljava/lang/String;

    const-string v2, "Sending message to stop test"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mUIUpdateHandlerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1796
    :cond_0
    return-void

    .line 1789
    :catch_0
    move-exception v0

    .line 1790
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private setAlarm(JLjava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2348
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2349
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FMStats;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2350
    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2351
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, p1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2352
    return-void
.end method

.method private setRecordDurationDisplay(Landroid/view/Menu;I)V
    .locals 9
    .parameter "menu"
    .parameter "id"

    .prologue
    .line 2448
    if-nez p1, :cond_1

    .line 2456
    :cond_0
    :goto_0
    return-void

    .line 2450
    :cond_1
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2451
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 2452
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2453
    .local v3, timeNow:J
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->getRecordingStartTime()J

    move-result-wide v5

    sub-long v5, v3, v5

    const-wide/16 v7, 0x3e8

    div-long v1, v5, v7

    .line 2454
    .local v1, seconds:J
    invoke-direct {p0, v1, v2}, Lcom/caf/fmradio/FMStats;->makeTimeString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private startRecording()V
    .locals 2

    .prologue
    .line 2459
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->isFmOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2461
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v1}, Lcom/caf/fmradio/IFMRadioService;->startRecording()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2466
    :cond_0
    :goto_0
    return-void

    .line 2462
    :catch_0
    move-exception v0

    .line 2463
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private stopAllOperations()V
    .locals 0

    .prologue
    .line 2589
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->stopCurTest()V

    .line 2590
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->stopRecording()V

    .line 2591
    return-void
.end method

.method private stopBandSweep()V
    .locals 1

    .prologue
    .line 2399
    const-string v0, "com.caf.fmradio.SWEEP_START_DELAY_EXP"

    invoke-direct {p0, v0}, Lcom/caf/fmradio/FMStats;->cancelAlarm(Ljava/lang/String;)V

    .line 2400
    const-string v0, "com.caf.fmradio.SWEEP_DWELL_DELAY_EXP"

    invoke-direct {p0, v0}, Lcom/caf/fmradio/FMStats;->cancelAlarm(Ljava/lang/String;)V

    .line 2401
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mMultiUpdateThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 2402
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mMultiUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 2404
    :cond_0
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mNextFreqInterface:Lcom/caf/fmradio/GetNextFreqInterface;

    if-eqz v0, :cond_1

    .line 2405
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mNextFreqInterface:Lcom/caf/fmradio/GetNextFreqInterface;

    invoke-interface {v0}, Lcom/caf/fmradio/GetNextFreqInterface;->Stop()V

    .line 2406
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->mNextFreqInterface:Lcom/caf/fmradio/GetNextFreqInterface;

    .line 2408
    :cond_1
    return-void
.end method

.method private stopCurTest()V
    .locals 4

    .prologue
    .line 2193
    iget-boolean v2, p0, Lcom/caf/fmradio/FMStats;->mTestRunning:Z

    if-eqz v2, :cond_1

    .line 2194
    iget v2, p0, Lcom/caf/fmradio/FMStats;->mTestSelected:I

    packed-switch v2, :pswitch_data_0

    .line 2219
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/caf/fmradio/FMStats;->mTestRunning:Z

    .line 2221
    :cond_1
    return-void

    .line 2198
    :pswitch_1
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->stopBandSweep()V

    .line 2199
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->sendStatusDoneMsg()V

    goto :goto_0

    .line 2202
    :pswitch_2
    iget-object v2, p0, Lcom/caf/fmradio/FMStats;->mMultiUpdateThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 2203
    iget-object v2, p0, Lcom/caf/fmradio/FMStats;->mMultiUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 2206
    :pswitch_3
    iget-object v2, p0, Lcom/caf/fmradio/FMStats;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/caf/fmradio/FMStats;->mTuneComplete:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2207
    iget-object v2, p0, Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-eqz v2, :cond_0

    .line 2209
    :try_start_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2210
    .local v1, updateStop:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2211
    iget-object v2, p0, Lcom/caf/fmradio/FMStats;->mUIUpdateHandlerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2212
    iget-object v2, p0, Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v2}, Lcom/caf/fmradio/IFMRadioService;->cancelSearch()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2213
    .end local v1           #updateStop:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 2214
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2194
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private stopRecording()V
    .locals 2

    .prologue
    .line 2469
    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->mRecordUpdateHandlerThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 2470
    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->mRecordUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 2472
    :cond_0
    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-eqz v1, :cond_1

    .line 2474
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v1}, Lcom/caf/fmradio/IFMRadioService;->stopRecording()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2479
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/caf/fmradio/FMStats;->invalidateOptionsMenu()V

    .line 2480
    return-void

    .line 2475
    :catch_0
    move-exception v0

    .line 2476
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private tuneAndUpdateSweepResult(I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1843
    :try_start_0
    iget-object v2, p0, Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v2, p1}, Lcom/caf/fmradio/IFMRadioService;->tune(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1844
    sget-object v1, Lcom/caf/fmradio/FMStats;->LOGTAG:Ljava/lang/String;

    const-string v2, "tune failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    :cond_0
    :goto_0
    return v0

    .line 1847
    :cond_1
    new-instance v2, Lcom/caf/fmradio/FMStats$Band;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/caf/fmradio/FMStats$Band;-><init>(Lcom/caf/fmradio/FMStats;Lcom/caf/fmradio/FMStats$1;)V

    iput-object v2, p0, Lcom/caf/fmradio/FMStats;->mSync:Lcom/caf/fmradio/FMStats$Band;

    .line 1848
    iget-object v2, p0, Lcom/caf/fmradio/FMStats;->mSync:Lcom/caf/fmradio/FMStats$Band;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1849
    :try_start_1
    iget-object v3, p0, Lcom/caf/fmradio/FMStats;->mSync:Lcom/caf/fmradio/FMStats$Band;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 1850
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1851
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Lcom/caf/fmradio/FMStats;->mSync:Lcom/caf/fmradio/FMStats$Band;

    .line 1852
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1853
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 1854
    invoke-direct {p0, p1}, Lcom/caf/fmradio/FMStats;->GetFMStatsForFreq(I)Lcom/caf/fmradio/FMStats$Result;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1855
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 1858
    iget-object v3, p0, Lcom/caf/fmradio/FMStats;->mUIUpdateHandlerHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1859
    sget-object v2, Lcom/caf/fmradio/FMStats;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "highFerq is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/caf/fmradio/FMStats;->mBand:Lcom/caf/fmradio/FMStats$Band;

    iget v4, v4, Lcom/caf/fmradio/FMStats$Band;->hFreq:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v1

    .line 1867
    goto :goto_0

    .line 1850
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1861
    :catch_0
    move-exception v1

    .line 1862
    sget-object v1, Lcom/caf/fmradio/FMStats;->LOGTAG:Ljava/lang/String;

    const-string v2, "SweepResults:Tune failed\n"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1864
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private unRegisterBroadcastReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 0
    .parameter "receiver"

    .prologue
    .line 2341
    if-eqz p1, :cond_0

    .line 2342
    invoke-virtual {p0, p1}, Lcom/caf/fmradio/FMStats;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2343
    const/4 p1, 0x0

    .line 2345
    :cond_0
    return-void
.end method

.method private updateExpiredRecordTime()V
    .locals 2

    .prologue
    .line 2537
    const/4 v0, 0x0

    .line 2538
    .local v0, vis:I
    invoke-virtual {p0}, Lcom/caf/fmradio/FMStats;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2539
    invoke-virtual {p0}, Lcom/caf/fmradio/FMStats;->invalidateOptionsMenu()V

    .line 2541
    :cond_0
    return-void
.end method

.method private validFreq(I)Z
    .locals 2
    .parameter "freq"

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mBand:Lcom/caf/fmradio/FMStats$Band;

    iget v0, v0, Lcom/caf/fmradio/FMStats$Band;->lFreq:I

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mBand:Lcom/caf/fmradio/FMStats$Band;

    iget v0, v0, Lcom/caf/fmradio/FMStats$Band;->hFreq:I

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->mBand:Lcom/caf/fmradio/FMStats$Band;

    iget v0, v0, Lcom/caf/fmradio/FMStats$Band;->lFreq:I

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->mBand:Lcom/caf/fmradio/FMStats$Band;

    iget v1, v1, Lcom/caf/fmradio/FMStats$Band;->Spacing:I

    div-int/2addr v0, v1

    if-ltz v0, :cond_0

    .line 1835
    const/4 v0, 0x1

    .line 1837
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1990
    sget-object v0, Lcom/caf/fmradio/FMStats;->LOGTAG:Ljava/lang/String;

    const-string v1, "bindToService: Context with serviceconnection callback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/caf/fmradio/FMRadioService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1992
    new-instance v0, Lcom/caf/fmradio/FMStats$ServiceBinder;

    invoke-direct {v0, p0, p2}, Lcom/caf/fmradio/FMStats$ServiceBinder;-><init>(Lcom/caf/fmradio/FMStats;Landroid/content/ServiceConnection;)V

    .line 1993
    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1994
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

.method public isRecording()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2411
    iget-object v2, p0, Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;

    if-nez v2, :cond_0

    .line 2416
    :goto_0
    return v1

    .line 2414
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;

    invoke-interface {v2}, Lcom/caf/fmradio/IFMRadioService;->isFmRecordingOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2415
    :catch_0
    move-exception v0

    .line 2416
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const v6, 0x1090008

    .line 263
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 264
    const v4, 0x7f030005

    invoke-virtual {p0, v4}, Lcom/caf/fmradio/FMStats;->setContentView(I)V

    .line 266
    const v4, 0x7f09001d

    invoke-virtual {p0, v4}, Lcom/caf/fmradio/FMStats;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/caf/fmradio/FMStats;->spinOptionFmRf:Landroid/widget/Spinner;

    .line 267
    const v4, 0x7f050011

    invoke-static {p0, v4, v6}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/caf/fmradio/FMStats;->adaptFmRf:Landroid/widget/ArrayAdapter;

    .line 270
    iget-object v4, p0, Lcom/caf/fmradio/FMStats;->adaptFmRf:Landroid/widget/ArrayAdapter;

    const v5, 0x1090009

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 272
    iget-object v4, p0, Lcom/caf/fmradio/FMStats;->spinOptionFmRf:Landroid/widget/Spinner;

    if-eqz v4, :cond_0

    .line 273
    iget-object v4, p0, Lcom/caf/fmradio/FMStats;->spinOptionFmRf:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/caf/fmradio/FMStats;->adaptFmRf:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 274
    iget-object v4, p0, Lcom/caf/fmradio/FMStats;->spinOptionFmRf:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/caf/fmradio/FMStats;->mSpinFmRfListener:Lcom/caf/fmradio/FMStats$FmRfItemSelectedListener;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 277
    :cond_0
    const v4, 0x7f050014

    invoke-static {p0, v4, v6}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/caf/fmradio/FMStats;->bandSweepMthds:Landroid/widget/ArrayAdapter;

    .line 281
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->checkTransportLayer()V

    .line 282
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->isTransportLayerSMD()Z

    move-result v4

    if-nez v4, :cond_4

    .line 283
    new-instance v4, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;

    invoke-direct {v4, p0}, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;-><init>(Lcom/caf/fmradio/FMStats;)V

    iput-object v4, p0, Lcom/caf/fmradio/FMStats;->mSpinCfgRfListener1:Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener1;

    .line 284
    const v4, 0x7f05000f

    invoke-static {p0, v4, v6}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/caf/fmradio/FMStats;->adaptCfgRf:Landroid/widget/ArrayAdapter;

    .line 293
    :goto_0
    const v4, 0x7f05000e

    invoke-static {p0, v4, v6}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/caf/fmradio/FMStats;->adaptRfCfg:Landroid/widget/ArrayAdapter;

    .line 296
    const v4, 0x7f090026

    invoke-virtual {p0, v4}, Lcom/caf/fmradio/FMStats;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TableLayout;

    iput-object v4, p0, Lcom/caf/fmradio/FMStats;->tLayout:Landroid/widget/TableLayout;

    .line 298
    iget-object v4, p0, Lcom/caf/fmradio/FMStats;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-nez v4, :cond_1

    .line 299
    new-instance v4, Lqcom/fmradio/FmReceiver;

    invoke-direct {v4}, Lqcom/fmradio/FmReceiver;-><init>()V

    iput-object v4, p0, Lcom/caf/fmradio/FMStats;->mReceiver:Lqcom/fmradio/FmReceiver;

    .line 301
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 302
    .local v0, curTime:J
    const-string v4, "FMStats_"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/caf/fmradio/FMStats;->mCurrentFileName:Ljava/lang/String;

    .line 305
    sget-object v4, Lcom/caf/fmradio/FMStats;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Filename is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/caf/fmradio/FMStats;->mCurrentFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :try_start_0
    iget-object v4, p0, Lcom/caf/fmradio/FMStats;->mCurrentFileName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/caf/fmradio/FMStats;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/caf/fmradio/FMStats;->mFileCursor:Ljava/io/FileOutputStream;

    .line 310
    iget-object v4, p0, Lcom/caf/fmradio/FMStats;->mFileCursor:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_2

    .line 311
    sget-object v4, Lcom/caf/fmradio/FMStats;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "location of the file is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/caf/fmradio/FMStats;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/caf/fmradio/FMStats;->osc:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p0, v4}, Lcom/caf/fmradio/FMStats;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 320
    sget-object v4, Lcom/caf/fmradio/FMStats;->LOGTAG:Ljava/lang/String;

    const-string v5, "onCreate: Failed to Start Service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :goto_2
    iget-object v4, p0, Lcom/caf/fmradio/FMStats;->mColumnHeader:Lcom/caf/fmradio/FMStats$Result;

    const-string v5, "Freq"

    invoke-virtual {v4, v5}, Lcom/caf/fmradio/FMStats$Result;->setFreq(Ljava/lang/String;)V

    .line 328
    iget-object v4, p0, Lcom/caf/fmradio/FMStats;->mColumnHeader:Lcom/caf/fmradio/FMStats$Result;

    const-string v5, "RMSSI"

    invoke-virtual {v4, v5}, Lcom/caf/fmradio/FMStats$Result;->setRSSI(Ljava/lang/String;)V

    .line 329
    iget-object v4, p0, Lcom/caf/fmradio/FMStats;->mColumnHeader:Lcom/caf/fmradio/FMStats$Result;

    const-string v5, "IoC"

    invoke-virtual {v4, v5}, Lcom/caf/fmradio/FMStats$Result;->setIoC(Ljava/lang/String;)V

    .line 330
    iget-object v4, p0, Lcom/caf/fmradio/FMStats;->mColumnHeader:Lcom/caf/fmradio/FMStats$Result;

    const-string v5, "SINR"

    invoke-virtual {v4, v5}, Lcom/caf/fmradio/FMStats$Result;->setSINR(Ljava/lang/String;)V

    .line 331
    iget-object v4, p0, Lcom/caf/fmradio/FMStats;->mColumnHeader:Lcom/caf/fmradio/FMStats$Result;

    const-string v5, "Offset"

    invoke-virtual {v4, v5}, Lcom/caf/fmradio/FMStats$Result;->setMpxDcc(Ljava/lang/String;)V

    .line 332
    iget-object v4, p0, Lcom/caf/fmradio/FMStats;->mColumnHeader:Lcom/caf/fmradio/FMStats$Result;

    const-string v5, "IntDet"

    invoke-virtual {v4, v5}, Lcom/caf/fmradio/FMStats$Result;->setIntDet(Ljava/lang/String;)V

    .line 334
    const v4, 0x7f09001f

    invoke-virtual {p0, v4}, Lcom/caf/fmradio/FMStats;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/caf/fmradio/FMStats;->bandSweepSettingButton:Landroid/widget/TextView;

    .line 335
    iget-object v4, p0, Lcom/caf/fmradio/FMStats;->bandSweepSettingButton:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 336
    iget-object v4, p0, Lcom/caf/fmradio/FMStats;->bandSweepSettingButton:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/caf/fmradio/FMStats;->mClicktBandSweepSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    :cond_3
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/caf/fmradio/FMStats;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 340
    .local v3, pm:Landroid/os/PowerManager;
    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/caf/fmradio/FMStats;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 341
    iget-object v4, p0, Lcom/caf/fmradio/FMStats;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 343
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->registerBandSweepDelayExprdListener()V

    .line 344
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->registerBandSweepDwellExprdListener()V

    .line 345
    return-void

    .line 288
    .end local v0           #curTime:J
    .end local v3           #pm:Landroid/os/PowerManager;
    :cond_4
    new-instance v4, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;

    invoke-direct {v4, p0}, Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;-><init>(Lcom/caf/fmradio/FMStats;)V

    iput-object v4, p0, Lcom/caf/fmradio/FMStats;->mSpinCfgRfListener2:Lcom/caf/fmradio/FMStats$CfgRfItemSelectedListener2;

    .line 289
    const v4, 0x7f050010

    invoke-static {p0, v4, v6}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/caf/fmradio/FMStats;->adaptCfgRf:Landroid/widget/ArrayAdapter;

    goto/16 :goto_0

    .line 313
    .restart local v0       #curTime:J
    :catch_0
    move-exception v2

    .line 314
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 315
    sget-object v4, Lcom/caf/fmradio/FMStats;->LOGTAG:Ljava/lang/String;

    const-string v5, "Couldn\'t create the file to writeLog"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/caf/fmradio/FMStats;->mCurrentFileName:Ljava/lang/String;

    goto/16 :goto_1

    .line 322
    .end local v2           #e:Ljava/io/IOException;
    :cond_5
    sget-object v4, Lcom/caf/fmradio/FMStats;->LOGTAG:Ljava/lang/String;

    const-string v5, "onCreate: Start Service completed successfully"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 2225
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2226
    .local v0, dlgBuilder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 2231
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 2229
    :pswitch_0
    invoke-direct {p0, p1, v0}, Lcom/caf/fmradio/FMStats;->createBandSweepDialog(ILandroid/app/AlertDialog$Builder;)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0

    .line 2226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 2422
    invoke-virtual {p0}, Lcom/caf/fmradio/FMStats;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 2423
    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2424
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 373
    sget-object v1, Lcom/caf/fmradio/FMStats;->LOGTAG:Ljava/lang/String;

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->stopCurTest()V

    .line 375
    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->mUIUpdateHandlerHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->mUIUpdateHandlerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 378
    :cond_0
    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 379
    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 381
    :cond_1
    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->mBandSweepDelayExprdListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/caf/fmradio/FMStats;->unRegisterBroadcastReceiver(Landroid/content/BroadcastReceiver;)V

    .line 382
    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->mBandSweepDwellExprdListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/caf/fmradio/FMStats;->unRegisterBroadcastReceiver(Landroid/content/BroadcastReceiver;)V

    .line 383
    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->mFileCursor:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_2

    .line 385
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->mFileCursor:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :cond_2
    :goto_0
    invoke-virtual {p0, p0}, Lcom/caf/fmradio/FMStats;->unbindFromService(Landroid/content/Context;)V

    .line 392
    sget-object v1, Lcom/caf/fmradio/FMStats;->LOGTAG:Ljava/lang/String;

    const-string v2, "onDestroy: unbindFromService completed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iput-object v3, p0, Lcom/caf/fmradio/FMStats;->mReceiver:Lqcom/fmradio/FmReceiver;

    .line 394
    iput-object v3, p0, Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;

    .line 395
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/caf/fmradio/FMStats;->removeDialog(I)V

    .line 396
    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 397
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 398
    return-void

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 2563
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2573
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 2566
    :pswitch_0
    invoke-virtual {p0}, Lcom/caf/fmradio/FMStats;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2567
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->stopRecording()V

    goto :goto_0

    .line 2569
    :cond_0
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->startRecording()V

    goto :goto_0

    .line 2563
    nop

    :pswitch_data_0
    .packed-switch 0x7f090050
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 2429
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2432
    const v0, 0x7f090050

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2433
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/caf/fmradio/FMStats;->isRecording()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2434
    const v1, 0x7f060005

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2435
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->isFmOn()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2440
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 2436
    :cond_1
    if-eqz v0, :cond_0

    .line 2437
    const v1, 0x7f060006

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2438
    const v0, 0x7f090051

    invoke-direct {p0, p1, v0}, Lcom/caf/fmradio/FMStats;->setRecordDurationDisplay(Landroid/view/Menu;I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 349
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 350
    invoke-virtual {p0}, Lcom/caf/fmradio/FMStats;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    sget-object v0, Lcom/caf/fmradio/FMStats;->LOGTAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-direct {p0}, Lcom/caf/fmradio/FMStats;->initiateRecordThread()V

    .line 354
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 358
    sget-object v1, Lcom/caf/fmradio/FMStats;->LOGTAG:Ljava/lang/String;

    const-string v2, "onStop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 360
    invoke-virtual {p0}, Lcom/caf/fmradio/FMStats;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->mRecordUpdateHandlerThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/caf/fmradio/FMStats;->mRecordUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public unbindFromService(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 1999
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/FMStats$ServiceBinder;

    .line 2000
    sget-object v1, Lcom/caf/fmradio/FMStats;->LOGTAG:Ljava/lang/String;

    const-string v2, "unbindFromService: Context"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    if-nez v0, :cond_1

    .line 2003
    sget-object v0, Lcom/caf/fmradio/FMStats;->LOGTAG:Ljava/lang/String;

    const-string v1, "Trying to unbind for unknown Context"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    :cond_0
    :goto_0
    return-void

    .line 2006
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2007
    iget-object v0, p0, Lcom/caf/fmradio/FMStats;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2011
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caf/fmradio/FMStats;->sService:Lcom/caf/fmradio/IFMRadioService;

    goto :goto_0
.end method
