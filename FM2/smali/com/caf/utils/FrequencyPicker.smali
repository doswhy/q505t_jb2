.class public Lcom/caf/utils/FrequencyPicker;
.super Landroid/widget/FrameLayout;
.source "FrequencyPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caf/utils/FrequencyPicker$SavedState;,
        Lcom/caf/utils/FrequencyPicker$OnFrequencyChangedListener;
    }
.end annotation


# instance fields
.field private mFrequency:I

.field private final mKHzPicker:Landroid/widget/NumberPicker;

.field private mKhz:I

.field private final mMHzPicker:Landroid/widget/NumberPicker;

.field private mMax:I

.field private mMhz:I

.field private mMin:I

.field private mOnFrequencyChangedListener:Lcom/caf/utils/FrequencyPicker$OnFrequencyChangedListener;

.field private mStep:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/caf/utils/FrequencyPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/caf/utils/FrequencyPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const-wide/16 v3, 0x64

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 84
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030008

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 86
    const v1, 0x7f090032

    invoke-virtual {p0, v1}, Lcom/caf/utils/FrequencyPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    iput-object v1, p0, Lcom/caf/utils/FrequencyPicker;->mMHzPicker:Landroid/widget/NumberPicker;

    .line 87
    iget-object v1, p0, Lcom/caf/utils/FrequencyPicker;->mMHzPicker:Landroid/widget/NumberPicker;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/caf/utils/FrequencyPicker;->mMHzPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3, v4}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 90
    iget-object v1, p0, Lcom/caf/utils/FrequencyPicker;->mMHzPicker:Landroid/widget/NumberPicker;

    new-instance v2, Lcom/caf/utils/FrequencyPicker$1;

    invoke-direct {v2, p0}, Lcom/caf/utils/FrequencyPicker$1;-><init>(Lcom/caf/utils/FrequencyPicker;)V

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 101
    :cond_0
    const v1, 0x7f090033

    invoke-virtual {p0, v1}, Lcom/caf/utils/FrequencyPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    iput-object v1, p0, Lcom/caf/utils/FrequencyPicker;->mKHzPicker:Landroid/widget/NumberPicker;

    .line 102
    iget-object v1, p0, Lcom/caf/utils/FrequencyPicker;->mKHzPicker:Landroid/widget/NumberPicker;

    if-eqz v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/caf/utils/FrequencyPicker;->mKHzPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3, v4}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 104
    iget-object v1, p0, Lcom/caf/utils/FrequencyPicker;->mKHzPicker:Landroid/widget/NumberPicker;

    new-instance v2, Lcom/caf/utils/FrequencyPicker$2;

    invoke-direct {v2, p0}, Lcom/caf/utils/FrequencyPicker$2;-><init>(Lcom/caf/utils/FrequencyPicker;)V

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 118
    :cond_1
    invoke-direct {p0}, Lcom/caf/utils/FrequencyPicker;->updateSpinnerRange()V

    .line 120
    invoke-virtual {p0}, Lcom/caf/utils/FrequencyPicker;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 121
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/caf/utils/FrequencyPicker;->setEnabled(Z)V

    .line 123
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/caf/utils/FrequencyPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/caf/utils/FrequencyPicker;->mMhz:I

    return v0
.end method

