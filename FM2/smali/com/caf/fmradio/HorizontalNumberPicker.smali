.class public Lcom/caf/fmradio/HorizontalNumberPicker;
.super Landroid/widget/LinearLayout;
.source "HorizontalNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caf/fmradio/HorizontalNumberPicker$2;,
        Lcom/caf/fmradio/HorizontalNumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/caf/fmradio/HorizontalNumberPicker$AdjustScrollerCommand;,
        Lcom/caf/fmradio/HorizontalNumberPicker$SetSelectionCommand;,
        Lcom/caf/fmradio/HorizontalNumberPicker$Formatter;,
        Lcom/caf/fmradio/HorizontalNumberPicker$OnScrollListener;,
        Lcom/caf/fmradio/HorizontalNumberPicker$OnScrollFinishListener;,
        Lcom/caf/fmradio/HorizontalNumberPicker$OnValueChangeListener;,
        Lcom/caf/fmradio/HorizontalNumberPicker$Scale;
    }
.end annotation


# static fields
.field private static final DIGIT_CHARACTERS:[C

.field private static final SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

.field public static final TWO_DIGIT_FORMATTER:Lcom/caf/fmradio/HorizontalNumberPicker$Formatter;

.field private static mDensity:F


# instance fields
.field private final SELECTOR_INDICES_LARGE:[I

.field private final SELECTOR_INDICES_MEDIUM:[I

.field private final SELECTOR_INDICES_SMALL:[I

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mAdjustScrollerCommand:Lcom/caf/fmradio/HorizontalNumberPicker$AdjustScrollerCommand;

.field private mAdjustScrollerOnUpEvent:Z

.field private mBeginEditOnUpEvent:Z

.field private mChangeCurrentByOneFromLongPressCommand:Lcom/caf/fmradio/HorizontalNumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private final mFlingable:Z

.field private mFormatter:Lcom/caf/fmradio/HorizontalNumberPicker$Formatter;

.field private mGapBetweenNumAndScale:F

.field private mHdpiPositionAdjust:F

.field private mHorizontal:Z

.field private mInitialScrollOffset:I

.field private mLastDownEventX:F

.field private mLastDownEventY:F

.field private mLastMotionEventX:F

.field private mLastMotionEventY:F

.field private mLongPressUpdateInterval:J

.field private mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollFinishListener:Lcom/caf/fmradio/HorizontalNumberPicker$OnScrollFinishListener;

.field private mOnScrollListener:Lcom/caf/fmradio/HorizontalNumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lcom/caf/fmradio/HorizontalNumberPicker$OnValueChangeListener;

.field private mPreviousScrollerX:I

.field private mPreviousScrollerY:I

.field private mScaleLengthLong:F

.field private mScaleLengthShort:F

.field private mScaleWidth:F

.field private mScrollState:I

.field private mScrollWheelAndFadingEdgesInitialized:Z

.field private mSelectorElementHeight:I

.field private mSelectorElementWidth:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectorIndices:[I

.field private mSelectorMiddleItemIndex:I

.field private mSelectorTextGapHeight:I

.field private mSelectorTextGapWidth:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSelectorWheelState:I

.field private mSetSelectionCommand:Lcom/caf/fmradio/HorizontalNumberPicker$SetSelectionCommand;

.field private final mShowInputControlsAnimimationDuration:J

.field private final mSolidColor:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextSize:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/caf/fmradio/HorizontalNumberPicker;->SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

    .line 173
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/caf/fmradio/HorizontalNumberPicker;->DIGIT_CHARACTERS:[C

    .line 189
    new-instance v0, Lcom/caf/fmradio/HorizontalNumberPicker$1;

    invoke-direct {v0}, Lcom/caf/fmradio/HorizontalNumberPicker$1;-><init>()V

    sput-object v0, Lcom/caf/fmradio/HorizontalNumberPicker;->TWO_DIGIT_FORMATTER:Lcom/caf/fmradio/HorizontalNumberPicker$Formatter;

    .line 351
    const/high16 v0, 0x3f80

    sput v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mDensity:F

    return-void

    .line 173
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 632
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/caf/fmradio/HorizontalNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 633
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 644
    const v0, 0x10103ec

    invoke-direct {p0, p1, p2, v0}, Lcom/caf/fmradio/HorizontalNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 645
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v8, 0x4190

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 659
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 225
    iput v5, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMinHeight:I

    .line 235
    iput v5, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMinWidth:I

    .line 250
    const/16 v3, 0x14

    iput v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mTextSize:I

    .line 299
    const-wide/16 v6, 0x12c

    iput-wide v6, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mLongPressUpdateInterval:J

    .line 304
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 309
    const/16 v3, 0x15

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->SELECTOR_INDICES_MEDIUM:[I

    .line 318
    const/16 v3, 0x29

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->SELECTOR_INDICES_SMALL:[I

    .line 334
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_2

    iput-object v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->SELECTOR_INDICES_LARGE:[I

    .line 340
    iget-object v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->SELECTOR_INDICES_MEDIUM:[I

    iput-object v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorIndices:[I

    .line 341
    iget-object v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorIndices:[I

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    .line 357
    const/high16 v3, 0x4000

    iput v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mScaleWidth:F

    .line 358
    const/high16 v3, 0x4120

    iput v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mScaleLengthShort:F

    .line 359
    const/high16 v3, 0x41a0

    iput v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mScaleLengthLong:F

    .line 360
    iput v8, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mGapBetweenNumAndScale:F

    .line 361
    iput v8, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mHdpiPositionAdjust:F

    .line 386
    const/high16 v3, -0x8000

    iput v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mInitialScrollOffset:I

    .line 530
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mTempRect:Landroid/graphics/Rect;

    .line 535
    iput v5, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mScrollState:I

    .line 547
    iput-boolean v4, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mHorizontal:Z

    .line 662
    sget-object v3, Lcom/android/internal/R$styleable;->NumberPicker:[I

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 664
    .local v0, attributesArray:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSolidColor:I

    .line 668
    iput-boolean v4, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mFlingable:Z

    .line 670
    iget v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMaxWidth:I

    const v6, 0x7fffffff

    if-ne v3, v6, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mComputeMaxWidth:Z

    .line 671
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 673
    invoke-virtual {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10e0002

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v6, v3

    iput-wide v6, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mShowInputControlsAnimimationDuration:J

    .line 681
    invoke-virtual {p0, v5}, Lcom/caf/fmradio/HorizontalNumberPicker;->setWillNotDraw(Z)V

    .line 682
    invoke-direct {p0, v5}, Lcom/caf/fmradio/HorizontalNumberPicker;->setSelectorWheelState(I)V

    .line 686
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    iput v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mTouchSlop:I

    .line 687
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 688
    .local v1, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mTouchSlop:I

    .line 689
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMinimumFlingVelocity:I

    .line 690
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMaximumFlingVelocity:I

    .line 694
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 695
    .local v2, paint:Landroid/graphics/Paint;
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 696
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 697
    iget v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 698
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 699
    iput-object v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 703
    new-instance v3, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 704
    new-instance v3, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x4020

    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v3, v5, v6}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 708
    invoke-direct {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 710
    iget-boolean v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mFlingable:Z

    if-eqz v3, :cond_0

    .line 711
    invoke-virtual {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 712
    invoke-direct {p0, v4}, Lcom/caf/fmradio/HorizontalNumberPicker;->setSelectorWheelState(I)V

    .line 721
    :cond_0
    :goto_1
    return-void

    .end local v1           #configuration:Landroid/view/ViewConfiguration;
    .end local v2           #paint:Landroid/graphics/Paint;
    :cond_1
    move v3, v5

    .line 670
    goto :goto_0

    .line 718
    .restart local v1       #configuration:Landroid/view/ViewConfiguration;
    .restart local v2       #paint:Landroid/graphics/Paint;
    :cond_2
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/caf/fmradio/HorizontalNumberPicker;->setSelectorWheelState(I)V

    goto :goto_1

    .line 309
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
    .end array-data

    .line 318
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
    .end array-data

    .line 334
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
    .end array-data
.end method

.method static synthetic access$1000(Lcom/caf/fmradio/HorizontalNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mInitialScrollOffset:I

    return v0
.end method

.method static synthetic access$1100(Lcom/caf/fmradio/HorizontalNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    return v0
.end method

.method static synthetic access$1200(Lcom/caf/fmradio/HorizontalNumberPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mHorizontal:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/caf/fmradio/HorizontalNumberPicker;)Landroid/widget/Scroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/caf/fmradio/HorizontalNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorElementHeight:I

    return v0
.end method

.method static synthetic access$1500(Lcom/caf/fmradio/HorizontalNumberPicker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/caf/fmradio/HorizontalNumberPicker;->changeCurrentByOne(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/caf/fmradio/HorizontalNumberPicker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/caf/fmradio/HorizontalNumberPicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mPreviousScrollerY:I

    return p1
.end method

.method static synthetic access$902(Lcom/caf/fmradio/HorizontalNumberPicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mPreviousScrollerX:I

    return p1
.end method

.method private changeCurrent(I)V
    .locals 2
    .parameter "current"

    .prologue
    .line 1620
    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mValue:I

    if-ne v1, p1, :cond_0

    .line 1630
    :goto_0
    return-void

    .line 1624
    :cond_0
    iget-boolean v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    .line 1625
    invoke-direct {p0, p1}, Lcom/caf/fmradio/HorizontalNumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 1627
    :cond_1
    iget v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mValue:I

    .line 1628
    .local v0, previous:I
    invoke-virtual {p0, p1}, Lcom/caf/fmradio/HorizontalNumberPicker;->setValue(I)V

    .line 1629
    invoke-direct {p0, v0, p1}, Lcom/caf/fmradio/HorizontalNumberPicker;->notifyChange(II)V

    goto :goto_0
.end method

.method private changeCurrentByOne(Z)V
    .locals 6
    .parameter "increment"

    .prologue
    const/16 v5, 0x12c

    const/4 v1, 0x0

    .line 1640
    iget-boolean v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mFlingable:Z

    if-eqz v0, :cond_3

    .line 1641
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1642
    iput v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mPreviousScrollerY:I

    .line 1643
    iput v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mPreviousScrollerX:I

    .line 1644
    invoke-direct {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->forceCompleteChangeCurrentByOneViaScroll()V

    .line 1645
    if-eqz p1, :cond_1

    .line 1646
    iget-boolean v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mHorizontal:Z

    if-eqz v0, :cond_0

    .line 1647
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorElementHeight:I

    neg-int v3, v2

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1665
    :goto_0
    invoke-virtual {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->invalidate()V

    .line 1673
    :goto_1
    return-void

    .line 1650
    :cond_0
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1656
    :cond_1
    iget-boolean v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mHorizontal:Z

    if-eqz v0, :cond_2

    .line 1657
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorElementHeight:I

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1660
    :cond_2
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v4, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1667
    :cond_3
    if-eqz p1, :cond_4

    .line 1668
    iget v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/caf/fmradio/HorizontalNumberPicker;->changeCurrent(I)V

    goto :goto_1

    .line 1670
    :cond_4
    iget v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mValue:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/caf/fmradio/HorizontalNumberPicker;->changeCurrent(I)V

    goto :goto_1
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .parameter "selectorIndices"

    .prologue
    .line 1918
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 1919
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1918
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1921
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 1922
    .local v1, nextScrollSelectorIndex:I
    iget-boolean v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMinValue:I

    if-ge v1, v2, :cond_1

    .line 1923
    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMaxValue:I

    .line 1925
    :cond_1
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 1926
    invoke-direct {p0, v1}, Lcom/caf/fmradio/HorizontalNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1927
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .parameter "selectorIndex"

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1936
    .local v0, cache:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1937
    .local v2, scrollSelectorValue:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1951
    :goto_0
    return-void

    .line 1940
    :cond_0
    iget v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 1941
    :cond_1
    const-string v2, ""

    .line 1950
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1943
    :cond_2
    iget-object v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1944
    iget v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMinValue:I

    sub-int v1, p1, v3

    .line 1945
    .local v1, displayedValueIndex:I
    iget-object v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1946
    goto :goto_1

    .line 1947
    .end local v1           #displayedValueIndex:I
    :cond_3
    invoke-direct {p0, p1}, Lcom/caf/fmradio/HorizontalNumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private forceCompleteChangeCurrentByOneViaScroll()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1681
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1682
    .local v0, scroller:Landroid/widget/Scroller;
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1683
    iget-boolean v5, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mHorizontal:Z

    if-eqz v5, :cond_1

    .line 1684
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    .line 1685
    .local v1, xBeforeAbort:I
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1686
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    sub-int v2, v5, v1

    .line 1687
    .local v2, xDelta:I
    invoke-virtual {p0, v2, v6}, Lcom/caf/fmradio/HorizontalNumberPicker;->scrollBy(II)V

    .line 1695
    .end local v1           #xBeforeAbort:I
    .end local v2           #xDelta:I
    :cond_0
    :goto_0
    return-void

    .line 1689
    :cond_1
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1690
    .local v3, yBeforeAbort:I
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1691
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    sub-int v4, v5, v3

    .line 1692
    .local v4, yDelta:I
    invoke-virtual {p0, v6, v4}, Lcom/caf/fmradio/HorizontalNumberPicker;->scrollBy(II)V

    goto :goto_0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mFormatter:Lcom/caf/fmradio/HorizontalNumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mFormatter:Lcom/caf/fmradio/HorizontalNumberPicker$Formatter;

    invoke-interface {v0, p1}, Lcom/caf/fmradio/HorizontalNumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .parameter "selectorIndex"

    .prologue
    .line 1887
    iget v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_1

    .line 1888
    iget v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMinValue:I

    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMaxValue:I

    iget v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 1894
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 1890
    .restart local p1
    :cond_1
    iget v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_0

    .line 1891
    iget v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMaxValue:I

    iget v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .parameter "selectorIndices"

    .prologue
    .line 1902
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 1903
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1902
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1905
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 1906
    .local v1, nextScrollSelectorIndex:I
    iget-boolean v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 1907
    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMinValue:I

    .line 1909
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 1910
    invoke-direct {p0, v1}, Lcom/caf/fmradio/HorizontalNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1911
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .prologue
    .line 1761
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/HorizontalNumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1762
    iget v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mBottom:I

    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/HorizontalNumberPicker;->setFadingEdgeLength(I)V

    .line 1763
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1737
    invoke-direct {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->initializeSelectorWheelIndices()V

    .line 1738
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorIndices:[I

    .line 1739
    .local v0, selectorIndices:[I
    array-length v6, v0

    iget v7, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mTextSize:I

    mul-int v4, v6, v7

    .line 1740
    .local v4, totalTextHeight:I
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    mul-int/lit8 v5, v6, 0x2

    .line 1742
    .local v5, totalTextWidth:I
    iget v6, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mBottom:I

    iget v7, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mTop:I

    sub-int/2addr v6, v7

    sub-int/2addr v6, v4

    int-to-float v2, v6

    .line 1743
    .local v2, totalTextGapHeight:F
    iget v6, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mRight:I

    iget v7, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mLeft:I

    sub-int/2addr v6, v7

    sub-int/2addr v6, v5

    int-to-float v3, v6

    .line 1745
    .local v3, totalTextGapWidth:F
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    int-to-float v1, v6

    .line 1746
    .local v1, textGapCount:F
    iget-boolean v6, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mHorizontal:Z

    if-eqz v6, :cond_0

    .line 1747
    div-float v6, v3, v1

    float-to-int v6, v6

    iput v6, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorTextGapWidth:I

    .line 1748
    const-string v6, "HorizontalNumberPicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSelectorTextGapWidth :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorTextGapWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    iget v6, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorTextGapWidth:I

    add-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorElementWidth:I

    .line 1750
    iput v9, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mInitialScrollOffset:I

    .line 1756
    :goto_0
    iget v6, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mInitialScrollOffset:I

    iput v6, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    .line 1758
    return-void

    .line 1752
    :cond_0
    div-float v6, v2, v1

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorTextGapHeight:I

    .line 1753
    iget v6, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mTextSize:I

    iget v7, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorElementHeight:I

    .line 1754
    iput v9, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mInitialScrollOffset:I

    goto :goto_0
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .prologue
    .line 1597
    iget-object v4, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1598
    iget-object v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorIndices:[I

    .line 1599
    .local v2, selectorIdices:[I
    invoke-virtual {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->getValue()I

    move-result v0

    .line 1600
    .local v0, current:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 1601
    iget v4, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    sub-int v4, v1, v4

    add-int v3, v0, v4

    .line 1602
    .local v3, selectorIndex:I
    iget-boolean v4, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1603
    invoke-direct {p0, v3}, Lcom/caf/fmradio/HorizontalNumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 1605
    :cond_0
    iget-object v4, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorIndices:[I

    aput v3, v4, v1

    .line 1606
    iget-object v4, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorIndices:[I

    aget v4, v4, v1

    invoke-direct {p0, v4}, Lcom/caf/fmradio/HorizontalNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1600
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1608
    .end local v3           #selectorIndex:I
    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .parameter "measureSpec"
    .parameter "maxSize"

    .prologue
    const/high16 v3, 0x4000

    .line 1551
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1563
    .end local p1
    :goto_0
    :sswitch_0
    return p1

    .line 1554
    .restart local p1
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1555
    .local v1, size:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1556
    .local v0, mode:I
    sparse-switch v0, :sswitch_data_0

    .line 1565
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1560
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1563
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1556
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private notifyChange(II)V
    .locals 2
    .parameter "previous"
    .parameter "current"

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mOnValueChangeListener:Lcom/caf/fmradio/HorizontalNumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 2005
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mOnValueChangeListener:Lcom/caf/fmradio/HorizontalNumberPicker$OnValueChangeListener;

    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lcom/caf/fmradio/HorizontalNumberPicker$OnValueChangeListener;->onValueChange(Lcom/caf/fmradio/HorizontalNumberPicker;II)V

    .line 2007
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .parameter "scrollState"

    .prologue
    .line 1791
    iget v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 1799
    :cond_0
    :goto_0
    return-void

    .line 1794
    :cond_1
    iput p1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mScrollState:I

    .line 1795
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mOnScrollListener:Lcom/caf/fmradio/HorizontalNumberPicker$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1797
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mOnScrollListener:Lcom/caf/fmradio/HorizontalNumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/caf/fmradio/HorizontalNumberPicker$OnScrollListener;->onScrollStateChange(Lcom/caf/fmradio/HorizontalNumberPicker;I)V

    goto :goto_0
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 3
    .parameter "scroller"

    .prologue
    const/4 v2, 0x0

    .line 1770
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mOnScrollFinishListener:Lcom/caf/fmradio/HorizontalNumberPicker$OnScrollFinishListener;

    if-eqz v0, :cond_0

    .line 1771
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mOnScrollFinishListener:Lcom/caf/fmradio/HorizontalNumberPicker$OnScrollFinishListener;

    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mValue:I

    invoke-interface {v0, v1}, Lcom/caf/fmradio/HorizontalNumberPicker$OnScrollFinishListener;->onScrollFinish(I)V

    .line 1773
    :cond_0
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_1

    .line 1774
    iget v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorWheelState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1775
    invoke-direct {p0, v2}, Lcom/caf/fmradio/HorizontalNumberPicker;->postAdjustScrollerCommand(I)V

    .line 1776
    invoke-direct {p0, v2}, Lcom/caf/fmradio/HorizontalNumberPicker;->onScrollStateChange(I)V

    .line 1785
    :cond_1
    return-void
.end method

.method private postAdjustScrollerCommand(I)V
    .locals 3
    .parameter "delayMillis"

    .prologue
    .line 2095
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mAdjustScrollerCommand:Lcom/caf/fmradio/HorizontalNumberPicker$AdjustScrollerCommand;

    if-nez v0, :cond_0

    .line 2096
    new-instance v0, Lcom/caf/fmradio/HorizontalNumberPicker$AdjustScrollerCommand;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/HorizontalNumberPicker$AdjustScrollerCommand;-><init>(Lcom/caf/fmradio/HorizontalNumberPicker;)V

    iput-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mAdjustScrollerCommand:Lcom/caf/fmradio/HorizontalNumberPicker$AdjustScrollerCommand;

    .line 2100
    :goto_0
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mAdjustScrollerCommand:Lcom/caf/fmradio/HorizontalNumberPicker$AdjustScrollerCommand;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/caf/fmradio/HorizontalNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2101
    return-void

    .line 2098
    :cond_0
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mAdjustScrollerCommand:Lcom/caf/fmradio/HorizontalNumberPicker$AdjustScrollerCommand;

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/HorizontalNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 1

    .prologue
    .line 2029
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/caf/fmradio/HorizontalNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2030
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/caf/fmradio/HorizontalNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/HorizontalNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2032
    :cond_0
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mAdjustScrollerCommand:Lcom/caf/fmradio/HorizontalNumberPicker$AdjustScrollerCommand;

    if-eqz v0, :cond_1

    .line 2033
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mAdjustScrollerCommand:Lcom/caf/fmradio/HorizontalNumberPicker$AdjustScrollerCommand;

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/HorizontalNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2035
    :cond_1
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSetSelectionCommand:Lcom/caf/fmradio/HorizontalNumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_2

    .line 2036
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSetSelectionCommand:Lcom/caf/fmradio/HorizontalNumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/HorizontalNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2038
    :cond_2
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .parameter "minSize"
    .parameter "measuredSize"
    .parameter "measureSpec"

    .prologue
    .line 1584
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1585
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1586
    .local v0, desiredWidth:I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lcom/caf/fmradio/HorizontalNumberPicker;->resolveSizeAndState(III)I

    move-result p2

    .line 1588
    .end local v0           #desiredWidth:I
    .end local p2
    :cond_0
    return p2
.end method

.method private setSelectorWheelState(I)V
    .locals 3
    .parameter "selectorWheelState"

    .prologue
    const/4 v2, 0x2

    .line 1723
    iput p1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorWheelState:I

    .line 1724
    if-ne p1, v2, :cond_0

    .line 1725
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1728
    :cond_0
    iget-boolean v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mFlingable:Z

    if-eqz v0, :cond_1

    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1730
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 1731
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mContext:Landroid/content/Context;

    const v1, 0x1040511

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1734
    :cond_1
    return-void
.end method

.method private showInputControls(J)V
    .locals 0
    .parameter "animationDuration"

    .prologue
    .line 1852
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 10

    .prologue
    .line 1184
    iget-boolean v8, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mComputeMaxWidth:Z

    if-nez v8, :cond_1

    .line 1224
    :cond_0
    :goto_0
    return-void

    .line 1187
    :cond_1
    const/4 v4, 0x0

    .line 1188
    .local v4, maxTextWidth:I
    iget-object v8, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v8, :cond_6

    .line 1189
    const/4 v3, 0x0

    .line 1190
    .local v3, maxDigitWidth:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/16 v8, 0x9

    if-gt v2, v8, :cond_3

    .line 1191
    iget-object v8, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1193
    .local v1, digitWidth:F
    cmpl-float v8, v1, v3

    if-lez v8, :cond_2

    .line 1194
    move v3, v1

    .line 1190
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1197
    .end local v1           #digitWidth:F
    :cond_3
    const/4 v5, 0x0

    .line 1198
    .local v5, numberOfDigits:I
    iget v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMaxValue:I

    .line 1199
    .local v0, current:I
    :goto_2
    if-lez v0, :cond_4

    .line 1200
    add-int/lit8 v5, v5, 0x1

    .line 1201
    div-int/lit8 v0, v0, 0xa

    goto :goto_2

    .line 1203
    :cond_4
    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v4, v8

    .line 1216
    .end local v0           #current:I
    .end local v3           #maxDigitWidth:F
    .end local v5           #numberOfDigits:I
    :cond_5
    iget v8, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMaxWidth:I

    if-eq v8, v4, :cond_0

    .line 1217
    if-lez v4, :cond_8

    .line 1218
    iput v4, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMaxWidth:I

    .line 1222
    :goto_3
    invoke-virtual {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->invalidate()V

    goto :goto_0

    .line 1205
    .end local v2           #i:I
    :cond_6
    iget-object v8, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v7, v8

    .line 1206
    .local v7, valueCount:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    if-ge v2, v7, :cond_5

    .line 1207
    iget-object v8, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1209
    .local v6, textWidth:F
    int-to-float v8, v4

    cmpl-float v8, v6, v8

    if-lez v8, :cond_7

    .line 1210
    float-to-int v4, v6

    .line 1206
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1220
    .end local v6           #textWidth:F
    .end local v7           #valueCount:I
    :cond_8
    const/4 v8, 0x0

    iput v8, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMaxWidth:I

    goto :goto_3
.end method

.method private updateIncrementAndDecrementButtonsVisibilityState()V
    .locals 2

    .prologue
    .line 1871
    iget-boolean v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mValue:I

    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMaxValue:I

    if-ge v0, v1, :cond_0

    .line 1876
    :cond_0
    iget-boolean v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mValue:I

    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMinValue:I

    if-le v0, v1, :cond_1

    .line 1881
    :cond_1
    return-void
.end method

.method private updateInputTextView()V
    .locals 1

    .prologue
    .line 1983
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1990
    :cond_0
    iget-boolean v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mFlingable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1997
    :cond_1
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 971
    iget v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorWheelState:I

    if-nez v3, :cond_1

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 974
    :cond_1
    iget-object v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 975
    .local v2, scroller:Landroid/widget/Scroller;
    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 976
    iget-object v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 977
    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 981
    :cond_2
    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 983
    iget-boolean v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mHorizontal:Z

    if-eqz v3, :cond_4

    .line 984
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 985
    .local v0, currentScrollerX:I
    iget v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mPreviousScrollerX:I

    if-nez v3, :cond_3

    .line 986
    invoke-virtual {v2}, Landroid/widget/Scroller;->getStartX()I

    move-result v3

    iput v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mPreviousScrollerX:I

    .line 990
    :cond_3
    iget v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mPreviousScrollerX:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v3, v4}, Lcom/caf/fmradio/HorizontalNumberPicker;->scrollBy(II)V

    .line 991
    iput v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mPreviousScrollerX:I

    .line 1002
    .end local v0           #currentScrollerX:I
    :goto_1
    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1003
    invoke-direct {p0, v2}, Lcom/caf/fmradio/HorizontalNumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 994
    :cond_4
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 995
    .local v1, currentScrollerY:I
    iget v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mPreviousScrollerY:I

    if-nez v3, :cond_5

    .line 996
    invoke-virtual {v2}, Landroid/widget/Scroller;->getStartY()I

    move-result v3

    iput v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mPreviousScrollerY:I

    .line 998
    :cond_5
    iget v3, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mPreviousScrollerY:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v4, v3}, Lcom/caf/fmradio/HorizontalNumberPicker;->scrollBy(II)V

    .line 999
    iput v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mPreviousScrollerY:I

    goto :goto_1

    .line 1005
    .end local v1           #currentScrollerY:I
    :cond_6
    invoke-virtual {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->invalidate()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 1429
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 951
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 952
    .local v0, keyCode:I
    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    .line 954
    :cond_0
    invoke-direct {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->removeAllCallbacks()V

    .line 956
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 933
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 934
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 946
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 936
    :pswitch_0
    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorWheelState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 937
    invoke-direct {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->removeAllCallbacks()V

    .line 938
    invoke-direct {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->forceCompleteChangeCurrentByOneViaScroll()V

    goto :goto_0

    .line 943
    :pswitch_1
    invoke-direct {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 934
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 961
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 962
    .local v0, action:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 964
    :cond_0
    invoke-direct {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->removeAllCallbacks()V

    .line 966
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 1441
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1456
    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1407
    const v0, 0x3f666666

    return v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 1326
    iget v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMaxValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 1086
    iget v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1402
    const v0, 0x3f666666

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1284
    iget v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mValue:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 1412
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1415
    iget-boolean v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mFlingable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1417
    iget-wide v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mShowInputControlsAnimimationDuration:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/caf/fmradio/HorizontalNumberPicker;->showInputControls(J)V

    .line 1419
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1423
    invoke-direct {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->removeAllCallbacks()V

    .line 1424
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .parameter "canvas"

    .prologue
    .line 1460
    move-object/from16 v0, p0

    iget v3, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorWheelState:I

    if-nez v3, :cond_0

    .line 1533
    :goto_0
    return-void

    .line 1464
    :cond_0
    const/4 v4, 0x0

    .line 1465
    .local v4, x:F
    const/16 v21, 0x0

    .line 1466
    .local v21, y:F
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mHorizontal:Z

    if-nez v3, :cond_5

    .line 1467
    move-object/from16 v0, p0

    iget v3, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mRight:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mLeft:I

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    int-to-float v4, v3

    .line 1468
    move-object/from16 v0, p0

    iget v3, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    int-to-float v0, v3

    move/from16 v21, v0

    .line 1478
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v17

    .line 1480
    .local v17, restoreCount:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorWheelState:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 1481
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 1482
    .local v10, clipBounds:Landroid/graphics/Rect;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorElementHeight:I

    invoke-virtual {v10, v3, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 1483
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1487
    .end local v10           #clipBounds:Landroid/graphics/Rect;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorIndices:[I

    move-object/from16 v20, v0

    .line 1488
    .local v20, selectorIndices:[I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    move-object/from16 v0, v20

    array-length v3, v0

    move/from16 v0, v16

    if-ge v0, v3, :cond_9

    .line 1489
    aget v19, v20, v16

    .line 1490
    .local v19, selectorIndex:I
    const/4 v13, 0x0

    .line 1491
    .local v13, fNumber:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1493
    .local v18, scrollSelectorValue:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    sub-int v3, v16, v3

    if-lez v3, :cond_6

    .line 1494
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1495
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v5, v16

    mul-int/lit16 v5, v5, 0xff

    move-object/from16 v0, p0

    iget v6, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    div-int/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1504
    :goto_3
    :try_start_0
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 1509
    :goto_4
    const/4 v9, 0x0

    .line 1510
    .local v9, bShowNumber:Z
    move-object/from16 v0, p0

    iget v15, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mScaleWidth:F

    .line 1511
    .local v15, fWidthOfScale:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mGapBetweenNumAndScale:F

    sget v5, Lcom/caf/fmradio/HorizontalNumberPicker;->mDensity:F

    mul-float v12, v3, v5

    .line 1512
    .local v12, fGapBetweenNumAndScale:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mScaleLengthShort:F

    sget v5, Lcom/caf/fmradio/HorizontalNumberPicker;->mDensity:F

    mul-float v14, v3, v5

    .line 1514
    .local v14, fScaleLength:F
    const/high16 v3, 0x42c8

    mul-float/2addr v3, v13

    float-to-int v3, v3

    rem-int/lit8 v3, v3, 0x32

    if-nez v3, :cond_3

    .line 1515
    invoke-virtual/range {p0 .. p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->getMaxValue()I

    move-result v3

    move/from16 v0, v19

    if-eq v0, v3, :cond_3

    .line 1516
    const/4 v9, 0x1

    .line 1517
    move-object/from16 v0, p0

    iget v3, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mScaleLengthLong:F

    sget v5, Lcom/caf/fmradio/HorizontalNumberPicker;->mDensity:F

    mul-float v14, v3, v5

    .line 1520
    :cond_3
    if-eqz v9, :cond_4

    .line 1521
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1523
    :cond_4
    add-float v5, v21, v12

    add-float v6, v4, v15

    add-float v3, v21, v12

    add-float v7, v3, v14

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1526
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mHorizontal:Z

    if-eqz v3, :cond_8

    .line 1527
    move-object/from16 v0, p0

    iget v3, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorElementWidth:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    .line 1488
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 1470
    .end local v9           #bShowNumber:Z
    .end local v12           #fGapBetweenNumAndScale:F
    .end local v13           #fNumber:F
    .end local v14           #fScaleLength:F
    .end local v15           #fWidthOfScale:F
    .end local v16           #i:I
    .end local v17           #restoreCount:I
    .end local v18           #scrollSelectorValue:Ljava/lang/String;
    .end local v19           #selectorIndex:I
    .end local v20           #selectorIndices:[I
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    int-to-float v4, v3

    .line 1471
    move-object/from16 v0, p0

    iget v3, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mBottom:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mTop:I

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mTextSize:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    int-to-float v0, v3

    move/from16 v21, v0

    .line 1472
    sget v3, Lcom/caf/fmradio/HorizontalNumberPicker;->mDensity:F

    const/high16 v5, 0x3fc0

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v5, 0x3a83126f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 1473
    move-object/from16 v0, p0

    iget v3, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mHdpiPositionAdjust:F

    add-float v21, v21, v3

    goto/16 :goto_1

    .line 1496
    .restart local v13       #fNumber:F
    .restart local v16       #i:I
    .restart local v17       #restoreCount:I
    .restart local v18       #scrollSelectorValue:Ljava/lang/String;
    .restart local v19       #selectorIndex:I
    .restart local v20       #selectorIndices:[I
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    sub-int v3, v16, v3

    if-gez v3, :cond_7

    .line 1497
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1498
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move/from16 v0, v16

    mul-int/lit16 v5, v0, 0xff

    move-object/from16 v0, p0

    iget v6, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    div-int/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_3

    .line 1500
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/high16 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1501
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_3

    .line 1505
    :catch_0
    move-exception v11

    .line 1506
    .local v11, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v11}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_4

    .line 1529
    .end local v11           #e:Ljava/lang/NumberFormatException;
    .restart local v9       #bShowNumber:Z
    .restart local v12       #fGapBetweenNumAndScale:F
    .restart local v14       #fScaleLength:F
    .restart local v15       #fWidthOfScale:F
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorElementHeight:I

    int-to-float v3, v3

    add-float v21, v21, v3

    goto :goto_5

    .line 1532
    .end local v9           #bShowNumber:Z
    .end local v12           #fGapBetweenNumAndScale:F
    .end local v13           #fNumber:F
    .end local v14           #fScaleLength:F
    .end local v15           #fWidthOfScale:F
    .end local v18           #scrollSelectorValue:Ljava/lang/String;
    .end local v19           #selectorIndex:I
    :cond_9
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 801
    invoke-virtual {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mFlingable:Z

    if-nez v7, :cond_1

    :cond_0
    move v5, v6

    .line 849
    :goto_0
    return v5

    .line 804
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_2
    :pswitch_0
    move v5, v6

    .line 849
    goto :goto_0

    .line 806
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mLastDownEventY:F

    iput v7, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mLastMotionEventY:F

    .line 807
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mLastDownEventX:F

    iput v7, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mLastMotionEventX:F

    .line 808
    invoke-direct {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->removeAllCallbacks()V

    .line 809
    iput-boolean v6, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mBeginEditOnUpEvent:Z

    .line 810
    iput-boolean v5, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 811
    iget v7, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorWheelState:I

    if-ne v7, v8, :cond_5

    .line 812
    iget-object v7, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v8, 0xff

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 813
    iget-object v7, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_4

    move v4, v5

    .line 815
    .local v4, scrollersFinished:Z
    :goto_1
    if-nez v4, :cond_3

    .line 816
    iget-object v7, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v7, v5}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 817
    iget-object v7, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v7, v5}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 818
    invoke-direct {p0, v6}, Lcom/caf/fmradio/HorizontalNumberPicker;->onScrollStateChange(I)V

    .line 820
    :cond_3
    iput-boolean v4, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mBeginEditOnUpEvent:Z

    .line 821
    iput-boolean v5, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mAdjustScrollerOnUpEvent:Z

    goto :goto_0

    .end local v4           #scrollersFinished:Z
    :cond_4
    move v4, v6

    .line 813
    goto :goto_1

    .line 825
    :cond_5
    iput-boolean v6, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 826
    invoke-direct {p0, v8}, Lcom/caf/fmradio/HorizontalNumberPicker;->setSelectorWheelState(I)V

    goto :goto_0

    .line 830
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 831
    .local v1, currentMoveY:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 832
    .local v0, currentMoveX:F
    iget v7, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mLastDownEventY:F

    sub-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-int v3, v7

    .line 833
    .local v3, deltaDownY:I
    iget v7, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mLastDownEventX:F

    sub-float v7, v0, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-int v2, v7

    .line 834
    .local v2, deltaDownX:I
    iget-boolean v7, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mHorizontal:Z

    if-eqz v7, :cond_6

    .line 835
    iget v7, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mLastDownEventX:F

    iget v8, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 836
    iput-boolean v6, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mBeginEditOnUpEvent:Z

    .line 837
    invoke-direct {p0, v5}, Lcom/caf/fmradio/HorizontalNumberPicker;->onScrollStateChange(I)V

    goto/16 :goto_0

    .line 841
    :cond_6
    iget v7, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mTouchSlop:I

    if-le v3, v7, :cond_2

    .line 842
    iput-boolean v6, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mBeginEditOnUpEvent:Z

    .line 843
    invoke-direct {p0, v5}, Lcom/caf/fmradio/HorizontalNumberPicker;->onScrollStateChange(I)V

    goto/16 :goto_0

    .line 804
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->getMeasuredWidth()I

    move-result v1

    .line 727
    .local v1, msrdWdth:I
    invoke-virtual {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->getMeasuredHeight()I

    move-result v0

    .line 729
    .local v0, msrdHght:I
    iget-boolean v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mScrollWheelAndFadingEdgesInitialized:Z

    if-nez v2, :cond_0

    .line 730
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mScrollWheelAndFadingEdgesInitialized:Z

    .line 732
    invoke-direct {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->initializeSelectorWheel()V

    .line 733
    invoke-direct {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->initializeFadingEdges()V

    .line 735
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/caf/fmradio/HorizontalNumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 736
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 785
    iget v4, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Lcom/caf/fmradio/HorizontalNumberPicker;->makeMeasureSpec(II)I

    move-result v2

    .line 787
    .local v2, newWidthMeasureSpec:I
    iget v4, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Lcom/caf/fmradio/HorizontalNumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 789
    .local v1, newHeightMeasureSpec:I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 792
    invoke-virtual {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->getMeasuredWidth()I

    move-result v4

    invoke-direct {p0, v5, v4, p1}, Lcom/caf/fmradio/HorizontalNumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 794
    .local v3, widthSize:I
    invoke-virtual {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->getMeasuredHeight()I

    move-result v4

    invoke-direct {p0, v5, v4, p2}, Lcom/caf/fmradio/HorizontalNumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 796
    .local v0, heightSize:I
    invoke-virtual {p0, v3, v0}, Lcom/caf/fmradio/HorizontalNumberPicker;->setMeasuredDimension(II)V

    .line 797
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 854
    invoke-virtual {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_0

    .line 928
    :goto_0
    return v7

    .line 857
    :cond_0
    iget-object v9, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_1

    .line 858
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 860
    :cond_1
    iget-object v9, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 861
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 863
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v7, v8

    .line 928
    goto :goto_0

    .line 865
    :pswitch_0
    iget-boolean v9, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mHorizontal:Z

    if-nez v9, :cond_4

    .line 866
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 867
    .local v2, currentMoveY:F
    iget-boolean v9, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mBeginEditOnUpEvent:Z

    if-nez v9, :cond_2

    iget v9, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mScrollState:I

    if-eq v9, v8, :cond_3

    .line 869
    :cond_2
    iget v9, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mLastDownEventY:F

    sub-float v9, v2, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v4, v9

    .line 871
    .local v4, deltaDownY:I
    iget v9, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mTouchSlop:I

    if-le v4, v9, :cond_3

    .line 872
    iput-boolean v7, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mBeginEditOnUpEvent:Z

    .line 873
    invoke-direct {p0, v8}, Lcom/caf/fmradio/HorizontalNumberPicker;->onScrollStateChange(I)V

    .line 876
    .end local v4           #deltaDownY:I
    :cond_3
    iget v9, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mLastMotionEventY:F

    sub-float v9, v2, v9

    float-to-int v6, v9

    .line 877
    .local v6, deltaMoveY:I
    invoke-virtual {p0, v7, v6}, Lcom/caf/fmradio/HorizontalNumberPicker;->scrollBy(II)V

    .line 878
    invoke-virtual {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->invalidate()V

    .line 879
    iput v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mLastMotionEventY:F

    goto :goto_1

    .line 881
    .end local v2           #currentMoveY:F
    .end local v6           #deltaMoveY:I
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 882
    .local v1, currentMoveX:F
    iget-boolean v9, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mBeginEditOnUpEvent:Z

    if-nez v9, :cond_5

    iget v9, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mScrollState:I

    if-eq v9, v8, :cond_6

    .line 884
    :cond_5
    iget v9, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mLastDownEventX:F

    sub-float v9, v1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v3, v9

    .line 886
    .local v3, deltaDownX:I
    iget v9, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mTouchSlop:I

    if-le v3, v9, :cond_6

    .line 887
    iput-boolean v7, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mBeginEditOnUpEvent:Z

    .line 888
    invoke-direct {p0, v8}, Lcom/caf/fmradio/HorizontalNumberPicker;->onScrollStateChange(I)V

    .line 891
    .end local v3           #deltaDownX:I
    :cond_6
    iget v9, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mLastMotionEventX:F

    sub-float v9, v1, v9

    float-to-int v5, v9

    .line 892
    .local v5, deltaMoveX:I
    invoke-virtual {p0, v5, v7}, Lcom/caf/fmradio/HorizontalNumberPicker;->scrollBy(II)V

    .line 893
    invoke-virtual {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->invalidate()V

    .line 894
    iput v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mLastMotionEventX:F

    goto :goto_1

    .line 898
    .end local v1           #currentMoveX:F
    .end local v5           #deltaMoveX:I
    :pswitch_1
    iget-boolean v9, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mBeginEditOnUpEvent:Z

    if-eqz v9, :cond_7

    .line 899
    invoke-direct {p0, v8}, Lcom/caf/fmradio/HorizontalNumberPicker;->setSelectorWheelState(I)V

    move v7, v8

    .line 900
    goto :goto_0

    .line 915
    :cond_7
    iget-boolean v9, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mAdjustScrollerOnUpEvent:Z

    if-eqz v9, :cond_9

    .line 916
    iget-object v9, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 918
    invoke-direct {p0, v7}, Lcom/caf/fmradio/HorizontalNumberPicker;->postAdjustScrollerCommand(I)V

    .line 924
    :cond_8
    :goto_2
    iget-object v7, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->recycle()V

    .line 925
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 921
    :cond_9
    sget v7, Lcom/caf/fmradio/HorizontalNumberPicker;->SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

    invoke-direct {p0, v7}, Lcom/caf/fmradio/HorizontalNumberPicker;->postAdjustScrollerCommand(I)V

    goto :goto_2

    .line 863
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scrollBy(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1016
    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorWheelState:I

    if-nez v1, :cond_1

    .line 1082
    :cond_0
    :goto_0
    return-void

    .line 1019
    :cond_1
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorIndices:[I

    .line 1020
    .local v0, selectorIndices:[I
    iget-boolean v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mHorizontal:Z

    if-nez v1, :cond_6

    .line 1021
    iget-boolean v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    aget v1, v0, v1

    iget v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_2

    .line 1023
    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1026
    :cond_2
    iget-boolean v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    aget v1, v0, v1

    iget v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_3

    .line 1028
    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1031
    :cond_3
    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    .line 1032
    :cond_4
    :goto_1
    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_5

    .line 1033
    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    .line 1034
    invoke-direct {p0, v0}, Lcom/caf/fmradio/HorizontalNumberPicker;->decrementSelectorIndices([I)V

    .line 1035
    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    aget v1, v0, v1

    invoke-direct {p0, v1}, Lcom/caf/fmradio/HorizontalNumberPicker;->changeCurrent(I)V

    .line 1036
    iget-boolean v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    aget v1, v0, v1

    iget v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_4

    .line 1038
    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    .line 1041
    :cond_5
    :goto_2
    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 1042
    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    .line 1043
    invoke-direct {p0, v0}, Lcom/caf/fmradio/HorizontalNumberPicker;->incrementSelectorIndices([I)V

    .line 1044
    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    aget v1, v0, v1

    invoke-direct {p0, v1}, Lcom/caf/fmradio/HorizontalNumberPicker;->changeCurrent(I)V

    .line 1045
    iget-boolean v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_5

    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    aget v1, v0, v1

    iget v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_5

    .line 1047
    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    goto :goto_2

    .line 1051
    :cond_6
    iget-boolean v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_7

    if-lez p1, :cond_7

    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    aget v1, v0, v1

    iget v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_7

    .line 1053
    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    goto/16 :goto_0

    .line 1056
    :cond_7
    iget-boolean v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_8

    if-gez p1, :cond_8

    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    aget v1, v0, v1

    iget v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_8

    .line 1058
    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    goto/16 :goto_0

    .line 1061
    :cond_8
    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    .line 1062
    :cond_9
    :goto_3
    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorTextGapWidth:I

    if-le v1, v2, :cond_a

    .line 1063
    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorElementWidth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    .line 1064
    invoke-direct {p0, v0}, Lcom/caf/fmradio/HorizontalNumberPicker;->decrementSelectorIndices([I)V

    .line 1065
    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    aget v1, v0, v1

    invoke-direct {p0, v1}, Lcom/caf/fmradio/HorizontalNumberPicker;->changeCurrent(I)V

    .line 1066
    iget-boolean v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_9

    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    aget v1, v0, v1

    iget v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_9

    .line 1068
    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    goto :goto_3

    .line 1071
    :cond_a
    :goto_4
    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorTextGapWidth:I

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 1072
    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorElementWidth:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    .line 1073
    invoke-direct {p0, v0}, Lcom/caf/fmradio/HorizontalNumberPicker;->incrementSelectorIndices([I)V

    .line 1074
    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    aget v1, v0, v1

    invoke-direct {p0, v1}, Lcom/caf/fmradio/HorizontalNumberPicker;->changeCurrent(I)V

    .line 1075
    iget-boolean v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_a

    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    aget v1, v0, v1

    iget v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_a

    .line 1077
    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    goto :goto_4
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .parameter "eventType"

    .prologue
    .line 1539
    return-void
.end method

.method public setDensity(I)V
    .locals 1
    .parameter "density"

    .prologue
    const/high16 v0, 0x3f80

    .line 744
    sparse-switch p1, :sswitch_data_0

    .line 758
    sput v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mDensity:F

    .line 761
    :goto_0
    return-void

    .line 746
    :sswitch_0
    const/high16 v0, 0x3f40

    sput v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mDensity:F

    goto :goto_0

    .line 749
    :sswitch_1
    sput v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mDensity:F

    goto :goto_0

    .line 752
    :sswitch_2
    const/high16 v0, 0x3fc0

    sput v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mDensity:F

    goto :goto_0

    .line 755
    :sswitch_3
    const/high16 v0, 0x4000

    sput v0, Lcom/caf/fmradio/HorizontalNumberPicker;->mDensity:F

    goto :goto_0

    .line 744
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_3
    .end sparse-switch
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1
    .parameter "displayedValues"

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1382
    :goto_0
    return-void

    .line 1371
    :cond_0
    iput-object p1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1372
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1380
    :cond_1
    invoke-direct {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->initializeSelectorWheelIndices()V

    .line 1381
    invoke-direct {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->tryComputeMaxWidth()V

    goto :goto_0
.end method

.method public setDisplayedValues([Ljava/lang/String;Z)V
    .locals 1
    .parameter "displayeValues"
    .parameter "autoCalculateMinMax"

    .prologue
    .line 1393
    if-eqz p2, :cond_0

    .line 1394
    const/4 v0, 0x0

    iput v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMinValue:I

    .line 1395
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMaxValue:I

    .line 1397
    :cond_0
    invoke-virtual {p0, p1}, Lcom/caf/fmradio/HorizontalNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 1398
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1011
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1012
    return-void
.end method

.method public setOnValueChangedListener(Lcom/caf/fmradio/HorizontalNumberPicker$OnValueChangeListener;)V
    .locals 0
    .parameter "onValueChangedListener"

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mOnValueChangeListener:Lcom/caf/fmradio/HorizontalNumberPicker$OnValueChangeListener;

    .line 1098
    return-void
.end method

.method public setScale(Lcom/caf/fmradio/HorizontalNumberPicker$Scale;)V
    .locals 2
    .parameter "scale"

    .prologue
    .line 764
    sget-object v0, Lcom/caf/fmradio/HorizontalNumberPicker$2;->$SwitchMap$com$caf$fmradio$HorizontalNumberPicker$Scale:[I

    invoke-virtual {p1}, Lcom/caf/fmradio/HorizontalNumberPicker$Scale;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 778
    :goto_0
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorIndices:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    .line 779
    invoke-direct {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->initializeSelectorWheel()V

    .line 781
    return-void

    .line 766
    :pswitch_0
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->SELECTOR_INDICES_SMALL:[I

    iput-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorIndices:[I

    goto :goto_0

    .line 769
    :pswitch_1
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->SELECTOR_INDICES_MEDIUM:[I

    iput-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorIndices:[I

    goto :goto_0

    .line 772
    :pswitch_2
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->SELECTOR_INDICES_LARGE:[I

    iput-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorIndices:[I

    goto :goto_0

    .line 764
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTextSize(I)V
    .locals 2
    .parameter "textSize"

    .prologue
    .line 738
    if-lez p1, :cond_0

    .line 739
    iput p1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mTextSize:I

    .line 740
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 742
    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 1164
    iget v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mValue:I

    if-ne v0, p1, :cond_0

    .line 1178
    :goto_0
    return-void

    .line 1167
    :cond_0
    iget v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_1

    .line 1168
    iget-boolean v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_3

    iget p1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMaxValue:I

    .line 1170
    :cond_1
    :goto_1
    iget v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_2

    .line 1171
    iget-boolean v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_4

    iget p1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMinValue:I

    .line 1173
    :cond_2
    :goto_2
    iput p1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mValue:I

    .line 1174
    invoke-direct {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->initializeSelectorWheelIndices()V

    .line 1175
    invoke-direct {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->updateInputTextView()V

    .line 1176
    invoke-direct {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 1177
    invoke-virtual {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->invalidate()V

    goto :goto_0

    .line 1168
    :cond_3
    iget p1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMinValue:I

    goto :goto_1

    .line 1171
    :cond_4
    iget p1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMaxValue:I

    goto :goto_2
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2
    .parameter "wrapSelectorWheel"

    .prologue
    .line 1252
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1254
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Range less than selector items count."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1257
    :cond_0
    iget-boolean v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v0, :cond_1

    .line 1258
    iput-boolean p1, p0, Lcom/caf/fmradio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    .line 1259
    invoke-direct {p0}, Lcom/caf/fmradio/HorizontalNumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 1261
    :cond_1
    return-void
.end method
