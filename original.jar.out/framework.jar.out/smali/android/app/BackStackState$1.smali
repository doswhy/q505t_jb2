.class final Landroid/app/BackStackState$1;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/BackStackState;
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
        "Landroid/app/BackStackState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/BackStackState;
    .locals 1
    .parameter "in"

    .prologue
    .line 160
    new-instance v0, Landroid/app/BackStackState;

    invoke-direct {v0, p1}, Landroid/app/BackStackState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Landroid/app/BackStackState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/BackStackState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/BackStackState;
    .locals 1
    .parameter "size"

    .prologue
    .line 164
    new-array v0, p1, [Landroid/app/BackStackState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Landroid/app/BackStackState$1;->newArray(I)[Landroid/app/BackStackState;

    move-result-object v0

    return-object v0
.end method
