.class Lcom/caf/utils/FrequencyPicker$1;
.super Ljava/lang/Object;
.source "FrequencyPicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/caf/utils/FrequencyPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/utils/FrequencyPicker;


# direct methods
.method constructor <init>(Lcom/caf/utils/FrequencyPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/caf/utils/FrequencyPicker$1;->this$0:Lcom/caf/utils/FrequencyPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 6
    .parameter "picker"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/caf/utils/FrequencyPicker$1;->this$0:Lcom/caf/utils/FrequencyPicker;

    #setter for: Lcom/caf/utils/FrequencyPicker;->mMhz:I
    invoke-static {v0, p3}, Lcom/caf/utils/FrequencyPicker;->access$002(Lcom/caf/utils/FrequencyPicker;I)I

    .line 93
    iget-object v0, p0, Lcom/caf/utils/FrequencyPicker$1;->this$0:Lcom/caf/utils/FrequencyPicker;

    iget-object v1, p0, Lcom/caf/utils/FrequencyPicker$1;->this$0:Lcom/caf/utils/FrequencyPicker;

    #getter for: Lcom/caf/utils/FrequencyPicker;->mMhz:I
    invoke-static {v1}, Lcom/caf/utils/FrequencyPicker;->access$000(Lcom/caf/utils/FrequencyPicker;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iget-object v2, p0, Lcom/caf/utils/FrequencyPicker$1;->this$0:Lcom/caf/utils/FrequencyPicker;

    iget-object v3, p0, Lcom/caf/utils/FrequencyPicker$1;->this$0:Lcom/caf/utils/FrequencyPicker;

    #getter for: Lcom/caf/utils/FrequencyPicker;->mKhz:I
    invoke-static {v3}, Lcom/caf/utils/FrequencyPicker;->access$200(Lcom/caf/utils/FrequencyPicker;)I

    move-result v3

    iget-object v4, p0, Lcom/caf/utils/FrequencyPicker$1;->this$0:Lcom/caf/utils/FrequencyPicker;

    #getter for: Lcom/caf/utils/FrequencyPicker;->mMin:I
    invoke-static {v4}, Lcom/caf/utils/FrequencyPicker;->access$300(Lcom/caf/utils/FrequencyPicker;)I

    move-result v4

    iget-object v5, p0, Lcom/caf/utils/FrequencyPicker$1;->this$0:Lcom/caf/utils/FrequencyPicker;

    #getter for: Lcom/caf/utils/FrequencyPicker;->mStep:I
    invoke-static {v5}, Lcom/caf/utils/FrequencyPicker;->access$400(Lcom/caf/utils/FrequencyPicker;)I

    move-result v5

    #calls: Lcom/caf/utils/FrequencyPicker;->getFrequencyKHz(III)I
    invoke-static {v2, v3, v4, v5}, Lcom/caf/utils/FrequencyPicker;->access$500(Lcom/caf/utils/FrequencyPicker;III)I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/caf/utils/FrequencyPicker;->mFrequency:I
    invoke-static {v0, v1}, Lcom/caf/utils/FrequencyPicker;->access$102(Lcom/caf/utils/FrequencyPicker;I)I

    .line 94
    iget-object v0, p0, Lcom/caf/utils/FrequencyPicker$1;->this$0:Lcom/caf/utils/FrequencyPicker;

    #calls: Lcom/caf/utils/FrequencyPicker;->validateFrequencyRange()V
    invoke-static {v0}, Lcom/caf/utils/FrequencyPicker;->access$600(Lcom/caf/utils/FrequencyPicker;)V

    .line 95
    iget-object v0, p0, Lcom/caf/utils/FrequencyPicker$1;->this$0:Lcom/caf/utils/FrequencyPicker;

    #getter for: Lcom/caf/utils/FrequencyPicker;->mOnFrequencyChangedListener:Lcom/caf/utils/FrequencyPicker$OnFrequencyChangedListener;
    invoke-static {v0}, Lcom/caf/utils/FrequencyPicker;->access$700(Lcom/caf/utils/FrequencyPicker;)Lcom/caf/utils/FrequencyPicker$OnFrequencyChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/caf/utils/FrequencyPicker$1;->this$0:Lcom/caf/utils/FrequencyPicker;

    #getter for: Lcom/caf/utils/FrequencyPicker;->mOnFrequencyChangedListener:Lcom/caf/utils/FrequencyPicker$OnFrequencyChangedListener;
    invoke-static {v0}, Lcom/caf/utils/FrequencyPicker;->access$700(Lcom/caf/utils/FrequencyPicker;)Lcom/caf/utils/FrequencyPicker$OnFrequencyChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/utils/FrequencyPicker$1;->this$0:Lcom/caf/utils/FrequencyPicker;

    iget-object v2, p0, Lcom/caf/utils/FrequencyPicker$1;->this$0:Lcom/caf/utils/FrequencyPicker;

    #getter for: Lcom/caf/utils/FrequencyPicker;->mFrequency:I
    invoke-static {v2}, Lcom/caf/utils/FrequencyPicker;->access$100(Lcom/caf/utils/FrequencyPicker;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/caf/utils/FrequencyPicker$OnFrequencyChangedListener;->onFrequencyChanged(Lcom/caf/utils/FrequencyPicker;I)V

    .line 98
    :cond_0
    return-void
.end method
