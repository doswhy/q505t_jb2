.class Lcom/android/settings/ConnectSettings$1;
.super Ljava/lang/Object;
.source "ConnectSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ConnectSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConnectSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ConnectSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/settings/ConnectSettings$1;->this$0:Lcom/android/settings/ConnectSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 291
    iget-object v3, p0, Lcom/android/settings/ConnectSettings$1;->this$0:Lcom/android/settings/ConnectSettings;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Lcom/android/settings/ConnectSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 294
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x6

    .line 297
    .local v2, retryTimes:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/ConnectSettings$1;->this$0:Lcom/android/settings/ConnectSettings;

    #getter for: Lcom/android/settings/ConnectSettings;->mUsbConnected:Z
    invoke-static {v3}, Lcom/android/settings/ConnectSettings;->access$400(Lcom/android/settings/ConnectSettings;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-lez v2, :cond_0

    .line 300
    iget-object v3, p0, Lcom/android/settings/ConnectSettings$1;->this$0:Lcom/android/settings/ConnectSettings;

    iget-object v4, p0, Lcom/android/settings/ConnectSettings$1;->this$0:Lcom/android/settings/ConnectSettings;

    #getter for: Lcom/android/settings/ConnectSettings;->mTempEnable:Z
    invoke-static {v4}, Lcom/android/settings/ConnectSettings;->access$500(Lcom/android/settings/ConnectSettings;)Z

    move-result v4

    #calls: Lcom/android/settings/ConnectSettings;->retryUsbTethering(Landroid/net/ConnectivityManager;Z)Z
    invoke-static {v3, v0, v4}, Lcom/android/settings/ConnectSettings;->access$600(Lcom/android/settings/ConnectSettings;Landroid/net/ConnectivityManager;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 311
    :cond_0
    invoke-static {}, Lcom/android/settings/ConnectSettings;->access$200()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 312
    const-string v3, "ConnectSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retry infor :  mUsbConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ConnectSettings$1;->this$0:Lcom/android/settings/ConnectSettings;

    #getter for: Lcom/android/settings/ConnectSettings;->mUsbConnected:Z
    invoke-static {v5}, Lcom/android/settings/ConnectSettings;->access$400(Lcom/android/settings/ConnectSettings;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,retryTimes = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_1
    if-nez v2, :cond_3

    .line 317
    const-string v3, "ConnectSettings"

    const-string v4, "Retry enable USB Tethering failed in 6s, infor user "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :goto_1
    return-void

    .line 305
    :cond_2
    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 306
    :catch_0
    move-exception v1

    .line 307
    .local v1, ex:Ljava/lang/InterruptedException;
    const-string v3, "ConnectSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thread.sleep error :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 319
    .end local v1           #ex:Ljava/lang/InterruptedException;
    :cond_3
    const-string v3, "ConnectSettings"

    const-string v4, "else here"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
