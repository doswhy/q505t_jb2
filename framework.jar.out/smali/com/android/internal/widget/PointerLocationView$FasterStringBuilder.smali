.class final Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
.super Ljava/lang/Object;
.source "PointerLocationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PointerLocationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FasterStringBuilder"
.end annotation


# instance fields
.field private mChars:[C

.field private mLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 761
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 762
    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    .line 763
    return-void
.end method

.method private reserve(I)I
    .locals 8
    .parameter "length"

    .prologue
    const/4 v7, 0x0

    .line 851
    iget v5, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    .line 852
    .local v5, oldLength:I
    iget v6, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    add-int v2, v6, p1

    .line 853
    .local v2, newLength:I
    iget-object v4, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    .line 854
    .local v4, oldChars:[C
    array-length v3, v4

    .line 855
    .local v3, oldCapacity:I
    if-le v2, v3, :cond_0

    .line 856
    mul-int/lit8 v0, v3, 0x2

    .line 857
    .local v0, newCapacity:I
    new-array v1, v0, [C

    .line 858
    .local v1, newChars:[C
    invoke-static {v4, v7, v1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 859
    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    .line 861
    .end local v0           #newCapacity:I
    .end local v1           #newChars:[C
    :cond_0
    return v5
.end method


# virtual methods
.method public append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 6
    .parameter "value"
    .parameter "precision"

    .prologue
    .line 827
    const/4 v1, 0x1

    .line 828
    .local v1, scale:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 829
    mul-int/lit8 v1, v1, 0xa

    .line 828
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 831
    :cond_0
    int-to-float v2, v1

    mul-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    int-to-double v4, v1

    div-double/2addr v2, v4

    double-to-float p1, v2

    .line 833
    float-to-int v2, p1

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 835
    if-eqz p2, :cond_1

    .line 836
    const-string v2, "."

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 837
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 838
    float-to-double v2, p1

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float p1, v2

    .line 839
    int-to-float v2, v1

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(II)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 842
    :cond_1
    return-object p0
.end method

.method public append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 1
    .parameter "value"

    .prologue
    .line 779
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(II)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(II)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 9
    .parameter "value"
    .parameter "zeroPadWidth"

    .prologue
    const/16 v8, 0x30

    .line 783
    if-gez p1, :cond_0

    const/4 v5, 0x1

    .line 784
    .local v5, negative:Z
    :goto_0
    if-eqz v5, :cond_1

    .line 785
    neg-int p1, p1

    .line 786
    if-gez p1, :cond_1

    .line 787
    const-string v7, "-2147483648"

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 823
    :goto_1
    return-object p0

    .line 783
    .end local v5           #negative:Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 792
    .restart local v5       #negative:Z
    :cond_1
    const/16 v7, 0xb

    invoke-direct {p0, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->reserve(I)I

    move-result v3

    .line 793
    .local v3, index:I
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    .line 795
    .local v0, chars:[C
    if-nez p1, :cond_2

    .line 796
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    aput-char v8, v0, v3

    .line 797
    iget v7, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    goto :goto_1

    .line 801
    .end local v4           #index:I
    .restart local v3       #index:I
    :cond_2
    if-eqz v5, :cond_3

    .line 802
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    const/16 v7, 0x2d

    aput-char v7, v0, v3

    move v3, v4

    .line 805
    .end local v4           #index:I
    .restart local v3       #index:I
    :cond_3
    const v2, 0x3b9aca00

    .line 806
    .local v2, divisor:I
    const/16 v6, 0xa

    .local v6, numberWidth:I
    move v4, v3

    .line 807
    .end local v3           #index:I
    .restart local v4       #index:I
    :cond_4
    :goto_2
    if-ge p1, v2, :cond_5

    .line 808
    div-int/lit8 v2, v2, 0xa

    .line 809
    add-int/lit8 v6, v6, -0x1

    .line 810
    if-ge v6, p2, :cond_4

    .line 811
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    aput-char v8, v0, v4

    move v4, v3

    .end local v3           #index:I
    .restart local v4       #index:I
    goto :goto_2

    :cond_5
    move v3, v4

    .line 816
    .end local v4           #index:I
    .restart local v3       #index:I
    div-int v1, p1, v2

    .line 817
    .local v1, digit:I
    mul-int v7, v1, v2

    sub-int/2addr p1, v7

    .line 818
    div-int/lit8 v2, v2, 0xa

    .line 819
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    add-int/lit8 v7, v1, 0x30

    int-to-char v7, v7

    aput-char v7, v0, v3

    .line 820
    if-nez v2, :cond_5

    .line 822
    iput v4, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    goto :goto_1
.end method

.method public append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 4
    .parameter "value"

    .prologue
    .line 771
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 772
    .local v1, valueLength:I
    invoke-direct {p0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->reserve(I)I

    move-result v0

    .line 773
    .local v0, index:I
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    invoke-virtual {p1, v2, v1, v3, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 774
    iget v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    .line 775
    return-object p0
.end method

.method public clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 1

    .prologue
    .line 766
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    .line 767
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 847
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method