.class Lcom/caf/fmradio/HorizontalNumberPicker$ChangeCurrentByOneFromLongPressCommand;
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
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Lcom/caf/fmradio/HorizontalNumberPicker;


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2224
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/caf/fmradio/HorizontalNumberPicker;

    iget-boolean v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    #calls: Lcom/caf/fmradio/HorizontalNumberPicker;->changeCurrentByOne(Z)V
    invoke-static {v0, v1}, Lcom/caf/fmradio/HorizontalNumberPicker;->access$1500(Lcom/caf/fmradio/HorizontalNumberPicker;Z)V

    .line 2225
    iget-object v0, p0, Lcom/caf/fmradio/HorizontalNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/caf/fmradio/HorizontalNumberPicker;

    iget-object v1, p0, Lcom/caf/fmradio/HorizontalNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/caf/fmradio/HorizontalNumberPicker;

    #getter for: Lcom/caf/fmradio/HorizontalNumberPicker;->mLongPressUpdateInterval:J
    invoke-static {v1}, Lcom/caf/fmradio/HorizontalNumberPicker;->access$1600(Lcom/caf/fmradio/HorizontalNumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/caf/fmradio/HorizontalNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2226
    return-void
.end method
