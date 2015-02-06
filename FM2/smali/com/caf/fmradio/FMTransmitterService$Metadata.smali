.class Lcom/caf/fmradio/FMTransmitterService$Metadata;
.super Ljava/lang/Object;
.source "FMTransmitterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FMTransmitterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Metadata"
.end annotation


# instance fields
.field private albumTitle:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field final synthetic this$0:Lcom/caf/fmradio/FMTransmitterService;

.field private trackTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/caf/fmradio/FMTransmitterService;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1169
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterService$Metadata;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1170
    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterService$Metadata;->artist:Ljava/lang/String;

    .line 1171
    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterService$Metadata;->trackTitle:Ljava/lang/String;

    .line 1172
    iput-object v0, p0, Lcom/caf/fmradio/FMTransmitterService$Metadata;->albumTitle:Ljava/lang/String;

    .line 1173
    return-void
.end method

.method static synthetic access$1400(Lcom/caf/fmradio/FMTransmitterService$Metadata;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterService$Metadata;->artist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/caf/fmradio/FMTransmitterService$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterService$Metadata;->artist:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/caf/fmradio/FMTransmitterService$Metadata;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterService$Metadata;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/caf/fmradio/FMTransmitterService$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterService$Metadata;->trackTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/caf/fmradio/FMTransmitterService$Metadata;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterService$Metadata;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/caf/fmradio/FMTransmitterService$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterService$Metadata;->albumTitle:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Metadata[artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService$Metadata;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " trackTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService$Metadata;->trackTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " albumTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/FMTransmitterService$Metadata;->albumTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
