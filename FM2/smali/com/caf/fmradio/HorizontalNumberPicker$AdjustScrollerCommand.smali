.class Lcom/caf/fmradio/HorizontalNumberPicker$AdjustScrollerCommand;
.super Ljava/lang/Object;
.source "HorizontalNumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/HorizontalNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdjustScrollerCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/fmradio/HorizontalNumberPicker;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/HorizontalNumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 2186
    iput-object p1, p0, Lcom/caf/fmradio/HorizontalNumberPicker$AdjustScrollerCommand;->this$0:Lcom/caf/fmradio/HorizontalNumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/16 v5, 0x320

    const/4 v1, 0x0

    .line 2188
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker$AdjustScrollerCommand;->this$0:Lcom/caf/fmradio/HorizontalNumberPicker;

    #setter for: Lcom/caf/fmradio/HorizontalNumberPicker;->mPreviousScrollerY:I
    invoke-static {v0, v1}, Lcom/caf/fmradio/HorizontalNumberPicker;->access$802(Lcom/caf/fmradio/HorizontalNumberPicker;I)I

    .line 2189
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker$AdjustScrollerCommand;->this$0:Lcom/caf/fmradio/HorizontalNumberPicker;

    #setter for: Lcom/caf/fmradio/HorizontalNumberPicker;->mPreviousScrollerX:I
    invoke-static {v0, v1}, Lcom/caf/fmradio/HorizontalNumberPicker;->access$902(Lcom/caf/fmradio/HorizontalNumberPicker;I)I

    .line 2190
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker$AdjustScrollerCommand;->this$0:Lcom/caf/fmradio/HorizontalNumberPicker;

    #getter for: Lcom/caf/fmradio/HorizontalNumberPicker;->mInitialScrollOffset:I
    invoke-static {v0}, Lcom/caf/fmradio/HorizontalNumberPicker;->access$1000(Lcom/caf/fmradio/HorizontalNumberPicker;)I

    move-result v0

    iget-object v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker$AdjustScrollerCommand;->this$0:Lcom/caf/fmradio/HorizontalNumberPicker;

    #getter for: Lcom/caf/fmradio/HorizontalNumberPicker;->mCurrentScrollOffset:I
    invoke-static {v2}, Lcom/caf/fmradio/HorizontalNumberPicker;->access$1100(Lcom/caf/fmradio/HorizontalNumberPicker;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 2210
    :goto_0
    return-void

    .line 2193
    :cond_0
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker$AdjustScrollerCommand;->this$0:Lcom/caf/fmradio/HorizontalNumberPicker;

    #getter for: Lcom/caf/fmradio/HorizontalNumberPicker;->mHorizontal:Z
    invoke-static {v0}, Lcom/caf/fmradio/HorizontalNumberPicker;->access$1200(Lcom/caf/fmradio/HorizontalNumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2195
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker$AdjustScrollerCommand;->this$0:Lcom/caf/fmradio/HorizontalNumberPicker;

    #getter for: Lcom/caf/fmradio/HorizontalNumberPicker;->mInitialScrollOffset:I
    invoke-static {v0}, Lcom/caf/fmradio/HorizontalNumberPicker;->access$1000(Lcom/caf/fmradio/HorizontalNumberPicker;)I

    move-result v0

    iget-object v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker$AdjustScrollerCommand;->this$0:Lcom/caf/fmradio/HorizontalNumberPicker;

    #getter for: Lcom/caf/fmradio/HorizontalNumberPicker;->mCurrentScrollOffset:I
    invoke-static {v2}, Lcom/caf/fmradio/HorizontalNumberPicker;->access$1100(Lcom/caf/fmradio/HorizontalNumberPicker;)I

    move-result v2

    sub-int v3, v0, v2

    .line 2196
    .local v3, deltaX:I
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker$AdjustScrollerCommand;->this$0:Lcom/caf/fmradio/HorizontalNumberPicker;

    #getter for: Lcom/caf/fmradio/HorizontalNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/caf/fmradio/HorizontalNumberPicker;->access$1300(Lcom/caf/fmradio/HorizontalNumberPicker;)Landroid/widget/Scroller;

    move-result-object v0

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2209
    .end local v3           #deltaX:I
    :goto_1
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker$AdjustScrollerCommand;->this$0:Lcom/caf/fmradio/HorizontalNumberPicker;

    invoke-virtual {v0}, Lcom/caf/fmradio/HorizontalNumberPicker;->invalidate()V

    goto :goto_0

    .line 2200
    :cond_1
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker$AdjustScrollerCommand;->this$0:Lcom/caf/fmradio/HorizontalNumberPicker;

    #getter for: Lcom/caf/fmradio/HorizontalNumberPicker;->mInitialScrollOffset:I
    invoke-static {v0}, Lcom/caf/fmradio/HorizontalNumberPicker;->access$1000(Lcom/caf/fmradio/HorizontalNumberPicker;)I

    move-result v0

    iget-object v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker$AdjustScrollerCommand;->this$0:Lcom/caf/fmradio/HorizontalNumberPicker;

    #getter for: Lcom/caf/fmradio/HorizontalNumberPicker;->mCurrentScrollOffset:I
    invoke-static {v2}, Lcom/caf/fmradio/HorizontalNumberPicker;->access$1100(Lcom/caf/fmradio/HorizontalNumberPicker;)I

    move-result v2

    sub-int v10, v0, v2

    .line 2201
    .local v10, deltaY:I
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v2, p0, Lcom/caf/fmradio/HorizontalNumberPicker$AdjustScrollerCommand;->this$0:Lcom/caf/fmradio/HorizontalNumberPicker;

    #getter for: Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorElementHeight:I
    invoke-static {v2}, Lcom/caf/fmradio/HorizontalNumberPicker;->access$1400(Lcom/caf/fmradio/HorizontalNumberPicker;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_2

    .line 2202
    if-lez v10, :cond_3

    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker$AdjustScrollerCommand;->this$0:Lcom/caf/fmradio/HorizontalNumberPicker;

    #getter for: Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorElementHeight:I
    invoke-static {v0}, Lcom/caf/fmradio/HorizontalNumberPicker;->access$1400(Lcom/caf/fmradio/HorizontalNumberPicker;)I

    move-result v0

    neg-int v0, v0

    :goto_2
    add-int/2addr v10, v0

    .line 2205
    :cond_2
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker$AdjustScrollerCommand;->this$0:Lcom/caf/fmradio/HorizontalNumberPicker;

    #getter for: Lcom/caf/fmradio/HorizontalNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/caf/fmradio/HorizontalNumberPicker;->access$1300(Lcom/caf/fmradio/HorizontalNumberPicker;)Landroid/widget/Scroller;

    move-result-object v6

    move v7, v1

    move v8, v1

    move v9, v1

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_1

    .line 2202
    :cond_3
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker$AdjustScrollerCommand;->this$0:Lcom/caf/fmradio/HorizontalNumberPicker;

    #getter for: Lcom/caf/fmradio/HorizontalNumberPicker;->mSelectorElementHeight:I
    invoke-static {v0}, Lcom/caf/fmradio/HorizontalNumberPicker;->access$1400(Lcom/caf/fmradio/HorizontalNumberPicker;)I

    move-result v0

    goto :goto_2
.end method
