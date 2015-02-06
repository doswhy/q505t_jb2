.class Lcom/caf/fmradio/FMRadio$49;
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
    .line 2757
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$49;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2759
    const-string v1, ""

    .line 2760
    .local v1, str:Ljava/lang/String;
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$49;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$2800(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2763
    :try_start_0
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$49;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$2800(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v3

    invoke-interface {v3}, Lcom/caf/fmradio/IFMRadioService;->getProgramService()Ljava/lang/String;

    move-result-object v1

    .line 2766
    invoke-static {v1}, Landroid/text/TextUtils;->isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2767
    const-string v3, "FMRadio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUpdateProgramService: Updatable string: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$49;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mProgramServiceTV:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$7000(Lcom/caf/fmradio/FMRadio;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2777
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$49;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$2800(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v3

    invoke-interface {v3}, Lcom/caf/fmradio/IFMRadioService;->getProgramType()I

    move-result v2

    .line 2779
    .local v2, tempInt:I
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$49;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mTunedStation:Lcom/caf/fmradio/PresetStation;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$900(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/PresetStation;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/caf/fmradio/PresetStation;->setPty(I)V

    .line 2781
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$49;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mProgramTypeTV:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$6500(Lcom/caf/fmradio/FMRadio;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v2}, Lcom/caf/fmradio/PresetStation;->parsePTY(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2782
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$49;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$2800(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v3

    invoke-interface {v3}, Lcom/caf/fmradio/IFMRadioService;->getProgramID()I

    move-result v2

    .line 2784
    if-eqz v2, :cond_1

    .line 2785
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$49;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mTunedStation:Lcom/caf/fmradio/PresetStation;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$900(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/PresetStation;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/caf/fmradio/PresetStation;->setPI(I)V

    .line 2787
    :cond_1
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$49;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mStationCallSignTV:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$6600(Lcom/caf/fmradio/FMRadio;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v2}, Lcom/caf/fmradio/PresetStation;->parsePI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2792
    .end local v2           #tempInt:I
    :cond_2
    :goto_1
    return-void

    .line 2769
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2770
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$49;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mProgramServiceTV:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$7000(Lcom/caf/fmradio/FMRadio;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2788
    :catch_0
    move-exception v0

    .line 2789
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
