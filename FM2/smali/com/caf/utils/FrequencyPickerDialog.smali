.class public Lcom/caf/utils/FrequencyPickerDialog;
.super Landroid/app/AlertDialog;
.source "FrequencyPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/caf/utils/FrequencyPicker$OnFrequencyChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caf/utils/FrequencyPickerDialog$OnFrequencySetListener;
    }
.end annotation


# instance fields
.field private final mCallBack:Lcom/caf/utils/FrequencyPickerDialog$OnFrequencySetListener;

.field private mChannelSpacing:I

.field private final mFrequencyPicker:Lcom/caf/utils/FrequencyPicker;

.field private mMaxFrequency:I

.field private mMinFrequency:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILqcom/fmradio/FmConfig;ILcom/caf/utils/FrequencyPickerDialog$OnFrequencySetListener;)V
    .locals 13
    .parameter "context"
    .parameter "theme"
    .parameter "fmConfig"
    .parameter "frequency"
    .parameter "callback"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 79
    invoke-virtual/range {p3 .. p3}, Lqcom/fmradio/FmConfig;->getLowerLimit()I

    move-result v1

    iput v1, p0, Lcom/caf/utils/FrequencyPickerDialog;->mMinFrequency:I

    .line 80
    invoke-virtual/range {p3 .. p3}, Lqcom/fmradio/FmConfig;->getUpperLimit()I

    move-result v1

    iput v1, p0, Lcom/caf/utils/FrequencyPickerDialog;->mMaxFrequency:I

    .line 81
    const/16 v1, 0xc8

    iput v1, p0, Lcom/caf/utils/FrequencyPickerDialog;->mChannelSpacing:I

    .line 82
    invoke-virtual/range {p3 .. p3}, Lqcom/fmradio/FmConfig;->getChSpacing()I

    move-result v1

    if-nez v1, :cond_1

    .line 84
    const/16 v1, 0xc8

    iput v1, p0, Lcom/caf/utils/FrequencyPickerDialog;->mChannelSpacing:I

    .line 94
    :cond_0
    :goto_0
    move/from16 v0, p4

    div-int/lit16 v8, v0, 0x3e8

    .line 95
    .local v8, MHz:I
    move/from16 v0, p4

    rem-int/lit16 v1, v0, 0x3e8

    div-int/lit8 v7, v1, 0x64

    .line 96
    .local v7, KHz:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FM - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/caf/utils/FrequencyPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/caf/utils/FrequencyPickerDialog;->mCallBack:Lcom/caf/utils/FrequencyPickerDialog$OnFrequencySetListener;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 99
    .local v11, textSet:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 100
    .local v10, textCancel:Ljava/lang/CharSequence;
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p0}, Lcom/caf/utils/FrequencyPickerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 101
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v1}, Lcom/caf/utils/FrequencyPickerDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 102
    const v1, 0x7f020001

    invoke-virtual {p0, v1}, Lcom/caf/utils/FrequencyPickerDialog;->setIcon(I)V

    .line 104
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 106
    .local v9, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 107
    .local v12, view:Landroid/view/View;
    invoke-virtual {p0, v12}, Lcom/caf/utils/FrequencyPickerDialog;->setView(Landroid/view/View;)V

    .line 108
    const v1, 0x7f090034

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/caf/utils/FrequencyPicker;

    iput-object v1, p0, Lcom/caf/utils/FrequencyPickerDialog;->mFrequencyPicker:Lcom/caf/utils/FrequencyPicker;

    .line 109
    iget-object v1, p0, Lcom/caf/utils/FrequencyPickerDialog;->mFrequencyPicker:Lcom/caf/utils/FrequencyPicker;

    if-eqz v1, :cond_3

    .line 111
    iget-object v1, p0, Lcom/caf/utils/FrequencyPickerDialog;->mFrequencyPicker:Lcom/caf/utils/FrequencyPicker;

    iget v2, p0, Lcom/caf/utils/FrequencyPickerDialog;->mMinFrequency:I

    iget v3, p0, Lcom/caf/utils/FrequencyPickerDialog;->mMaxFrequency:I

    iget v4, p0, Lcom/caf/utils/FrequencyPickerDialog;->mChannelSpacing:I

    move/from16 v5, p4

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/caf/utils/FrequencyPicker;->init(IIIILcom/caf/utils/FrequencyPicker$OnFrequencyChangedListener;)V

    .line 117
    :goto_1
    return-void

    .line 86
    .end local v7           #KHz:I
    .end local v8           #MHz:I
    .end local v9           #inflater:Landroid/view/LayoutInflater;
    .end local v10           #textCancel:Ljava/lang/CharSequence;
    .end local v11           #textSet:Ljava/lang/CharSequence;
    .end local v12           #view:Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    invoke-virtual/range {p3 .. p3}, Lqcom/fmradio/FmConfig;->getChSpacing()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 88
    const/16 v1, 0x64

    iput v1, p0, Lcom/caf/utils/FrequencyPickerDialog;->mChannelSpacing:I

    goto/16 :goto_0

    .line 90
    :cond_2
    const/4 v1, 0x2

    invoke-virtual/range {p3 .. p3}, Lqcom/fmradio/FmConfig;->getChSpacing()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 92
    const/16 v1, 0x32

    iput v1, p0, Lcom/caf/utils/FrequencyPickerDialog;->mChannelSpacing:I

    goto/16 :goto_0

    .line 115
    .restart local v7       #KHz:I
    .restart local v8       #MHz:I
    .restart local v9       #inflater:Landroid/view/LayoutInflater;
    .restart local v10       #textCancel:Ljava/lang/CharSequence;
    .restart local v11       #textSet:Ljava/lang/CharSequence;
    .restart local v12       #view:Landroid/view/View;
    :cond_3
    const-string v1, "fmRadio"

    const-string v2, "Failed to find ID: R.id.frequencyPicker"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Lqcom/fmradio/FmConfig;ILcom/caf/utils/FrequencyPickerDialog$OnFrequencySetListener;)V
    .locals 6
    .parameter "context"
    .parameter "fmConfig"
    .parameter "frequency"
    .parameter "callback"

    .prologue
    .line 68
    const v2, 0x10302f6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/caf/utils/FrequencyPickerDialog;-><init>(Landroid/content/Context;ILqcom/fmradio/FmConfig;ILcom/caf/utils/FrequencyPickerDialog$OnFrequencySetListener;)V

    .line 69
    return-void
