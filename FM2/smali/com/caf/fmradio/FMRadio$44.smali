.class Lcom/caf/fmradio/FMRadio$44;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 2667
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$44;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2669
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$44;->this$0:Lcom/caf/fmradio/FMRadio;

    const/4 v1, 0x1

    #calls: Lcom/caf/fmradio/FMRadio;->setMuteModeButtonImage(Z)V
    invoke-static {v0, v1}, Lcom/caf/fmradio/FMRadio;->access$3000(Lcom/caf/fmradio/FMRadio;Z)V

    .line 2670
    return-void
.end method
