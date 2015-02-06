.class Lcom/caf/fmradio/FMStats$Result;
.super Ljava/lang/Object;
.source "FMStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FMStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Result"
.end annotation


# instance fields
.field private mFreq:Ljava/lang/String;

.field private mIntDet:Ljava/lang/String;

.field private mIoC:Ljava/lang/String;

.field private mMpxDcc:Ljava/lang/String;

.field private mRSSI:Ljava/lang/String;

.field private mSINR:Ljava/lang/String;

.field final synthetic this$0:Lcom/caf/fmradio/FMStats;


# direct methods
.method private constructor <init>(Lcom/caf/fmradio/FMStats;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/caf/fmradio/FMStats$Result;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/caf/fmradio/FMStats;Lcom/caf/fmradio/FMStats$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/caf/fmradio/FMStats$Result;-><init>(Lcom/caf/fmradio/FMStats;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/caf/fmradio/FMStats$Result;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$Result;->mFreq:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getFreq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$Result;->mFreq:Ljava/lang/String;

    return-object v0
.end method

.method public getIntDet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$Result;->mIntDet:Ljava/lang/String;

    return-object v0
.end method

.method public getIoC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$Result;->mIoC:Ljava/lang/String;

    return-object v0
.end method

.method public getMpxDcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$Result;->mMpxDcc:Ljava/lang/String;

    return-object v0
.end method

.method public getRSSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$Result;->mRSSI:Ljava/lang/String;

    return-object v0
.end method

.method public getSINR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$Result;->mSINR:Ljava/lang/String;

    return-object v0
.end method

.method public setFreq(Ljava/lang/String;)V
    .locals 0
    .parameter "aFreq"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/caf/fmradio/FMStats$Result;->mFreq:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setIntDet(Ljava/lang/String;)V
    .locals 0
    .parameter "aIntDet"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/caf/fmradio/FMStats$Result;->mIntDet:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setIoC(Ljava/lang/String;)V
    .locals 0
    .parameter "aIoC"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/caf/fmradio/FMStats$Result;->mIoC:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setMpxDcc(Ljava/lang/String;)V
    .locals 0
    .parameter "aMpxDcc"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/caf/fmradio/FMStats$Result;->mMpxDcc:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setRSSI(Ljava/lang/String;)V
    .locals 0
    .parameter "aRSSI"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/caf/fmradio/FMStats$Result;->mRSSI:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setSINR(Ljava/lang/String;)V
    .locals 0
    .parameter "aSINR"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/caf/fmradio/FMStats$Result;->mSINR:Ljava/lang/String;

    .line 158
    return-void
.end method
