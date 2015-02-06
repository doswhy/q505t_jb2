.class Lcom/caf/fmradio/FMStats$Band;
.super Ljava/lang/Object;
.source "FMStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FMStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Band"
.end annotation


# instance fields
.field public Spacing:I

.field public cur_freq:I

.field public hFreq:I

.field public lFreq:I

.field final synthetic this$0:Lcom/caf/fmradio/FMStats;


# direct methods
.method private constructor <init>(Lcom/caf/fmradio/FMStats;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/caf/fmradio/FMStats$Band;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/caf/fmradio/FMStats;Lcom/caf/fmradio/FMStats$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/caf/fmradio/FMStats$Band;-><init>(Lcom/caf/fmradio/FMStats;)V

    return-void
.end method
