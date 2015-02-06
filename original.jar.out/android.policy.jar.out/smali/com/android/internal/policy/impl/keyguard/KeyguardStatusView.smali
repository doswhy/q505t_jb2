.class public Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;
.super Landroid/widget/GridLayout;
.source "KeyguardStatusView.java"


# static fields
.field public static final ALARM_ICON:I = 0x108002e

.field public static final BATTERY_LOW_ICON:I = 0x0

.field public static final CHARGING_ICON:I = 0x0

.field private static final DEBUG:Z = false

.field public static final LOCK_ICON:I = 0x0

.field private static final TAG:Ljava/lang/String; = "KeyguardStatusView"


# instance fields
.field private mAlarmStatusView:Landroid/widget/TextView;

.field private mClockView:Lcom/android/internal/policy/impl/keyguard/ClockView;

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mDateView:Landroid/widget/TextView;

.field private mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 73
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 82
    return-void
.end method

.method private maybeSetUpperCaseText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "textView"
    .parameter "text"

    .prologue
    .line 166
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->USE_UPPER_CASE:Z

    if-eqz v0, :cond_1

    .line 167
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :goto_1
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public getAppWidgetId()I
    .locals 1

    .prologue
    .line 162
    const/4 v0, -0x2

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Landroid/widget/GridLayout;->onAttachedToWindow()V

    .line 152
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 153
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Landroid/widget/GridLayout;->onDetachedFromWindow()V

    .line 158
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 159
    return-void
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 86
    invoke-super {p0}, Landroid/widget/GridLayout;->onFinishInflate()V

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 98
    .local v4, res:Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "date_format"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, mod:Ljava/lang/String;
    const v6, 0x104002d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, fmt:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v6, "dd-MM-yyyy"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 102
    const v6, 0x104002e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_0
    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-direct {v6, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 107
    const v6, 0x1020063

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextView;

    .line 108
    const v6, 0x10202e5

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    .line 109
    const v6, 0x10202e8

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/impl/keyguard/ClockView;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mClockView:Lcom/android/internal/policy/impl/keyguard/ClockView;

    .line 110
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 113
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextView;

    sget-object v7, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 116
    const/4 v6, 0x2

    new-array v2, v6, [Landroid/view/View;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextView;

    aput-object v7, v2, v6

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    aput-object v6, v2, v8

    .line 117
    .local v2, marqueeViews:[Landroid/view/View;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v2

    if-ge v1, v6, :cond_2

    .line 118
    aget-object v5, v2, v1

    .line 119
    .local v5, v:Landroid/view/View;
    if-nez v5, :cond_1

    .line 120
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t find widget at index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 122
    :cond_1
    invoke-virtual {v5, v8}, Landroid/view/View;->setSelected(Z)V

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v5           #v:Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->refresh()V

    .line 125
    return-void
.end method

.method protected refresh()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mClockView:Lcom/android/internal/policy/impl/keyguard/ClockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ClockView;->updateTime()V

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->refreshDate()V

    .line 130
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->refreshAlarmStatus()V

    .line 131
    return-void
.end method

.method refreshAlarmStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 135
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, nextAlarm:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->maybeSetUpperCaseText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 138
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    const v2, 0x108002e

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 139
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method refreshDate()V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->maybeSetUpperCaseText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 147
    return-void
.end method
