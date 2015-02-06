.class public Lcom/android/internal/policy/impl/keyguard/CarrierText;
.super Landroid/widget/TextView;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/CarrierText$3;,
        Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;
    }
.end annotation


# static fields
.field static final LOCALE_CARRIER_NAME_ID:I = 0x1070037

.field static final LOCKSCREEN_CARRIER_DEFAULT_ID:I = 0x1040323

.field static final ORIGIN_CARRIER_NAME_ID:I = 0x1070036

.field static final PROP_ENV_SPEC:Ljava/lang/String; = null

.field static final PROP_KEY_SHOW_CARRIER:Ljava/lang/String; = "persist.env.sys.SHOW_CARRIER"

.field private static final TAG:Ljava/lang/String; = "CarrierText"

.field private static mSeparator:Ljava/lang/CharSequence;


# instance fields
.field protected mAirplaneMode:Z

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlmn:Ljava/lang/CharSequence;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSpn:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "persist.env.spec"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->PROP_ENV_SPEC:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 120
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;-><init>(Lcom/android/internal/policy/impl/keyguard/CarrierText;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 408
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;-><init>(Lcom/android/internal/policy/impl/keyguard/CarrierText;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 122
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 124
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mAirplaneMode:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_1
    return-void

    .line 124
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "CarrierText"

    const-string v2, "get airplane mode exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/CarrierText;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mPlmn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/CarrierText;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mPlmn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/CarrierText;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSpn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/keyguard/CarrierText;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSpn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/CarrierText;)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/keyguard/CarrierText;Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/keyguard/CarrierText;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method private final bHasLocalString(Ljava/lang/String;I)Z
    .locals 3
    .parameter "originalString"
    .parameter "originNamesId"

    .prologue
    .line 473
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, origNames:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 476
    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 478
    const/4 v2, 0x1

    .line 481
    :goto_1
    return v2

    .line 475
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "plmn"
    .parameter "spn"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 344
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 345
    .local v0, plmnValid:Z
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 346
    .local v1, spnValid:Z
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 353
    .end local p0
    :cond_0
    :goto_2
    return-object p0

    .end local v0           #plmnValid:Z
    .end local v1           #spnValid:Z
    .restart local p0
    :cond_1
    move v0, v3

    .line 344
    goto :goto_0

    .restart local v0       #plmnValid:Z
    :cond_2
    move v1, v3

    .line 345
    goto :goto_1

    .line 348
    .restart local v1       #spnValid:Z
    :cond_3
    if-nez v0, :cond_0

    .line 350
    if-eqz v1, :cond_4

    move-object p0, p1

    .line 351
    goto :goto_2

    .line 353
    :cond_4
    const-string p0, ""

    goto :goto_2
.end method

.method private getCarrierHelpTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "simState"
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, carrierHelpTextId:I
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    move-result-object v1

    .line 361
    .local v1, status:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/CarrierText$3;->$SwitchMap$com$android$internal$policy$impl$keyguard$CarrierText$StatusMode:[I

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 384
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 363
    :pswitch_0
    const v0, 0x1040326

    .line 364
    goto :goto_0

    .line 367
    :pswitch_1
    const v0, 0x1040336

    .line 368
    goto :goto_0

    .line 371
    :pswitch_2
    const v0, 0x1040338

    .line 372
    goto :goto_0

    .line 375
    :pswitch_3
    const v0, 0x1040335

    .line 376
    goto :goto_0

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getCmccAdditionInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 441
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v2, :cond_0

    .line 442
    const-string v1, ""

    .line 469
    :goto_0
    return-object v1

    .line 444
    :cond_0
    const-string v1, ""

    .line 445
    .local v1, str:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    .line 446
    .local v0, radioTechnology:I
    if-nez v0, :cond_1

    .line 447
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    .line 448
    :cond_1
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 461
    :pswitch_1
    const-string v1, "3G"

    .line 462
    goto :goto_0

    .line 451
    :pswitch_2
    const-string v1, "4G"

    .line 452
    goto :goto_0

    .line 448
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;
    .locals 3
    .parameter "simState"

    .prologue
    .line 309
    if-nez p1, :cond_0

    .line 310
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    .line 340
    :goto_0
    return-object v1

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 319
    .local v0, missingAndNotProvisioned:Z
    :goto_1
    if-eqz v0, :cond_2

    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 320
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$3;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 340
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 313
    .end local v0           #missingAndNotProvisioned:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 322
    .restart local v0       #missingAndNotProvisioned:Z
    :pswitch_0
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 324
    :pswitch_1
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->PersoLocked:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 326
    :pswitch_2
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimNotReady:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 328
    :pswitch_3
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimLocked:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 330
    :pswitch_4
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimPukLocked:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 332
    :pswitch_5
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 334
    :pswitch_6
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimPermDisabled:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 336
    :pswitch_7
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 338
    :pswitch_8
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimIOError:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "simMessage"
    .parameter "emergencyCallMessage"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-static {p1, p2}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 301
    .end local p1
    :cond_0
    return-object p1
.end method

.method private registerPhoneStateListener(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 390
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 391
    .local v0, tm:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x1e1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 397
    return-void
.end method

.method private unregisterPhoneStateListener(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 401
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 402
    .local v0, tm:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 405
    return-void
.end method


# virtual methods
.method protected getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 11
    .parameter "simState"
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, carrierText:Ljava/lang/CharSequence;
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    move-result-object v7

    .line 183
    .local v7, status:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;
    const v4, 0x1040333

    .line 184
    .local v4, resTextIdOfNoSimCard:I
    sget-object v8, Lcom/android/internal/policy/impl/keyguard/CarrierText;->PROP_ENV_SPEC:Ljava/lang/String;

    const-string v9, "ChinaTelecom"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 185
    const v4, 0x1040332

    .line 188
    :cond_0
    const-string v8, "CarrierText"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "plmn"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " spn"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v8, Lcom/android/internal/policy/impl/keyguard/CarrierText$3;->$SwitchMap$com$android$internal$policy$impl$keyguard$CarrierText$StatusMode:[I

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 290
    :goto_0
    return-object v1

    .line 195
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getCmccAdditionInfo()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, addStr:Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 199
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, plmnStr:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mContext:Landroid/content/Context;

    const v9, 0x1070036

    const v10, 0x1070037

    invoke-virtual {v8, v3, v9, v10}, Landroid/content/Context;->getLocalString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, plmnName:Ljava/lang/String;
    const v8, 0x1070036

    invoke-direct {p0, v3, v8}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->bHasLocalString(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 205
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 207
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p2

    .line 213
    .end local v2           #plmnName:Ljava/lang/String;
    .end local v3           #plmnStr:Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz p3, :cond_4

    .line 215
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 216
    .local v6, spnStr:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mContext:Landroid/content/Context;

    const v9, 0x1070036

    const v10, 0x1070037

    invoke-virtual {v8, v6, v9, v10}, Landroid/content/Context;->getLocalString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 219
    .local v5, spnName:Ljava/lang/String;
    const v8, 0x1070036

    invoke-direct {p0, v6, v8}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->bHasLocalString(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 222
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 224
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p3

    .line 232
    .end local v5           #spnName:Ljava/lang/String;
    .end local v6           #spnStr:Ljava/lang/String;
    :cond_4
    :goto_2
    if-eqz p2, :cond_5

    .line 233
    const-string v8, ""

    invoke-static {p2, v8}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 235
    :cond_5
    invoke-static {p2, p3}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 238
    goto :goto_0

    .line 241
    .end local v0           #addStr:Ljava/lang/String;
    :pswitch_1
    const/4 v1, 0x0

    .line 242
    goto :goto_0

    .line 245
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x1040341

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, ""

    invoke-direct {p0, v8, v9}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 248
    goto/16 :goto_0

    .line 255
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, ""

    invoke-direct {p0, v8, v9}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 258
    goto/16 :goto_0

    .line 261
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x1040337

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 263
    goto/16 :goto_0

    .line 266
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, ""

    invoke-direct {p0, v8, v9}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 269
    goto/16 :goto_0

    .line 272
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x1040344

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, ""

    invoke-direct {p0, v8, v9}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 275
    goto/16 :goto_0

    .line 278
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x1040342

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, ""

    invoke-direct {p0, v8, v9}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 281
    goto/16 :goto_0

    .line 284
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x104001b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, ""

    invoke-direct {p0, v8, v9}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_0

    .line 225
    .restart local v0       #addStr:Ljava/lang/String;
    :catch_0
    move-exception v8

    goto/16 :goto_2

    .line 208
    :catch_1
    move-exception v8

    goto/16 :goto_1

    .line 191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 153
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 154
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 158
    const-string v0, "CarrierText"

    const-string v1, "enter onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 164
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->unregisterPhoneStateListener(Landroid/content/Context;)V

    .line 165
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 166
    const-string v0, "CarrierText"

    const-string v1, "enter onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 146
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104059a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    .line 147
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->setSelected(Z)V

    .line 148
    return-void
.end method

.method protected updateCarrierText(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "simState"
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 132
    const-string v0, ""

    .line 133
    .local v0, text:Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mAirplaneMode:Z

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040346

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 140
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    .line 141
    return-void

    .line 137
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method
