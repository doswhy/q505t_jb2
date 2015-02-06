.class Lcom/caf/fmradio/FMTransmitterActivity$20;
.super Ljava/lang/Object;
.source "FMTransmitterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FMTransmitterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/fmradio/FMTransmitterActivity;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/FMTransmitterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1212
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterActivity$20;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1214
    const-string v1, ""

    .line 1215
    .local v1, str:Ljava/lang/String;
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$20;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterActivity;->access$2500(Lcom/caf/fmradio/FMTransmitterActivity;)Lcom/caf/fmradio/IFMTransmitterService;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$20;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #calls: Lcom/caf/fmradio/FMTransmitterActivity;->isFmOn()Z
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterActivity;->access$1100(Lcom/caf/fmradio/FMTransmitterActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1218
    :try_start_0
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$20;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterActivity;->access$2500(Lcom/caf/fmradio/FMTransmitterActivity;)Lcom/caf/fmradio/IFMTransmitterService;

    move-result-object v3

    invoke-interface {v3}, Lcom/caf/fmradio/IFMTransmitterService;->getRadioText()Ljava/lang/String;

    move-result-object v1

    .line 1219
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$20;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mMetaData:Ljava/lang/String;
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterActivity;->access$2700(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1220
    const-string v3, "FMTransmitterActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "meta data is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/caf/fmradio/FMTransmitterActivity$20;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mMetaData:Ljava/lang/String;
    invoke-static {v5}, Lcom/caf/fmradio/FMTransmitterActivity;->access$2700(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$20;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mMetaData:Ljava/lang/String;
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterActivity;->access$2700(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1226
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1227
    const-string v3, "FMTransmitterActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUpdateRadioText: Updatable string: ["

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

    .line 1229
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$20;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextTV:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterActivity;->access$2800(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1237
    :goto_1
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$20;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextScroller:Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterActivity;->access$2900(Lcom/caf/fmradio/FMTransmitterActivity;)Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caf/fmradio/FMTransmitterActivity$ScrollerText;->startScroll()V

    .line 1238
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$20;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    const v4, 0x7f060091

    invoke-virtual {v3, v4}, Lcom/caf/fmradio/FMTransmitterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1239
    .local v2, szRTStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$20;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    iget-object v4, p0, Lcom/caf/fmradio/FMTransmitterActivity$20;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mService:Lcom/caf/fmradio/IFMTransmitterService;
    invoke-static {v4}, Lcom/caf/fmradio/FMTransmitterActivity;->access$2500(Lcom/caf/fmradio/FMTransmitterActivity;)Lcom/caf/fmradio/IFMTransmitterService;

    move-result-object v4

    invoke-interface {v4}, Lcom/caf/fmradio/IFMTransmitterService;->getPSData()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/caf/fmradio/FMTransmitterActivity;->mPSData:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/caf/fmradio/FMTransmitterActivity;->access$3002(Lcom/caf/fmradio/FMTransmitterActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1240
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$20;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mPSData:Ljava/lang/String;
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterActivity;->access$3000(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1241
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$20;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mPSData:Ljava/lang/String;
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterActivity;->access$3000(Lcom/caf/fmradio/FMTransmitterActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1245
    :goto_2
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$20;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mTransmitStaticMsgTV:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterActivity;->access$3100(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1250
    .end local v2           #szRTStr:Ljava/lang/String;
    :cond_0
    :goto_3
    return-void

    .line 1223
    :cond_1
    const-string v3, "..."

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1230
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1231
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$20;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextTV:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterActivity;->access$2800(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1246
    :catch_0
    move-exception v0

    .line 1247
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 1233
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    const-string v3, "FMTransmitterActivity"

    const-string v4, "RDS has non printable stuff"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    iget-object v3, p0, Lcom/caf/fmradio/FMTransmitterActivity$20;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    #getter for: Lcom/caf/fmradio/FMTransmitterActivity;->mRadioTextTV:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/caf/fmradio/FMTransmitterActivity;->access$2800(Lcom/caf/fmradio/FMTransmitterActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1243
    .restart local v2       #szRTStr:Ljava/lang/String;
    :cond_4
    const-string v3, "FMTransmitterActivity"

    const-string v4, "mPSData is NULL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
