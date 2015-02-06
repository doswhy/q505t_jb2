.class public Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
.super Landroid/widget/FrameLayout;
.source "KeyguardWidgetFrame.java"


# static fields
.field static final ENABLE_HOVER_OVER_DELETE_DROP_TARGET_OVERLAY:Z = true

.field static final HOVER_OVER_DELETE_DROP_TARGET_OVERLAY_COLOR:I = -0x66010000

.field static final OUTLINE_ALPHA_MULTIPLIER:F = 0.6f

.field private static final sAddBlendMode:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field private mBackgroundAlpha:F

.field private mBackgroundAlphaMultiplier:F

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundRect:Landroid/graphics/Rect;

.field private mBgAlphaController:Ljava/lang/Object;

.field private mContentAlpha:F

.field private mForegroundAlpha:I

.field private mForegroundGradient:Landroid/graphics/LinearGradient;

.field private final mForegroundRect:Landroid/graphics/Rect;

.field private mFrameFade:Landroid/animation/Animator;

.field private mFrameHeight:I

.field private mFrameStrokeAdjustment:I

.field private mGradientColor:I

.field private mGradientPaint:Landroid/graphics/Paint;

.field private mIsHoveringOverDeleteDropTarget:Z

.field private mIsSmall:Z

.field mLeftToRight:Z

.field private mLeftToRightGradient:Landroid/graphics/LinearGradient;

.field private mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

.field private mMaxChallengeTop:I

.field private mOverScrollAmount:F

.field private mPerformAppWidgetSizeUpdateOnBootComplete:Z

.field private mRightToLeftGradient:Landroid/graphics/LinearGradient;

.field private mSmallFrameHeight:I

.field private mSmallWidgetHeight:I

.field private mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mWidgetLockedSmall:Z

