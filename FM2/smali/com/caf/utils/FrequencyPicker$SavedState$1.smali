.class final Lcom/caf/utils/FrequencyPicker$SavedState$1;
.super Ljava/lang/Object;
.source "FrequencyPicker.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/utils/FrequencyPicker$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/caf/utils/FrequencyPicker$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/caf/utils/FrequencyPicker$SavedState;
    .locals 2
    .parameter "in"

    .prologue
    .line 180
    new-instance v0, Lcom/caf/utils/FrequencyPicker$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/caf/utils/FrequencyPicker$SavedState;-><init>(Landroid/os/Parcel;Lcom/caf/utils/FrequencyPicker$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/caf/utils/FrequencyPicker$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/caf/utils/FrequencyPicker$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/caf/utils/FrequencyPicker$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 184
    new-array v0, p1, [Lcom/caf/utils/FrequencyPicker$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/caf/utils/FrequencyPicker$SavedState$1;->newArray(I)[Lcom/caf/utils/FrequencyPicker$SavedState;

    move-result-object v0

    return-object v0
.end method
