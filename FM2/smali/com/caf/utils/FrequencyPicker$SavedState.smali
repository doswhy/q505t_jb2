.class Lcom/caf/utils/FrequencyPicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "FrequencyPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/utils/FrequencyPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/caf/utils/FrequencyPicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mKHZ:I

.field private final mMHZ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lcom/caf/utils/FrequencyPicker$SavedState$1;

    invoke-direct {v0}, Lcom/caf/utils/FrequencyPicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/caf/utils/FrequencyPicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/caf/utils/FrequencyPicker$SavedState;->mMHZ:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/caf/utils/FrequencyPicker$SavedState;->mKHZ:I

    .line 159
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/caf/utils/FrequencyPicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/caf/utils/FrequencyPicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;II)V
    .locals 0
    .parameter "superState"
    .parameter "mhz"
    .parameter "khz"

    .prologue
    .line 147
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 148
    iput p2, p0, Lcom/caf/utils/FrequencyPicker$SavedState;->mMHZ:I

    .line 149
    iput p3, p0, Lcom/caf/utils/FrequencyPicker$SavedState;->mKHZ:I

    .line 150
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IILcom/caf/utils/FrequencyPicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/caf/utils/FrequencyPicker$SavedState;-><init>(Landroid/os/Parcelable;II)V

    return-void
.end method


# virtual methods
.method public getKHz()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/caf/utils/FrequencyPicker$SavedState;->mKHZ:I

    return v0
.end method

.method public getMHz()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/caf/utils/FrequencyPicker$SavedState;->mMHZ:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 171
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 172
    iget v0, p0, Lcom/caf/utils/FrequencyPicker$SavedState;->mMHZ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget v0, p0, Lcom/caf/utils/FrequencyPicker$SavedState;->mKHZ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    return-void
.end method
