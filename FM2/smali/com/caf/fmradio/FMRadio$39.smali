.class Lcom/caf/fmradio/FMRadio$39;
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
    .line 2613
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$39;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2616
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$39;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->enableRadioOnOffUI(Z)V
    invoke-static {v0, v1}, Lcom/caf/fmradio/FMRadio;->access$5200(Lcom/caf/fmradio/FMRadio;Z)V

    .line 2618
    sput-boolean v1, Lcom/caf/fmradio/FMRadio;->mUpdatePickerValue:Z

    .line 2619
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$39;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getTunedFrequency()I

    move-result v1

    #calls: Lcom/caf/fmradio/FMRadio;->tuneRadio(I)V
    invoke-static {v0, v1}, Lcom/caf/fmradio/FMRadio;->access$800(Lcom/caf/fmradio/FMRadio;I)V

    .line 2620
    return-void
.end method