.method static synthetic access$002(Lcom/caf/utils/FrequencyPicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/caf/utils/FrequencyPicker;->mMhz:I

    return p1
.end method

.method static synthetic access$100(Lcom/caf/utils/FrequencyPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/caf/utils/FrequencyPicker;->mFrequency:I

    return v0
.end method

.method static synthetic access$102(Lcom/caf/utils/FrequencyPicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/caf/utils/FrequencyPicker;->mFrequency:I

    return p1
.end method

.method static synthetic access$200(Lcom/caf/utils/FrequencyPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/caf/utils/FrequencyPicker;->mKhz:I

    return v0
.end method

.method static synthetic access$202(Lcom/caf/utils/FrequencyPicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/caf/utils/FrequencyPicker;->mKhz:I

    return p1
.end method

.method static synthetic access$300(Lcom/caf/utils/FrequencyPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/caf/utils/FrequencyPicker;->mMin:I

    return v0
.end method

.method static synthetic access$400(Lcom/caf/utils/FrequencyPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/caf/utils/FrequencyPicker;->mStep:I

    return v0
.end method

.method static synthetic access$500(Lcom/caf/utils/FrequencyPicker;III)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/caf/utils/FrequencyPicker;->getFrequencyKHz(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/caf/utils/FrequencyPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/caf/utils/FrequencyPicker;->validateFrequencyRange()V

    return-void
.end method

.method static synthetic access$700(Lcom/caf/utils/FrequencyPicker;)Lcom/caf/utils/FrequencyPicker$OnFrequencyChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/caf/utils/FrequencyPicker;->mOnFrequencyChangedListener:Lcom/caf/utils/FrequencyPicker$OnFrequencyChangedListener;

    return-object v0
.end method

.method private get100KHzStrings()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 320
    const/16 v1, 0xa

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9"

    aput-object v2, v0, v1

    .line 323
    .local v0, khzStrings:[Ljava/lang/String;
    return-object v0
.end method

.method private get200KHzStrings(I)[Ljava/lang/String;
    .locals 1
    .parameter "min"

    .prologue
    .line 328
    rem-int/lit16 v0, p1, 0xc8

    if-nez v0, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/caf/utils/FrequencyPicker;->getEven200KHzStrings()[Ljava/lang/String;

    move-result-object v0

    .line 332
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/caf/utils/FrequencyPicker;->getOdd200KHzStrings()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private get50KHzStrings()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 312
    const/16 v1, 0x14

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "00"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "05"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "10"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "15"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "20"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "25"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "30"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "35"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "40"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "45"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "50"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "55"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "60"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "65"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "70"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "75"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "80"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "85"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "90"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "95"

    aput-object v2, v0, v1

    .line 315
    .local v0, khzStrings:[Ljava/lang/String;
    return-object v0
.end method

.method private getCurrent100KHz(I)I
    .locals 2
    .parameter "frequency"

    .prologue
    .line 291
    rem-int/lit16 v1, p1, 0x3e8

    div-int/lit8 v0, v1, 0x64

    .line 293
    .local v0, khz:I
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method private getCurrent200KHz(II)I
    .locals 2
    .parameter "frequency"
    .parameter "min"

    .prologue
    .line 305
    rem-int/lit16 v1, p1, 0x3e8

    div-int/lit16 v0, v1, 0xc8

    .line 307
    .local v0, khz:I
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method private getCurrent50KHz(I)I
    .locals 2
    .parameter "frequency"

    .prologue
    .line 298
    rem-int/lit16 v1, p1, 0x3e8

    div-int/lit8 v0, v1, 0x32

    .line 300
    .local v0, khz:I
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method private getCurrentKHz(III)I
    .locals 1
    .parameter "frequency"
    .parameter "min"
    .parameter "stepSize"

    .prologue
    .line 240
    const/16 v0, 0x64

    if-ne p3, v0, :cond_0

    .line 242
    invoke-direct {p0, p1}, Lcom/caf/utils/FrequencyPicker;->getCurrent100KHz(I)I

    move-result v0

    .line 248
    :goto_0
    return v0

    .line 244
    :cond_0
    const/16 v0, 0x32

    if-ne p3, v0, :cond_1

    .line 246
    invoke-direct {p0, p1}, Lcom/caf/utils/FrequencyPicker;->getCurrent50KHz(I)I

    move-result v0

    goto :goto_0

    .line 248
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/caf/utils/FrequencyPicker;->getCurrent200KHz(II)I

    move-result v0

    goto :goto_0
.end method

.method private getEven200KHzStrings()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 337
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "8"

    aput-object v2, v0, v1

    .line 339
    .local v0, khzStrings:[Ljava/lang/String;
    return-object v0
.end method

.method private getFrequency100KHz(I)I
    .locals 2
    .parameter "kHz"

    .prologue
    .line 266
    add-int/lit8 v1, p1, -0x1

    mul-int/lit8 v0, v1, 0x64

    .line 268
    .local v0, frequencykhz:I
    return v0
.end method

.method private getFrequency200KHz(II)I
    .locals 2
    .parameter "kHz"
    .parameter "min"

    .prologue
    .line 280
    add-int/lit8 v1, p1, -0x1

    mul-int/lit16 v0, v1, 0xc8

    .line 281
    .local v0, frequencykhz:I
    rem-int/lit16 v1, p2, 0xc8

    if-eqz v1, :cond_0

    .line 283
    add-int/lit8 v1, p1, -0x1

    mul-int/lit16 v1, v1, 0xc8

    add-int/lit8 v0, v1, 0x64

    .line 286
    :cond_0
    return v0
.end method

.method private getFrequency50KHz(I)I
    .locals 2
    .parameter "kHz"

    .prologue
    .line 273
    add-int/lit8 v1, p1, -0x1

    mul-int/lit8 v0, v1, 0x32

    .line 275
    .local v0, frequencykhz:I
    return v0
.end method

.method private getFrequencyKHz(III)I
    .locals 1
    .parameter "kHz"
    .parameter "min"
    .parameter "stepSize"

    .prologue
    .line 253
    const/16 v0, 0x64

    if-ne p3, v0, :cond_0

    .line 255
    invoke-direct {p0, p1}, Lcom/caf/utils/FrequencyPicker;->getFrequency100KHz(I)I

    move-result v0

    .line 261
    :goto_0
    return v0

    .line 257
    :cond_0
    const/16 v0, 0x32

    if-ne p3, v0, :cond_1

    .line 259
    invoke-direct {p0, p1}, Lcom/caf/utils/FrequencyPicker;->getFrequency50KHz(I)I

    move-result v0

    goto :goto_0

    .line 261
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/caf/utils/FrequencyPicker;->getFrequency200KHz(II)I

    move-result v0

    goto :goto_0
.end method

.method private getKHzCount(I)I
    .locals 1
    .parameter "stepSize"

    .prologue
    .line 228
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 230
    const/16 v0, 0xa

    .line 236
    :goto_0
    return v0

    .line 232
    :cond_0
    const/16 v0, 0x32

    if-ne p1, v0, :cond_1

    .line 234
    const/16 v0, 0x14

    goto :goto_0

    .line 236
    :cond_1
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private getKHzStrings(II)[Ljava/lang/String;
    .locals 1
    .parameter "min"
    .parameter "stepSize"

    .prologue
    .line 215
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/caf/utils/FrequencyPicker;->get100KHzStrings()[Ljava/lang/String;

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    .line 219
    :cond_0
    const/16 v0, 0x32

    if-ne p2, v0, :cond_1

    .line 221
    invoke-direct {p0}, Lcom/caf/utils/FrequencyPicker;->get50KHzStrings()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_1
    invoke-direct {p0, p1}, Lcom/caf/utils/FrequencyPicker;->get200KHzStrings(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getOdd200KHzStrings()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 343
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "7"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "9"

    aput-object v2, v0, v1

    .line 345
    .local v0, khzStrings:[Ljava/lang/String;
    return-object v0
.end method

.method private updateSpinnerRange()V
    .locals 4

    .prologue
    .line 378
    iget v2, p0, Lcom/caf/utils/FrequencyPicker;->mMin:I

    iget v3, p0, Lcom/caf/utils/FrequencyPicker;->mStep:I

    invoke-direct {p0, v2, v3}, Lcom/caf/utils/FrequencyPicker;->getKHzStrings(II)[Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, khzStrings:[Ljava/lang/String;
    iget v2, p0, Lcom/caf/utils/FrequencyPicker;->mStep:I

    invoke-direct {p0, v2}, Lcom/caf/utils/FrequencyPicker;->getKHzCount(I)I

    move-result v0

    .line 381
    .local v0, khzNumSteps:I
    iget-object v2, p0, Lcom/caf/utils/FrequencyPicker;->mMHzPicker:Landroid/widget/NumberPicker;

    if-eqz v2, :cond_0

    .line 382
    iget-object v2, p0, Lcom/caf/utils/FrequencyPicker;->mMHzPicker:Landroid/widget/NumberPicker;

    iget v3, p0, Lcom/caf/utils/FrequencyPicker;->mMin:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 383
    iget-object v2, p0, Lcom/caf/utils/FrequencyPicker;->mMHzPicker:Landroid/widget/NumberPicker;

    iget v3, p0, Lcom/caf/utils/FrequencyPicker;->mMax:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 385
    :cond_0
    iget-object v2, p0, Lcom/caf/utils/FrequencyPicker;->mKHzPicker:Landroid/widget/NumberPicker;

    if-eqz v2, :cond_1

    .line 386
    iget-object v2, p0, Lcom/caf/utils/FrequencyPicker;->mKHzPicker:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Lcom/caf/utils/FrequencyPicker;->get50KHzStrings()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 387
    iget-object v2, p0, Lcom/caf/utils/FrequencyPicker;->mKHzPicker:Landroid/widget/NumberPicker;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 388
    iget-object v2, p0, Lcom/caf/utils/FrequencyPicker;->mKHzPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 389
    iget-object v2, p0, Lcom/caf/utils/FrequencyPicker;->mKHzPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 391
    :cond_1
    return-void
.end method

.method private updateSpinners()V
    .locals 4

    .prologue
    .line 394
    iget v1, p0, Lcom/caf/utils/FrequencyPicker;->mStep:I

    invoke-direct {p0, v1}, Lcom/caf/utils/FrequencyPicker;->getKHzCount(I)I

    move-result v0

    .line 395
    .local v0, khzNumSteps:I
    invoke-direct {p0}, Lcom/caf/utils/FrequencyPicker;->updateSpinnerRange()V

    .line 396
    iget v1, p0, Lcom/caf/utils/FrequencyPicker;->mFrequency:I

    div-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/caf/utils/FrequencyPicker;->mMhz:I

    .line 397
    iget v1, p0, Lcom/caf/utils/FrequencyPicker;->mFrequency:I

    iget v2, p0, Lcom/caf/utils/FrequencyPicker;->mMin:I

    iget v3, p0, Lcom/caf/utils/FrequencyPicker;->mStep:I

    invoke-direct {p0, v1, v2, v3}, Lcom/caf/utils/FrequencyPicker;->getCurrentKHz(III)I

    move-result v1

    iput v1, p0, Lcom/caf/utils/FrequencyPicker;->mKhz:I

    .line 398
    iget v1, p0, Lcom/caf/utils/FrequencyPicker;->mMin:I

    div-int/lit16 v1, v1, 0x3e8

    iget v2, p0, Lcom/caf/utils/FrequencyPicker;->mMhz:I

    if-gt v1, v2, :cond_0

    iget v1, p0, Lcom/caf/utils/FrequencyPicker;->mMax:I

    div-int/lit16 v1, v1, 0x3e8

    iget v2, p0, Lcom/caf/utils/FrequencyPicker;->mMhz:I

    if-lt v1, v2, :cond_0

    .line 400
    iget-object v1, p0, Lcom/caf/utils/FrequencyPicker;->mMHzPicker:Landroid/widget/NumberPicker;

    iget v2, p0, Lcom/caf/utils/FrequencyPicker;->mMhz:I

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 402
    :cond_0
    iget v1, p0, Lcom/caf/utils/FrequencyPicker;->mKhz:I

    if-gt v1, v0, :cond_1

    .line 404
    iget-object v1, p0, Lcom/caf/utils/FrequencyPicker;->mKHzPicker:Landroid/widget/NumberPicker;

    iget v2, p0, Lcom/caf/utils/FrequencyPicker;->mKhz:I

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 406
    :cond_1
    return-void
.end method

.method private validateFrequencyRange()V
    .locals 3

    .prologue
    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, bUpdateSpinner:Z
    iget v1, p0, Lcom/caf/utils/FrequencyPicker;->mFrequency:I

    iget v2, p0, Lcom/caf/utils/FrequencyPicker;->mMin:I

    if-ge v1, v2, :cond_0

    .line 412
    iget v1, p0, Lcom/caf/utils/FrequencyPicker;->mMin:I

    iput v1, p0, Lcom/caf/utils/FrequencyPicker;->mFrequency:I

    .line 413
    const/4 v0, 0x1

    .line 415
    :cond_0
    iget v1, p0, Lcom/caf/utils/FrequencyPicker;->mFrequency:I

    iget v2, p0, Lcom/caf/utils/FrequencyPicker;->mMax:I

    if-le v1, v2, :cond_1

    .line 417
    iget v1, p0, Lcom/caf/utils/FrequencyPicker;->mMax:I

    iput v1, p0, Lcom/caf/utils/FrequencyPicker;->mFrequency:I

    .line 418
    const/4 v0, 0x1

    .line 420
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 422
    invoke-direct {p0}, Lcom/caf/utils/FrequencyPicker;->updateSpinners()V

    .line 424
    :cond_2
    return-void
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/caf/utils/FrequencyPicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 196
    return-void
.end method

.method public getFrequency()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lcom/caf/utils/FrequencyPicker;->mFrequency:I

    return v0
.end method

.method public init(IIIILcom/caf/utils/FrequencyPicker$OnFrequencyChangedListener;)V
    .locals 0
    .parameter "min"
    .parameter "max"
    .parameter "step"
    .parameter "frequency"
    .parameter "onFrequencyChangedListener"

    .prologue
    .line 369
    iput p1, p0, Lcom/caf/utils/FrequencyPicker;->mMin:I

    .line 370
    iput p2, p0, Lcom/caf/utils/FrequencyPicker;->mMax:I

    .line 371
    iput p3, p0, Lcom/caf/utils/FrequencyPicker;->mStep:I

    .line 372
    iput p4, p0, Lcom/caf/utils/FrequencyPicker;->mFrequency:I

    .line 373
    iput-object p5, p0, Lcom/caf/utils/FrequencyPicker;->mOnFrequencyChangedListener:Lcom/caf/utils/FrequencyPicker$OnFrequencyChangedListener;

    .line 375
    invoke-direct {p0}, Lcom/caf/utils/FrequencyPicker;->updateSpinners()V

    .line 376
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 207
    move-object v0, p1

    check-cast v0, Lcom/caf/utils/FrequencyPicker$SavedState;

    .line 208
    .local v0, ss:Lcom/caf/utils/FrequencyPicker$SavedState;
    invoke-virtual {v0}, Lcom/caf/utils/FrequencyPicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 209
    invoke-virtual {v0}, Lcom/caf/utils/FrequencyPicker$SavedState;->getMHz()I

    move-result v1

    iput v1, p0, Lcom/caf/utils/FrequencyPicker;->mMhz:I

    .line 210
    invoke-virtual {v0}, Lcom/caf/utils/FrequencyPicker$SavedState;->getKHz()I

    move-result v1

    iput v1, p0, Lcom/caf/utils/FrequencyPicker;->mKhz:I

    .line 211
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 200
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 202
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Lcom/caf/utils/FrequencyPicker$SavedState;

    iget v2, p0, Lcom/caf/utils/FrequencyPicker;->mMhz:I

    iget v3, p0, Lcom/caf/utils/FrequencyPicker;->mKhz:I

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/caf/utils/FrequencyPicker$SavedState;-><init>(Landroid/os/Parcelable;IILcom/caf/utils/FrequencyPicker$1;)V

    return-object v1
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 128
    iget-object v0, p0, Lcom/caf/utils/FrequencyPicker;->mMHzPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 129
    iget-object v0, p0, Lcom/caf/utils/FrequencyPicker;->mKHzPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 130
    return-void
.end method

.method public updateFrequency(I)V
    .locals 0
    .parameter "frequency"

    .prologue
    .line 134
    iput p1, p0, Lcom/caf/utils/FrequencyPicker;->mFrequency:I

    .line 135
    invoke-direct {p0}, Lcom/caf/utils/FrequencyPicker;->updateSpinners()V

    .line 136
    return-void
.end method

.method public updateMaxFreq(I)V
    .locals 0
    .parameter "freq"

    .prologue
    .line 357
    iput p1, p0, Lcom/caf/utils/FrequencyPicker;->mMax:I

    .line 358
    return-void
.end method

.method public updateMinFreq(I)V
    .locals 0
    .parameter "freq"

    .prologue
    .line 353
    iput p1, p0, Lcom/caf/utils/FrequencyPicker;->mMin:I

    .line 354
    return-void
.end method

.method public updateSteps(I)V
    .locals 0
    .parameter "steps"

    .prologue
    .line 349
    iput p1, p0, Lcom/caf/utils/FrequencyPicker;->mStep:I

    .line 350
    return-void
.end method