.field private mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->sAddBlendMode:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 93
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    .line 57
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLeftToRight:Z

    .line 59
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mOverScrollAmount:F

    .line 60
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    .line 61
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundAlpha:I

    .line 64
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    .line 69
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    .line 71
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundRect:Landroid/graphics/Rect;

    .line 77
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mWidgetLockedSmall:Z

    .line 78
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mMaxChallengeTop:I

    .line 140
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 103
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 108
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 109
    .local v0, density:F
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x4100

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 112
    .local v1, padding:I
    const/16 v3, -0xa

    invoke-virtual {p0, v5, v3, v5, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setPadding(IIII)V

    .line 115
    const/high16 v3, 0x4000

    mul-float/2addr v3, v0

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    .line 119
    const v3, 0x1050076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    .line 121
    const v3, 0x10803c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 122
    const v3, 0x1060048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mGradientColor:I

    .line 123
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->sAddBlendMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mPerformAppWidgetSizeUpdateOnBootComplete:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mPerformAppWidgetSizeUpdateOnBootComplete:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->performAppWidgetSizeCallbacksIfNecessary()V

    return-void
.end method

.method private drawGradientOverlay(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 217
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 218
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 219
    return-void
.end method

.method private drawHoveringOverDeleteOverlay(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsHoveringOverDeleteDropTarget:Z

    if-eqz v0, :cond_0

    .line 223
    const/high16 v0, -0x6601

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 225
    :cond_0
    return-void
.end method

.method private performAppWidgetSizeCallbacksIfNecessary()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 477
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v7

    .line 478
    .local v7, content:Landroid/view/View;
    instance-of v1, v7, Landroid/appwidget/AppWidgetHostView;

    if-nez v1, :cond_0

    .line 494
    :goto_0
    return-void

    .line 480
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 481
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mPerformAppWidgetSizeUpdateOnBootComplete:Z

    goto :goto_0

    :cond_1
    move-object v0, v7

    .line 488
    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 489
    .local v0, awhv:Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v8, v1, Landroid/util/DisplayMetrics;->density:F

    .line 491
    .local v8, density:F
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    float-to-int v2, v1

    .line 492
    .local v2, width:I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    float-to-int v3, v1

    .line 493
    .local v3, height:I
    const/4 v1, 0x0

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIIIZ)V

    goto :goto_0
.end method

.method private setWidgetHeight(I)V
    .locals 4
    .parameter "height"

    .prologue
    .line 338
    const/4 v1, 0x0

    .line 339
    .local v1, needLayout:Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v2

    .line 340
    .local v2, widget:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 341
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 342
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, p1, :cond_0

    .line 343
    const/4 v1, 0x1

    .line 344
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 347
    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    if-eqz v1, :cond_1

    .line 348
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->requestLayout()V

    .line 350
    :cond_1
    return-void
.end method

.method private updateGradient()V
    .locals 15

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 445
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLeftToRight:Z

    if-eqz v0, :cond_0

    move v1, v2

    .line 446
    .local v1, x0:F
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLeftToRight:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    .line 447
    .local v3, x1:F
    :goto_1
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mGradientColor:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v4, v2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLeftToRightGradient:Landroid/graphics/LinearGradient;

    .line 449
    new-instance v7, Landroid/graphics/LinearGradient;

    iget v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mGradientColor:I

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v8, v3

    move v9, v2

    move v10, v1

    move v11, v2

    move v13, v6

    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mRightToLeftGradient:Landroid/graphics/LinearGradient;

    .line 451
    return-void

    .line 445
    .end local v1           #x0:F
    .end local v3           #x1:F
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v1, v0

    goto :goto_0

    .restart local v1       #x0:F
    :cond_1
    move v3, v2

    .line 446
    goto :goto_1
.end method


# virtual methods
.method public adjustFrame(I)V
    .locals 2
    .parameter "challengeTop"

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getPaddingBottom()I

    move-result v1

    add-int v0, p1, v1

    .line 371
    .local v0, frameHeight:I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    .line 372
    return-void
.end method

.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    .line 211
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->cancelLongPress()V

    .line 212
    return-void
.end method

.method public disableHardwareLayers()V
    .locals 2

    .prologue
    .line 280
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setLayerType(ILandroid/graphics/Paint;)V

    .line 281
    return-void
.end method

.method public disableHardwareLayersForContent()V
    .locals 3

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v0

    .line 270
    .local v0, widget:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 271
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 273
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 240
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 242
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->drawBg(Landroid/graphics/Canvas;)V

    .line 243
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 244
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->drawGradientOverlay(Landroid/graphics/Canvas;)V

    .line 246
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->drawHoveringOverDeleteOverlay(Landroid/graphics/Canvas;)V

    .line 247
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 249
    return-void
.end method

.method protected drawBg(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 228
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 231
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 232
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 233
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 235
    .end local v0           #bg:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public enableHardwareLayers()V
    .locals 2

    .prologue
    .line 276
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setLayerType(ILandroid/graphics/Paint;)V

    .line 277
    return-void
.end method

.method public enableHardwareLayersForContent()V
    .locals 3

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v0

    .line 258
    .local v0, widget:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 259
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 261
    :cond_0
    return-void
.end method

.method public fadeFrame(Ljava/lang/Object;ZFI)V
    .locals 5
    .parameter "caller"
    .parameter "takeControl"
    .parameter "alpha"
    .parameter "duration"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 426
    if-eqz p2, :cond_0

    .line 427
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBgAlphaController:Ljava/lang/Object;

    .line 430
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBgAlphaController:Ljava/lang/Object;

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBgAlphaController:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 442
    :goto_0
    return-void

    .line 434
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    if-eqz v1, :cond_2

    .line 435
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 436
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    .line 438
    :cond_2
    const-string v1, "backgroundAlpha"

    new-array v2, v4, [F

    aput p3, v2, v3

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 439
    .local v0, bgAlpha:Landroid/animation/PropertyValuesHolder;
    new-array v1, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v3

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    .line 440
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    int-to-long v2, p4

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 441
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    return v0
.end method

.method public getBackgroundAlphaMultiplier()F
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    return v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContentAlpha()F
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mContentAlpha:F

    return v0
.end method

.method public getContentAppWidgetId()I
    .locals 2

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v0

    .line 289
    .local v0, content:Landroid/view/View;
    instance-of v1, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v1, :cond_0

    .line 290
    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .end local v0           #content:Landroid/view/View;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    .line 294
    :goto_0
    return v1

    .line 291
    .restart local v0       #content:Landroid/view/View;
    :cond_0
    instance-of v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;

    if-eqz v1, :cond_1

    .line 292
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;

    .end local v0           #content:Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->getAppWidgetId()I

    move-result v1

    goto :goto_0

    .line 294
    .restart local v0       #content:Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSmallFrameHeight()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallFrameHeight:I

    return v0
.end method

.method public getWorkerHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public hideFrame(Ljava/lang/Object;)V
    .locals 3
    .parameter "caller"

    .prologue
    .line 417
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x177

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->fadeFrame(Ljava/lang/Object;ZFI)V

    .line 418
    return-void
.end method

.method public isSmall()Z
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    return v0
.end method

.method public onActive(Z)V
    .locals 0
    .parameter "isActive"

    .prologue
    .line 513
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 138
    return-void
.end method

.method public onBouncerShowing(Z)V
    .locals 0
    .parameter "showing"

    .prologue
    .line 522
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->cancelLongPress()V

    .line 130
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 132
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 179
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 166
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->postCheckForLongPress(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 169
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->onMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 174
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 472
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 473
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->performAppWidgetSizeCallbacksIfNecessary()V

    .line 474
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v6, 0x0

    .line 455
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 457
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    if-nez v0, :cond_0

    .line 458
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 466
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 467
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->updateGradient()V

    .line 468
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->invalidate()V

    .line 469
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 199
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 188
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->onMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 193
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onUserInteraction(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 517
    const/4 v0, 0x0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter "disallowIntercept"

    .prologue
    .line 204
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->cancelLongPress()V

    .line 206
    return-void
.end method

.method public resetSize()V
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    .line 400
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mWidgetLockedSmall:Z

    if-nez v0, :cond_0

    .line 401
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    .line 403
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    .line 404
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 314
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    .line 316
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->invalidate()V

    .line 318
    :cond_0
    return-void
.end method

.method public setBackgroundAlphaMultiplier(F)V
    .locals 1
    .parameter "multiplier"

    .prologue
    .line 303
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    .line 305
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->invalidate()V

    .line 307
    :cond_0
    return-void
.end method

.method public setContentAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 325
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mContentAlpha:F

    .line 326
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v0

    .line 327
    .local v0, content:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 330
    :cond_0
    return-void
.end method

.method public setFrameHeight(I)V
    .locals 6
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    .line 407
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    .line 408
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 409
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 412
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->updateGradient()V

    .line 413
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->invalidate()V

    .line 414
    return-void
.end method

.method setIsHoveringOverDeleteDropTarget(Z)V
    .locals 1
    .parameter "isHovering"

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsHoveringOverDeleteDropTarget:Z

    if-eq v0, p1, :cond_0

    .line 154
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsHoveringOverDeleteDropTarget:Z

    .line 155
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->invalidate()V

    .line 158
    :cond_0
    return-void
.end method

.method public setMaxChallengeTop(I)V
    .locals 2
    .parameter "top"

    .prologue
    .line 353
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mMaxChallengeTop:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 354
    .local v0, dirty:Z
    :goto_0
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mMaxChallengeTop:I

    .line 355
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getPaddingTop()I

    move-result v1

    sub-int v1, p1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    .line 356
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallFrameHeight:I

    .line 357
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    if-eqz v1, :cond_2

    .line 358
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    .line 359
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallFrameHeight:I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    .line 363
    :cond_0
    :goto_1
    return-void

    .line 353
    .end local v0           #dirty:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 360
    .restart local v0       #dirty:Z
    :cond_2
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mWidgetLockedSmall:Z

    if-eqz v1, :cond_0

    .line 361
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    goto :goto_1
.end method

.method setOverScrollAmount(FZ)V
    .locals 3
    .parameter "r"
    .parameter "left"

    .prologue
    .line 497
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mOverScrollAmount:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mOverScrollAmount:F

    .line 499
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLeftToRightGradient:Landroid/graphics/LinearGradient;

    :goto_0
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundGradient:Landroid/graphics/LinearGradient;

    .line 500
    const/high16 v1, 0x3f00

    mul-float/2addr v1, p1

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundAlpha:I

    .line 504
    const v1, 0x3f19999a

    const v2, 0x3ecccccc

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    const/high16 v2, 0x3f80

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 506
    .local v0, bgAlpha:F
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setBackgroundAlpha(F)V

    .line 507
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->invalidate()V

    .line 509
    .end local v0           #bgAlpha:F
    :cond_0
    return-void

    .line 499
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mRightToLeftGradient:Landroid/graphics/LinearGradient;

    goto :goto_0
.end method

.method public setWidgetLockedSmall(Z)V
    .locals 1
    .parameter "locked"

    .prologue
    .line 392
    if-eqz p1, :cond_0

    .line 393
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    .line 395
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mWidgetLockedSmall:Z

    .line 396
    return-void
.end method

.method public setWorkerHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "workerHandler"

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mWorkerHandler:Landroid/os/Handler;

    .line 526
    return-void
.end method

.method public showFrame(Ljava/lang/Object;)V
    .locals 3
    .parameter "caller"

    .prologue
    .line 421
    const/4 v0, 0x1

    const v1, 0x3f19999a

    const/16 v2, 0x64

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->fadeFrame(Ljava/lang/Object;ZFI)V

    .line 423
    return-void
.end method

.method public shrinkWidget()V
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->shrinkWidget(Z)V

    .line 389
    return-void
.end method

.method public shrinkWidget(Z)V
    .locals 1
    .parameter "alsoShrinkFrame"

    .prologue
    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    .line 376
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    .line 378
    if-eqz p1, :cond_0

    .line 379
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallFrameHeight:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    .line 381
    :cond_0
    return-void
.end method