.end method


# virtual methods
.method public UpdateFrequency(I)V
    .locals 4
    .parameter "frequency"

    .prologue
    .line 121
    div-int/lit16 v1, p1, 0x3e8

    .line 122
    .local v1, MHz:I
    rem-int/lit16 v2, p1, 0x3e8

    div-int/lit8 v0, v2, 0x64

    .line 123
    .local v0, KHz:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FM - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/caf/utils/FrequencyPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v2, p0, Lcom/caf/utils/FrequencyPickerDialog;->mFrequencyPicker:Lcom/caf/utils/FrequencyPicker;

    invoke-virtual {v2, p1}, Lcom/caf/utils/FrequencyPicker;->updateFrequency(I)V

    .line 125
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 128
    iget-object v1, p0, Lcom/caf/utils/FrequencyPickerDialog;->mCallBack:Lcom/caf/utils/FrequencyPickerDialog$OnFrequencySetListener;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/caf/utils/FrequencyPickerDialog;->mFrequencyPicker:Lcom/caf/utils/FrequencyPicker;

    invoke-virtual {v1}, Lcom/caf/utils/FrequencyPicker;->clearFocus()V

    .line 130
    iget-object v1, p0, Lcom/caf/utils/FrequencyPickerDialog;->mFrequencyPicker:Lcom/caf/utils/FrequencyPicker;

    invoke-virtual {v1}, Lcom/caf/utils/FrequencyPicker;->getFrequency()I

    move-result v0

    .line 131
    .local v0, frequency:I
    iget-object v1, p0, Lcom/caf/utils/FrequencyPickerDialog;->mCallBack:Lcom/caf/utils/FrequencyPickerDialog$OnFrequencySetListener;

    iget-object v2, p0, Lcom/caf/utils/FrequencyPickerDialog;->mFrequencyPicker:Lcom/caf/utils/FrequencyPicker;

    invoke-interface {v1, v2, v0}, Lcom/caf/utils/FrequencyPickerDialog$OnFrequencySetListener;->onFrequencySet(Lcom/caf/utils/FrequencyPicker;I)V

    .line 133
    .end local v0           #frequency:I
    :cond_0
    return-void
.end method

