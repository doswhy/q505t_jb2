.class Lcom/caf/fmradio/FMRadio$19;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FMRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/fmradio/FMRadio;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/FMRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 1452
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$19;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1454
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getPrevTuneFrequency()I

    move-result v0

    .line 1455
    .local v0, frequency:I
    const-string v1, "FMRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tune Down: to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    iget-object v1, p0, Lcom/caf/fmradio/FMRadio$19;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->tuneRadio(I)V
    invoke-static {v1, v0}, Lcom/caf/fmradio/FMRadio;->access$800(Lcom/caf/fmradio/FMRadio;I)V

    .line 1457
    return-void
.end method
