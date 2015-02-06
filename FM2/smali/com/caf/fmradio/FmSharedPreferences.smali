.class public Lcom/caf/fmradio/FmSharedPreferences;
.super Ljava/lang/Object;
.source "FmSharedPreferences.java"


# static fields
.field private static LAST_AF_JUMP_VALUE:Ljava/lang/String;

.field public static final TAG_CATEGORIES:[Ljava/lang/String;

.field public static final TAG_CATEGORY_RANGE:[[I

.field public static final TAG_NAMES:[Ljava/lang/String;

.field private static mAFAutoSwitch:Z

.field private static mAudioOutputMode:Z

.field private static mBandMaxFreq:I

.field private static mBandMinFreq:I

.field private static mChanSpacing:I

.field private static mCountry:I

.field private static mFMConfiguration:Lqcom/fmradio/FmConfig;

.field private static mFrequencyBand_Stepsize:I

.field private static mLastAudioMode:I

.field private static mListEntries:[Ljava/lang/CharSequence;

.field private static mListIndex:I

.field private static mListOfPlists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/caf/fmradio/PresetList;",
            ">;"
        }
    .end annotation
.end field

.field private static mListValues:[Ljava/lang/CharSequence;

.field private static mNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mRecordDuration:I

.field private static mTunedFrequency:I

.field public static num_tags:I

.field public static tagList:[Ljava/util/Set;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 112
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DUMMY"

    aput-object v1, v0, v4

    const-string v1, "ITEM"

    aput-object v1, v0, v5

    const-string v1, "INFO"

    aput-object v1, v0, v3

    const-string v1, "PROGRAMME"

    aput-object v1, v0, v6

    const-string v1, "INTERACTIVITY"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "RFU"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "PRIVATE_CLASSES"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DESCRIPTOR"

    aput-object v2, v0, v1

    sput-object v0, Lcom/caf/fmradio/FmSharedPreferences;->TAG_CATEGORIES:[Ljava/lang/String;

    .line 115
    const/16 v0, 0x8

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    sput-object v0, Lcom/caf/fmradio/FmSharedPreferences;->TAG_CATEGORY_RANGE:[[I

    .line 118
    const/16 v0, 0x3f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DUMMY"

    aput-object v1, v0, v4

    const-string v1, "ITEM.TITLE"

    aput-object v1, v0, v5

    const-string v1, "ITEM.ALBUM"

    aput-object v1, v0, v3

    const-string v1, "ITEM.TRACKNUM"

    aput-object v1, v0, v6

    const-string v1, "ITEM.ARTIST"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ITEM.COMPOSITION"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ITEM.MOVEMENT"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ITEM.CONDUCTOR"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ITEM.COMPOSER"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ITEM.BAND"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ITEM.COMMENT"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ITEM.GENERE"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "INFO.NEWS"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "INFO.NEWS_LOCAL"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "INFO.STOCK"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "INFO.SPORT"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "INFO.LOTTERY"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "INFO.HOROSCOPE"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "INFO.DAILY_DIVERSION"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "INFO.HEALTH"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "INFO.EVENT"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "INFO.SCENE"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "INFO.CINEMA"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "INFO.TV"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "INFO.DATE_TIME"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "INFO.WEATHER"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "INFO.TRAFFIC"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "INFO.ALARM"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "INFO.ADS"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "INFO.URL"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "INFO.OTHER"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "PROGRAMME.STATIONNAME_SHORT"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "PROGRAMME.NOW"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "PROGRAMME.NEXT"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "PROGRAMME.PART"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "PROGRAMME.HOST"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "PROGRAMME.EDITORIAL_STAFF"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "PROGRAMME.FREQUENCY"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "PROGRAMME.HOMEPAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "PROGRAMME.SUBCHANNEL"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "PHONE.HOTLINE"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "PHONE.STUDIO"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "PHONE.OTHER"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "SMS.STUDIO"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "SMS.OTHER"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "EMAIL.HOTLINE"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "EMAIL.STUDIO"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "EMAIL.OTHER"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "MMS.OTHER"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "CHAT"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "CHAT.CENTRE"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "VOTE.QUESTION"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "VOTE.CENTRE"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "RFU.1"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "RFU.2"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "PRIVATE.1"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "PRIVATE.2"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "PRIVATE.3"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "PLACE"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "APPOINTMENT"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "IDENTIFIER"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "PURCHASE"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "GET_DATA"

    aput-object v2, v0, v1

    sput-object v0, Lcom/caf/fmradio/FmSharedPreferences;->TAG_NAMES:[Ljava/lang/String;

    .line 139
    const-string v0, "last_af_jump_value"

    sput-object v0, Lcom/caf/fmradio/FmSharedPreferences;->LAST_AF_JUMP_VALUE:Ljava/lang/String;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mNameMap:Ljava/util/Map;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mListOfPlists:Ljava/util/List;

    .line 143
    const/16 v0, 0x40

    new-array v0, v0, [Ljava/util/TreeSet;

    sput-object v0, Lcom/caf/fmradio/FmSharedPreferences;->tagList:[Ljava/util/Set;

    .line 144
    sput v4, Lcom/caf/fmradio/FmSharedPreferences;->num_tags:I

    .line 156
    const v0, 0x17f34

    sput v0, Lcom/caf/fmradio/FmSharedPreferences;->mTunedFrequency:I

    .line 157
    const v0, 0x128e0

    sput v0, Lcom/caf/fmradio/FmSharedPreferences;->mBandMinFreq:I

    .line 158
    const v0, 0x1a5e0

    sput v0, Lcom/caf/fmradio/FmSharedPreferences;->mBandMaxFreq:I

    .line 159
    sput v4, Lcom/caf/fmradio/FmSharedPreferences;->mChanSpacing:I

    .line 160
    const/16 v0, 0xc8

    sput v0, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    .line 162
    sput v4, Lcom/caf/fmradio/FmSharedPreferences;->mCountry:I

    .line 166
    sput-boolean v5, Lcom/caf/fmradio/FmSharedPreferences;->mAudioOutputMode:Z

    .line 167
    sput-boolean v5, Lcom/caf/fmradio/FmSharedPreferences;->mAFAutoSwitch:Z

    .line 168
    sput v4, Lcom/caf/fmradio/FmSharedPreferences;->mRecordDuration:I

    .line 169
    const/4 v0, -0x1

    sput v0, Lcom/caf/fmradio/FmSharedPreferences;->mLastAudioMode:I

    return-void

    .line 115
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x29t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x36t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x38t 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x3bt 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 171
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/caf/fmradio/FmSharedPreferences;->mContext:Landroid/content/Context;

    .line 173
    new-instance v0, Lqcom/fmradio/FmConfig;

    invoke-direct {v0}, Lqcom/fmradio/FmConfig;-><init>()V

    sput-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    .line 174
    invoke-virtual {p0}, Lcom/caf/fmradio/FmSharedPreferences;->Load()V

    .line 175
    return-void
.end method

.method public static SetDefaults()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 584
    sput v2, Lcom/caf/fmradio/FmSharedPreferences;->mListIndex:I

    .line 585
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mListOfPlists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 586
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/caf/fmradio/FmSharedPreferences;->setCountry(I)V

    .line 592
    :goto_0
    return-void

    .line 590
    :cond_0
    invoke-static {v2}, Lcom/caf/fmradio/FmSharedPreferences;->setCountry(I)V

    goto :goto_0
.end method

.method private static addListIfEmpty(I)V
    .locals 1
    .parameter "listIndex"

    .prologue
    .line 314
    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getNumList()I

    move-result v0

    if-nez v0, :cond_0

    .line 316
    const-string v0, "FM"

    invoke-static {v0}, Lcom/caf/fmradio/FmSharedPreferences;->createPresetList(Ljava/lang/String;)I

    .line 318
    :cond_0
    return-void
.end method

.method public static addStation(Ljava/lang/String;II)V
    .locals 1
    .parameter "name"
    .parameter "freq"
    .parameter "listIndex"

    .prologue
    .line 324
    invoke-static {p2}, Lcom/caf/fmradio/FmSharedPreferences;->addListIfEmpty(I)V

    .line 325
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getNumList()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 327
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mListOfPlists:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/PresetList;

    invoke-virtual {v0, p0, p1}, Lcom/caf/fmradio/PresetList;->addStation(Ljava/lang/String;I)Lcom/caf/fmradio/PresetStation;

    .line 329
    :cond_0
    return-void
.end method

.method public static addTags(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "s"

    .prologue
    .line 343
    if-ltz p0, :cond_1

    const/16 v0, 0x40

    if-ge p0, v0, :cond_1

    .line 344
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->tagList:[Ljava/util/Set;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    .line 345
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->tagList:[Ljava/util/Set;

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    aput-object v1, v0, p0

    .line 347
    :cond_0
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->tagList:[Ljava/util/Set;

    aget-object v0, v0, p0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    sget v0, Lcom/caf/fmradio/FmSharedPreferences;->num_tags:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/caf/fmradio/FmSharedPreferences;->num_tags:I

    .line 350
    :cond_1
    return-void
.end method

.method public static clearTags()V
    .locals 4

    .prologue
    .line 352
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_1

    .line 353
    sget-object v1, Lcom/caf/fmradio/FmSharedPreferences;->tagList:[Ljava/util/Set;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 354
    sget-object v1, Lcom/caf/fmradio/FmSharedPreferences;->tagList:[Ljava/util/Set;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 355
    const-string v1, "FmSharedPreferences"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleared tags of type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_1
    const/4 v1, 0x0

    sput v1, Lcom/caf/fmradio/FmSharedPreferences;->num_tags:I

    .line 359
    return-void
.end method

.method public static createFirstPresetList(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 418
    const/4 v0, 0x0

    sput v0, Lcom/caf/fmradio/FmSharedPreferences;->mListIndex:I

    .line 419
    invoke-static {p0}, Lcom/caf/fmradio/FmSharedPreferences;->createPresetList(Ljava/lang/String;)I

    .line 420
    return-void
.end method

.method public static createPresetList(Ljava/lang/String;)I
    .locals 4
    .parameter "name"

    .prologue
    .line 408
    sget-object v2, Lcom/caf/fmradio/FmSharedPreferences;->mListOfPlists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 409
    .local v1, numLists:I
    sget-object v2, Lcom/caf/fmradio/FmSharedPreferences;->mListOfPlists:Ljava/util/List;

    new-instance v3, Lcom/caf/fmradio/PresetList;

    invoke-direct {v3, p0}, Lcom/caf/fmradio/PresetList;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, index:Ljava/lang/String;
    sget-object v2, Lcom/caf/fmradio/FmSharedPreferences;->mNameMap:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->repopulateEntryValueLists()[Ljava/lang/CharSequence;

    .line 413
    return v1
.end method

.method public static getAudioOutputMode()Z
    .locals 1

    .prologue
    .line 1139
    sget-boolean v0, Lcom/caf/fmradio/FmSharedPreferences;->mAudioOutputMode:Z

    return v0
.end method

.method public static getAutoAFSwitch()Z
    .locals 1

    .prologue
    .line 1175
    sget-boolean v0, Lcom/caf/fmradio/FmSharedPreferences;->mAFAutoSwitch:Z

    return v0
.end method

.method public static getChSpacing()I
    .locals 1

    .prologue
    .line 742
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0}, Lqcom/fmradio/FmConfig;->getChSpacing()I

    move-result v0

    return v0
.end method

.method public static getCountry()I
    .locals 1

    .prologue
    .line 1130
    sget v0, Lcom/caf/fmradio/FmSharedPreferences;->mCountry:I

    return v0
.end method

.method public static getCurrentListIndex()I
    .locals 1

    .prologue
    .line 302
    sget v0, Lcom/caf/fmradio/FmSharedPreferences;->mListIndex:I

    return v0
.end method

.method public static getFMConfiguration()Lqcom/fmradio/FmConfig;
    .locals 1

    .prologue
    .line 673
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    return-object v0
.end method

.method public static getFrequencyStepSize()I
    .locals 1

    .prologue
    .line 794
    sget v0, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    return v0
.end method

.method public static getLastAudioMode()I
    .locals 1

    .prologue
    .line 1143
    sget v0, Lcom/caf/fmradio/FmSharedPreferences;->mLastAudioMode:I

    return v0
.end method

.method public static getListStationCount()I
    .locals 3

    .prologue
    .line 384
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getCurrentListIndex()I

    move-result v0

    .line 385
    .local v0, listIndex:I
    const/4 v1, 0x0

    .line 386
    .local v1, numStations:I
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getNumList()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 388
    sget-object v2, Lcom/caf/fmradio/FmSharedPreferences;->mListOfPlists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caf/fmradio/PresetList;

    invoke-virtual {v2}, Lcom/caf/fmradio/PresetList;->getStationCount()I

    move-result v1

    .line 390
    :cond_0
    return v1
.end method

.method public static getLowerLimit()I
    .locals 1

    .prologue
    .line 791
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0}, Lqcom/fmradio/FmConfig;->getLowerLimit()I

    move-result v0

    return v0
.end method

.method public static getNextTuneFrequency()I
    .locals 3

    .prologue
    .line 636
    sget v1, Lcom/caf/fmradio/FmSharedPreferences;->mTunedFrequency:I

    sget v2, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    add-int v0, v1, v2

    .line 637
    .local v0, nextFrequency:I
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getUpperLimit()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 639
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getLowerLimit()I

    move-result v0

    .line 641
    :cond_0
    return v0
.end method

.method public static getNextTuneFrequency(I)I
    .locals 2
    .parameter "frequency"

    .prologue
    .line 627
    sget v1, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    add-int v0, p0, v1

    .line 628
    .local v0, nextFrequency:I
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getUpperLimit()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 630
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getLowerLimit()I

    move-result v0

    .line 632
    :cond_0
    return v0
.end method

.method public static getNumList()I
    .locals 1

    .prologue
    .line 298
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mListOfPlists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static getPrevTuneFrequency()I
    .locals 3

    .prologue
    .line 654
    sget v1, Lcom/caf/fmradio/FmSharedPreferences;->mTunedFrequency:I

    sget v2, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    sub-int v0, v1, v2

    .line 655
    .local v0, prevFrequency:I
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getLowerLimit()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 657
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getUpperLimit()I

    move-result v0

    .line 659
    :cond_0
    return v0
.end method

.method public static getPrevTuneFrequency(I)I
    .locals 2
    .parameter "frequency"

    .prologue
    .line 645
    sget v1, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    sub-int v0, p0, v1

    .line 646
    .local v0, prevFrequency:I
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getLowerLimit()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 648
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getUpperLimit()I

    move-result v0

    .line 650
    :cond_0
    return v0
.end method

.method public static getRecordDuration()I
    .locals 1

    .prologue
    .line 1167
    sget v0, Lcom/caf/fmradio/FmSharedPreferences;->mRecordDuration:I

    return v0
.end method

.method public static getStationInList(I)Lcom/caf/fmradio/PresetStation;
    .locals 3
    .parameter "index"

    .prologue
    .line 251
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getCurrentListIndex()I

    move-result v0

    .line 252
    .local v0, listIndex:I
    const/4 v1, 0x0

    .line 253
    .local v1, station:Lcom/caf/fmradio/PresetStation;
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getNumList()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 255
    sget-object v2, Lcom/caf/fmradio/FmSharedPreferences;->mListOfPlists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caf/fmradio/PresetList;

    invoke-virtual {v2, p0}, Lcom/caf/fmradio/PresetList;->getStationFromIndex(I)Lcom/caf/fmradio/PresetStation;

    move-result-object v1

    .line 257
    :cond_0
    return-object v1
.end method

.method public static getStationList(I)Lcom/caf/fmradio/PresetList;
    .locals 1
    .parameter "listIndex"

    .prologue
    .line 233
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getNumList()I

    move-result v0

    if-ge p0, v0, :cond_0

    .line 235
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mListOfPlists:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/PresetList;

    .line 237
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTunedFrequency()I
    .locals 1

    .prologue
    .line 623
    sget v0, Lcom/caf/fmradio/FmSharedPreferences;->mTunedFrequency:I

    return v0
.end method

.method public static getUpperLimit()I
    .locals 1

    .prologue
    .line 786
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0}, Lqcom/fmradio/FmConfig;->getUpperLimit()I

    move-result v0

    return v0
.end method

.method public static isRBDSStd()Z
    .locals 1

    .prologue
    .line 767
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0}, Lqcom/fmradio/FmConfig;->getRdsStd()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeStation(ILcom/caf/fmradio/PresetStation;)V
    .locals 1
    .parameter "listIndex"
    .parameter "station"

    .prologue
    .line 184
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getNumList()I

    move-result v0

    if-ge p0, v0, :cond_0

    .line 186
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mListOfPlists:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/PresetList;

    invoke-virtual {v0, p1}, Lcom/caf/fmradio/PresetList;->removeStation(Lcom/caf/fmradio/PresetStation;)V

    .line 188
    :cond_0
    return-void
.end method

.method public static repopulateEntryValueLists()[Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 424
    sget-object v4, Lcom/caf/fmradio/FmSharedPreferences;->mListOfPlists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 425
    .local v2, presetIter:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/caf/fmradio/PresetList;>;"
    sget-object v4, Lcom/caf/fmradio/FmSharedPreferences;->mListOfPlists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 427
    .local v1, numLists:I
    new-array v4, v1, [Ljava/lang/CharSequence;

    sput-object v4, Lcom/caf/fmradio/FmSharedPreferences;->mListEntries:[Ljava/lang/CharSequence;

    .line 428
    new-array v4, v1, [Ljava/lang/CharSequence;

    sput-object v4, Lcom/caf/fmradio/FmSharedPreferences;->mListValues:[Ljava/lang/CharSequence;

    .line 429
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 431
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caf/fmradio/PresetList;

    .line 432
    .local v3, temp:Lcom/caf/fmradio/PresetList;
    sget-object v4, Lcom/caf/fmradio/FmSharedPreferences;->mListEntries:[Ljava/lang/CharSequence;

    invoke-virtual {v3}, Lcom/caf/fmradio/PresetList;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 433
    sget-object v4, Lcom/caf/fmradio/FmSharedPreferences;->mListValues:[Ljava/lang/CharSequence;

    invoke-virtual {v3}, Lcom/caf/fmradio/PresetList;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 429
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    .end local v3           #temp:Lcom/caf/fmradio/PresetList;
    :cond_0
    sget-object v4, Lcom/caf/fmradio/FmSharedPreferences;->mListEntries:[Ljava/lang/CharSequence;

    return-object v4
.end method

.method public static sameStationExists(Lcom/caf/fmradio/PresetStation;)Z
    .locals 3
    .parameter "station"

    .prologue
    .line 373
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getCurrentListIndex()I

    move-result v1

    .line 374
    .local v1, listIndex:I
    const/4 v0, 0x0

    .line 375
    .local v0, exists:Z
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getNumList()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 377
    sget-object v2, Lcom/caf/fmradio/FmSharedPreferences;->mListOfPlists:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caf/fmradio/PresetList;

    invoke-virtual {v2, p0}, Lcom/caf/fmradio/PresetList;->sameStationExists(Lcom/caf/fmradio/PresetStation;)Z

    move-result v0

    .line 379
    :cond_0
    return v0
.end method

.method public static setAudioOutputMode(Z)V
    .locals 0
    .parameter "bStereo"

    .prologue
    .line 1135
    sput-boolean p0, Lcom/caf/fmradio/FmSharedPreferences;->mAudioOutputMode:Z

    .line 1136
    return-void
.end method

.method public static setAutoAFSwitch(Z)V
    .locals 0
    .parameter "bAFAutoSwitch"

    .prologue
    .line 1171
    sput-boolean p0, Lcom/caf/fmradio/FmSharedPreferences;->mAFAutoSwitch:Z

    .line 1172
    return-void
.end method

.method public static setChSpacing(I)V
    .locals 1
    .parameter "spacing"

    .prologue
    .line 718
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    .line 721
    const/16 v0, 0xc8

    sput v0, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    .line 722
    packed-switch p0, :pswitch_data_0

    .line 735
    :goto_0
    sput p0, Lcom/caf/fmradio/FmSharedPreferences;->mChanSpacing:I

    .line 736
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, p0}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 738
    :cond_0
    return-void

    .line 726
    :pswitch_0
    const/16 v0, 0x64

    sput v0, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto :goto_0

    .line 731
    :pswitch_1
    const/16 v0, 0x32

    sput v0, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto :goto_0

    .line 722
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setCountry(I)V
    .locals 7
    .parameter "nCountryCode"

    .prologue
    const/4 v6, 0x2

    const/16 v5, 0x32

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x64

    .line 813
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 814
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 815
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setEmphasis(I)V

    .line 816
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setRdsStd(I)V

    .line 817
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x155cc

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 818
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x1a5e0

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setUpperLimit(I)V

    .line 820
    packed-switch p0, :pswitch_data_0

    .line 1112
    const-string v0, "FmSharedPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid: countryCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    const/4 p0, 0x0

    .line 1116
    :goto_0
    sput p0, Lcom/caf/fmradio/FmSharedPreferences;->mCountry:I

    .line 1117
    const-string v0, "FmSharedPreferences"

    const-string v1, "====================================================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const-string v0, "FmSharedPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Country     :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    const-string v0, "FmSharedPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RadioBand   :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v2}, Lqcom/fmradio/FmConfig;->getRadioBand()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    const-string v0, "FmSharedPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Emphasis    :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v2}, Lqcom/fmradio/FmConfig;->getEmphasis()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    const-string v0, "FmSharedPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChSpacing   :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v2}, Lqcom/fmradio/FmConfig;->getChSpacing()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    const-string v0, "FmSharedPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RdsStd      :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v2}, Lqcom/fmradio/FmConfig;->getRdsStd()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    const-string v0, "FmSharedPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LowerLimit  :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v2}, Lqcom/fmradio/FmConfig;->getLowerLimit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    const-string v0, "FmSharedPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpperLimit  :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v2}, Lqcom/fmradio/FmConfig;->getUpperLimit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    const-string v0, "FmSharedPreferences"

    const-string v1, "====================================================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    return-void

    .line 825
    :pswitch_0
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 826
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 827
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setEmphasis(I)V

    .line 828
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setRdsStd(I)V

    .line 829
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x155cc

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 830
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x1a57c

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setUpperLimit(I)V

    .line 831
    const/16 v0, 0xc8

    sput v0, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 837
    :pswitch_1
    sput v2, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 844
    :pswitch_2
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v6}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 845
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 846
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setEmphasis(I)V

    .line 847
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x128e0

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 848
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x15f90

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setUpperLimit(I)V

    .line 849
    sput v2, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 855
    :pswitch_3
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 856
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v6}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 857
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setEmphasis(I)V

    .line 858
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x15f90

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 859
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x1a5e0

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setUpperLimit(I)V

    .line 860
    sput v5, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 868
    :pswitch_4
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x15694

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 869
    sput v2, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 875
    :pswitch_5
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setEmphasis(I)V

    .line 876
    sput v5, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 882
    :pswitch_6
    sput v2, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 888
    :pswitch_7
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 889
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 890
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x155cc

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 891
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x1a57c

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setUpperLimit(I)V

    .line 892
    const/16 v0, 0xc8

    sput v0, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 898
    :pswitch_8
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x153d8

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 899
    sput v2, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 905
    :pswitch_9
    sput v2, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 911
    :pswitch_a
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 912
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v6}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 913
    sput v5, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 919
    :pswitch_b
    sput v2, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 925
    :pswitch_c
    sput v2, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 933
    :pswitch_d
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 934
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v6}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 935
    sput v5, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 941
    :pswitch_e
    sput v2, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 947
    :pswitch_f
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x16378

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 948
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x19fa0

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setUpperLimit(I)V

    .line 949
    sput v2, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 955
    :pswitch_10
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 956
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v6}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 957
    sput v5, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 963
    :pswitch_11
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 964
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v6}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 965
    sput v5, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 971
    :pswitch_12
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 972
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 973
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x1a57c

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setUpperLimit(I)V

    .line 974
    const/16 v0, 0xc8

    sput v0, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 980
    :pswitch_13
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 981
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 982
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setEmphasis(I)V

    .line 983
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setRdsStd(I)V

    .line 984
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x15824

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 985
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x1a57c

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setUpperLimit(I)V

    .line 986
    const/16 v0, 0xc8

    sput v0, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 992
    :pswitch_14
    sput v2, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 998
    :pswitch_15
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x157c0

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 999
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x1a1f8

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setUpperLimit(I)V

    .line 1000
    sput v2, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 1006
    :pswitch_16
    sput v2, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 1012
    :pswitch_17
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 1013
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 1014
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x155cc

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 1015
    sput v2, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 1021
    :pswitch_18
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 1022
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v6}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 1023
    sput v5, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 1029
    :pswitch_19
    sput v2, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 1035
    :pswitch_1a
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x157c0

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 1036
    sput v2, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 1042
    :pswitch_1b
    sput v2, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 1048
    :pswitch_1c
    sput v2, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 1054
    :pswitch_1d
    sput v2, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 1060
    :pswitch_1e
    sput v2, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 1066
    :pswitch_1f
    sput v2, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 1072
    :pswitch_20
    sput v2, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 1078
    :pswitch_21
    sput v2, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 1084
    :pswitch_22
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 1085
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 1086
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setEmphasis(I)V

    .line 1087
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setRdsStd(I)V

    .line 1088
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x15824

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 1089
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x1a57c

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setUpperLimit(I)V

    .line 1090
    const/16 v0, 0xc8

    sput v0, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 1095
    :pswitch_23
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 1096
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    sget v1, Lcom/caf/fmradio/FmSharedPreferences;->mChanSpacing:I

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 1097
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setEmphasis(I)V

    .line 1098
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setRdsStd(I)V

    .line 1099
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    sget v1, Lcom/caf/fmradio/FmSharedPreferences;->mBandMinFreq:I

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 1100
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    sget v1, Lcom/caf/fmradio/FmSharedPreferences;->mBandMaxFreq:I

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setUpperLimit(I)V

    .line 1101
    sget v0, Lcom/caf/fmradio/FmSharedPreferences;->mChanSpacing:I

    if-nez v0, :cond_0

    .line 1102
    const/16 v0, 0xc8

    sput v0, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 1103
    :cond_0
    sget v0, Lcom/caf/fmradio/FmSharedPreferences;->mChanSpacing:I

    if-ne v0, v4, :cond_1

    .line 1104
    sput v2, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 1106
    :cond_1
    sput v5, Lcom/caf/fmradio/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 820
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
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
    .end packed-switch
.end method

.method public static setLastAudioMode(I)V
    .locals 0
    .parameter "audiomode"

    .prologue
    .line 1147
    sput p0, Lcom/caf/fmradio/FmSharedPreferences;->mLastAudioMode:I

    .line 1148
    return-void
.end method

.method public static setLowerLimit(I)V
    .locals 2
    .parameter "lowLimit"

    .prologue
    .line 797
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, p0}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 798
    sget v0, Lcom/caf/fmradio/FmSharedPreferences;->mCountry:I

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    .line 799
    sput p0, Lcom/caf/fmradio/FmSharedPreferences;->mBandMinFreq:I

    .line 801
    :cond_0
    return-void
.end method

.method public static setRecordDuration(I)V
    .locals 3
    .parameter "durationIndex"

    .prologue
    .line 1151
    const-string v0, "FmSharedPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordDuration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    packed-switch p0, :pswitch_data_0

    .line 1159
    const-string v0, "FmSharedPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid: durationIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :goto_0
    return-void

    .line 1153
    :pswitch_0
    const/4 v0, 0x5

    sput v0, Lcom/caf/fmradio/FmSharedPreferences;->mRecordDuration:I

    goto :goto_0

    .line 1154
    :pswitch_1
    const/16 v0, 0xf

    sput v0, Lcom/caf/fmradio/FmSharedPreferences;->mRecordDuration:I

    goto :goto_0

    .line 1155
    :pswitch_2
    const/16 v0, 0x1e

    sput v0, Lcom/caf/fmradio/FmSharedPreferences;->mRecordDuration:I

    goto :goto_0

    .line 1156
    :pswitch_3
    const/4 v0, -0x1

    sput v0, Lcom/caf/fmradio/FmSharedPreferences;->mRecordDuration:I

    goto :goto_0

    .line 1152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static setTunedFrequency(I)V
    .locals 0
    .parameter "frequency"

    .prologue
    .line 619
    sput p0, Lcom/caf/fmradio/FmSharedPreferences;->mTunedFrequency:I

    .line 620
    return-void
.end method

.method public static setUpperLimit(I)V
    .locals 2
    .parameter "upLimit"

    .prologue
    .line 804
    sget-object v0, Lcom/caf/fmradio/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, p0}, Lqcom/fmradio/FmConfig;->setUpperLimit(I)V

    .line 805
    sget v0, Lcom/caf/fmradio/FmSharedPreferences;->mCountry:I

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    .line 806
    sput p0, Lcom/caf/fmradio/FmSharedPreferences;->mBandMaxFreq:I

    .line 808
    :cond_0
    return-void
.end method


# virtual methods
.method public Load()V
    .locals 17

    .prologue
    .line 444
    const-string v14, "FmSharedPreferences"

    const-string v15, "Load preferences "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/caf/fmradio/FmSharedPreferences;->mContext:Landroid/content/Context;

    if-nez v14, :cond_1

    .line 447
    const-string v14, "FmSharedPreferences"

    const-string v15, "mContext = null "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/caf/fmradio/FmSharedPreferences;->mContext:Landroid/content/Context;

    const-string v15, "fmradio_prefs"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 451
    .local v8, sp:Landroid/content/SharedPreferences;
    const-string v14, "last_frequency"

    const v15, 0x17f34

    invoke-interface {v8, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    sput v14, Lcom/caf/fmradio/FmSharedPreferences;->mTunedFrequency:I

    .line 452
    const-string v14, "last_record_duration"

    const/4 v15, 0x5

    invoke-interface {v8, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    sput v14, Lcom/caf/fmradio/FmSharedPreferences;->mRecordDuration:I

    .line 453
    sget-object v14, Lcom/caf/fmradio/FmSharedPreferences;->LAST_AF_JUMP_VALUE:Ljava/lang/String;

    const/4 v15, 0x1

    invoke-interface {v8, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    sput-boolean v14, Lcom/caf/fmradio/FmSharedPreferences;->mAFAutoSwitch:Z

    .line 454
    const-string v14, "audio_output_mode"

    const/4 v15, 0x1

    invoke-interface {v8, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    sput-boolean v14, Lcom/caf/fmradio/FmSharedPreferences;->mAudioOutputMode:Z

    .line 456
    const-string v14, "fmconfig_country"

    const/4 v15, 0x0

    invoke-interface {v8, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    const/16 v15, 0x24

    if-ne v14, v15, :cond_2

    .line 457
    const-string v14, "fmconfig_min"

    sget v15, Lcom/caf/fmradio/FmSharedPreferences;->mBandMinFreq:I

    invoke-interface {v8, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    sput v14, Lcom/caf/fmradio/FmSharedPreferences;->mBandMinFreq:I

    .line 458
    const-string v14, "fmconfig_max"

    sget v15, Lcom/caf/fmradio/FmSharedPreferences;->mBandMaxFreq:I

    invoke-interface {v8, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    sput v14, Lcom/caf/fmradio/FmSharedPreferences;->mBandMaxFreq:I

    .line 459
    const-string v14, "fmconfig_step"

    sget v15, Lcom/caf/fmradio/FmSharedPreferences;->mChanSpacing:I

    invoke-interface {v8, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    sput v14, Lcom/caf/fmradio/FmSharedPreferences;->mChanSpacing:I

    .line 462
    :cond_2
    const-string v14, "list_number"

    const/4 v15, 0x1

    invoke-interface {v8, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 463
    .local v5, num_lists:I
    const-string v14, "FmSharedPreferences"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "num_lists  = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string v14, "FmSharedPreferences"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mListOfPlists.size()  = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/caf/fmradio/FmSharedPreferences;->mListOfPlists:Ljava/util/List;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    sget-object v14, Lcom/caf/fmradio/FmSharedPreferences;->mListOfPlists:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_7

    .line 467
    const/4 v2, 0x0

    .local v2, listIter:I
    :goto_1
    if-ge v2, v5, :cond_7

    .line 468
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "list_name"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FM - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int/lit8 v16, v2, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 469
    .local v3, listName:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "preset_number"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v8, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 470
    .local v4, numStations:I
    const-string v14, "FmSharedPreferences"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "numStations  = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const-string v14, "FmSharedPreferences"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "listIter  = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    if-nez v2, :cond_4

    .line 473
    invoke-static {v3}, Lcom/caf/fmradio/FmSharedPreferences;->createFirstPresetList(Ljava/lang/String;)V

    .line 478
    :goto_2
    sget-object v14, Lcom/caf/fmradio/FmSharedPreferences;->mListOfPlists:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caf/fmradio/PresetList;

    .line 480
    .local v1, curList:Lcom/caf/fmradio/PresetList;
    const/4 v12, 0x0

    .local v12, stationIter:I
    :goto_3
    if-ge v12, v4, :cond_6

    .line 481
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "station_name"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-interface {v8, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 483
    .local v13, stationName:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "station_freq"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v8, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 485
    .local v10, stationFreq:I
    const-string v14, "FmSharedPreferences"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "stationFreq  = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const-string v14, "FmSharedPreferences"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "stationIter  = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const-string v14, "FmSharedPreferences"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "listIter  = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    if-lez v10, :cond_3

    .line 490
    invoke-virtual {v1, v13, v10}, Lcom/caf/fmradio/PresetList;->addStation(Ljava/lang/String;I)Lcom/caf/fmradio/PresetStation;

    move-result-object v9

    .line 492
    .local v9, station:Lcom/caf/fmradio/PresetStation;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "station_id"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v8, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 494
    .local v11, stationId:I
    invoke-virtual {v9, v11}, Lcom/caf/fmradio/PresetStation;->setPI(I)V

    .line 496
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "station_pty"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v8, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 497
    .local v6, pty:I
    invoke-virtual {v9, v6}, Lcom/caf/fmradio/PresetStation;->setPty(I)V

    .line 499
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "station_rds"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v8, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 501
    .local v7, rdsSupported:I
    if-eqz v7, :cond_5

    .line 502
    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Lcom/caf/fmradio/PresetStation;->setRDSSupported(Z)V

    .line 480
    .end local v6           #pty:I
    .end local v7           #rdsSupported:I
    .end local v9           #station:Lcom/caf/fmradio/PresetStation;
    .end local v11           #stationId:I
    :cond_3
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 475
    .end local v1           #curList:Lcom/caf/fmradio/PresetList;
    .end local v10           #stationFreq:I
    .end local v12           #stationIter:I
    .end local v13           #stationName:Ljava/lang/String;
    :cond_4
    invoke-static {v3}, Lcom/caf/fmradio/FmSharedPreferences;->createPresetList(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 504
    .restart local v1       #curList:Lcom/caf/fmradio/PresetList;
    .restart local v6       #pty:I
    .restart local v7       #rdsSupported:I
    .restart local v9       #station:Lcom/caf/fmradio/PresetStation;
    .restart local v10       #stationFreq:I
    .restart local v11       #stationId:I
    .restart local v12       #stationIter:I
    .restart local v13       #stationName:Ljava/lang/String;
    :cond_5
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Lcom/caf/fmradio/PresetStation;->setRDSSupported(Z)V

    goto :goto_4

    .line 467
    .end local v6           #pty:I
    .end local v7           #rdsSupported:I
    .end local v9           #station:Lcom/caf/fmradio/PresetStation;
    .end local v10           #stationFreq:I
    .end local v11           #stationId:I
    .end local v13           #stationName:Ljava/lang/String;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 513
    .end local v1           #curList:Lcom/caf/fmradio/PresetList;
    .end local v2           #listIter:I
    .end local v3           #listName:Ljava/lang/String;
    .end local v4           #numStations:I
    .end local v12           #stationIter:I
    :cond_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 514
    const-string v14, "fmconfig_country"

    const/16 v15, 0x8

    invoke-interface {v8, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    invoke-static {v14}, Lcom/caf/fmradio/FmSharedPreferences;->setCountry(I)V

    .line 519
    :goto_5
    const-string v14, "last_list_index"

    const/4 v15, 0x0

    invoke-interface {v8, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    sput v14, Lcom/caf/fmradio/FmSharedPreferences;->mListIndex:I

    .line 520
    sget v14, Lcom/caf/fmradio/FmSharedPreferences;->mListIndex:I

    if-lt v14, v5, :cond_0

    .line 522
    const/4 v14, 0x0

    sput v14, Lcom/caf/fmradio/FmSharedPreferences;->mListIndex:I

    goto/16 :goto_0

    .line 516
    :cond_8
    const-string v14, "fmconfig_country"

    const/4 v15, 0x0

    invoke-interface {v8, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    invoke-static {v14}, Lcom/caf/fmradio/FmSharedPreferences;->setCountry(I)V

    goto :goto_5
.end method

.method public Save()V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 527
    iget-object v9, p0, Lcom/caf/fmradio/FmSharedPreferences;->mContext:Landroid/content/Context;

    if-nez v9, :cond_0

    .line 581
    :goto_0
    return-void

    .line 531
    :cond_0
    const-string v9, "FmSharedPreferences"

    const-string v12, "Save preferences "

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    sget-object v9, Lcom/caf/fmradio/FmSharedPreferences;->mListOfPlists:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    .line 534
    .local v3, numLists:I
    iget-object v9, p0, Lcom/caf/fmradio/FmSharedPreferences;->mContext:Landroid/content/Context;

    const-string v12, "fmradio_prefs"

    invoke-virtual {v9, v12, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 535
    .local v6, sp:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 537
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    const-string v9, "last_frequency"

    sget v12, Lcom/caf/fmradio/FmSharedPreferences;->mTunedFrequency:I

    invoke-interface {v1, v9, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 539
    const-string v9, "list_number"

    invoke-interface {v1, v9, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 541
    const-string v9, "last_list_index"

    sget v12, Lcom/caf/fmradio/FmSharedPreferences;->mListIndex:I

    invoke-interface {v1, v9, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 543
    const/4 v2, 0x0

    .local v2, listIter:I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 545
    sget-object v9, Lcom/caf/fmradio/FmSharedPreferences;->mListOfPlists:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caf/fmradio/PresetList;

    .line 546
    .local v0, curList:Lcom/caf/fmradio/PresetList;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "list_name"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/caf/fmradio/PresetList;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v9, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 547
    invoke-virtual {v0}, Lcom/caf/fmradio/PresetList;->getStationCount()I

    move-result v5

    .line 548
    .local v5, numStations:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "preset_number"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 549
    const/4 v4, 0x0

    .line 550
    .local v4, numStation:I
    const/4 v8, 0x0

    .local v8, stationIter:I
    :goto_2
    if-ge v8, v5, :cond_3

    .line 552
    invoke-virtual {v0, v8}, Lcom/caf/fmradio/PresetList;->getStationFromIndex(I)Lcom/caf/fmradio/PresetStation;

    move-result-object v7

    .line 553
    .local v7, station:Lcom/caf/fmradio/PresetStation;
    if-eqz v7, :cond_1

    .line 555
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "station_name"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "x"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/caf/fmradio/PresetStation;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v9, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 557
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "station_freq"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "x"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/caf/fmradio/PresetStation;->getFrequency()I

    move-result v12

    invoke-interface {v1, v9, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 559
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "station_id"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "x"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/caf/fmradio/PresetStation;->getPI()I

    move-result v12

    invoke-interface {v1, v9, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 561
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "station_pty"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "x"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/caf/fmradio/PresetStation;->getPty()I

    move-result v12

    invoke-interface {v1, v9, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 563
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "station_rds"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "x"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Lcom/caf/fmradio/PresetStation;->getRDSSupported()Z

    move-result v9

    if-ne v9, v10, :cond_2

    move v9, v10

    :goto_3
    invoke-interface {v1, v12, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 565
    add-int/lit8 v4, v4, 0x1

    .line 550
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    :cond_2
    move v9, v11

    .line 563
    goto :goto_3

    .line 543
    .end local v7           #station:Lcom/caf/fmradio/PresetStation;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 571
    .end local v0           #curList:Lcom/caf/fmradio/PresetList;
    .end local v4           #numStation:I
    .end local v5           #numStations:I
    .end local v8           #stationIter:I
    :cond_4
    const-string v9, "fmconfig_country"

    sget v10, Lcom/caf/fmradio/FmSharedPreferences;->mCountry:I

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 572
    sget v9, Lcom/caf/fmradio/FmSharedPreferences;->mCountry:I

    const/16 v10, 0x24

    if-ne v9, v10, :cond_5

    .line 573
    const-string v9, "fmconfig_min"

    sget v10, Lcom/caf/fmradio/FmSharedPreferences;->mBandMinFreq:I

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 574
    const-string v9, "fmconfig_max"

    sget v10, Lcom/caf/fmradio/FmSharedPreferences;->mBandMaxFreq:I

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 575
    const-string v9, "fmconfig_step"

    sget v10, Lcom/caf/fmradio/FmSharedPreferences;->mChanSpacing:I

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 577
    :cond_5
    const-string v9, "last_record_duration"

    sget v10, Lcom/caf/fmradio/FmSharedPreferences;->mRecordDuration:I

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 578
    sget-object v9, Lcom/caf/fmradio/FmSharedPreferences;->LAST_AF_JUMP_VALUE:Ljava/lang/String;

    sget-boolean v10, Lcom/caf/fmradio/FmSharedPreferences;->mAFAutoSwitch:Z

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 579
    const-string v9, "audio_output_mode"

    sget-boolean v10, Lcom/caf/fmradio/FmSharedPreferences;->mAudioOutputMode:Z

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 580
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method