.method public onFrequencyChanged(Lcom/caf/utils/FrequencyPicker;I)V
    .locals 0
    .parameter "view"
    .parameter "frequency"

    .prologue
    .line 136
    invoke-virtual {p0, p2}, Lcom/caf/utils/FrequencyPickerDialog;->UpdateFrequency(I)V

    .line 137
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 152
    const-string v0, "FREQUENCY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 153
    .local v4, frequency:I
    const-string v0, "FREQ_MIN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/caf/utils/FrequencyPickerDialog;->mMinFrequency:I

    .line 154
    const-string v0, "FREQ_MAX"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/caf/utils/FrequencyPickerDialog;->mMaxFrequency:I

    .line 155
    const-string v0, "FREQ_STEP"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/caf/utils/FrequencyPickerDialog;->mChannelSpacing:I

    .line 156
    iget-object v0, p0, Lcom/caf/utils/FrequencyPickerDialog;->mFrequencyPicker:Lcom/caf/utils/FrequencyPicker;

    iget v1, p0, Lcom/caf/utils/FrequencyPickerDialog;->mMinFrequency:I

    iget v2, p0, Lcom/caf/utils/FrequencyPickerDialog;->mMaxFrequency:I

    iget v3, p0, Lcom/caf/utils/FrequencyPickerDialog;->mChannelSpacing:I

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/caf/utils/FrequencyPicker;->init(IIIILcom/caf/utils/FrequencyPicker$OnFrequencyChangedListener;)V

    .line 157
    div-int/lit16 v7, v4, 0x3e8

    .line 158
    .local v7, MHz:I
    rem-int/lit16 v0, v4, 0x3e8

    div-int/lit8 v6, v0, 0x64

    .line 159
    .local v6, KHz:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FM - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/caf/utils/FrequencyPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 160
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 142
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "FREQUENCY"

    iget-object v2, p0, Lcom/caf/utils/FrequencyPickerDialog;->mFrequencyPicker:Lcom/caf/utils/FrequencyPicker;

    invoke-virtual {v2}, Lcom/caf/utils/FrequencyPicker;->getFrequency()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    const-string v1, "FREQ_MIN"

    iget v2, p0, Lcom/caf/utils/FrequencyPickerDialog;->mMinFrequency:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    const-string v1, "FREQ_MAX"

    iget v2, p0, Lcom/caf/utils/FrequencyPickerDialog;->mMaxFrequency:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    const-string v1, "FREQ_STEP"

    iget v2, p0, Lcom/caf/utils/FrequencyPickerDialog;->mChannelSpacing:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 146
    return-object v0
.end method

.method public updateMaxFreq(I)V
    .locals 2
    .parameter "freq"

    .prologue
    .line 185
    iput p1, p0, Lcom/caf/utils/FrequencyPickerDialog;->mMaxFrequency:I

    .line 186
    iget-object v0, p0, Lcom/caf/utils/FrequencyPickerDialog;->mFrequencyPicker:Lcom/caf/utils/FrequencyPicker;

    iget v1, p0, Lcom/caf/utils/FrequencyPickerDialog;->mMaxFrequency:I

    invoke-virtual {v0, v1}, Lcom/caf/utils/FrequencyPicker;->updateMaxFreq(I)V

    .line 187
    return-void
.end method

.method public updateMinFreq(I)V
    .locals 2
    .parameter "freq"

    .prologue
    .line 180
    iput p1, p0, Lcom/caf/utils/FrequencyPickerDialog;->mMinFrequency:I

    .line 181
    iget-object v0, p0, Lcom/caf/utils/FrequencyPickerDialog;->mFrequencyPicker:Lcom/caf/utils/FrequencyPicker;

    iget v1, p0, Lcom/caf/utils/FrequencyPickerDialog;->mMinFrequency:I

    invoke-virtual {v0, v1}, Lcom/caf/utils/FrequencyPicker;->updateMinFreq(I)V

    .line 182
    return-void
.end method

.method public updateSteps(I)V
    .locals 2
    .parameter "steps"

    .prologue
    const/16 v0, 0xc8

    .line 163
    iput v0, p0, Lcom/caf/utils/FrequencyPickerDialog;->mChannelSpacing:I

    .line 164
    if-nez p1, :cond_1

    .line 166
    iput v0, p0, Lcom/caf/utils/FrequencyPickerDialog;->mChannelSpacing:I

    .line 176
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/caf/utils/FrequencyPickerDialog;->mFrequencyPicker:Lcom/caf/utils/FrequencyPicker;

    iget v1, p0, Lcom/caf/utils/FrequencyPickerDialog;->mChannelSpacing:I

    invoke-virtual {v0, v1}, Lcom/caf/utils/FrequencyPicker;->updateSteps(I)V

    .line 177
    return-void

    .line 168
    :cond_1
    const/4 v0, 0x1

    if-ne v0, p1, :cond_2

    .line 170
    const/16 v0, 0x64

    iput v0, p0, Lcom/caf/utils/FrequencyPickerDialog;->mChannelSpacing:I

    goto :goto_0

    .line 172
    :cond_2
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 174
    const/16 v0, 0x32

    iput v0, p0, Lcom/caf/utils/FrequencyPickerDialog;->mChannelSpacing:I

    goto :goto_0
.end method
