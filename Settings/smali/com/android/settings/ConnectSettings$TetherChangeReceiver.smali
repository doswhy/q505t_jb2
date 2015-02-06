.class Lcom/android/settings/ConnectSettings$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ConnectSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConnectSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/ConnectSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/settings/ConnectSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/ConnectSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ConnectSettings;Lcom/android/settings/ConnectSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/android/settings/ConnectSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/ConnectSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "content"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 232
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/ConnectSettings;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ConnectSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive,action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    iget-object v1, p0, Lcom/android/settings/ConnectSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/ConnectSettings;

    const/4 v2, 0x1

    #setter for: Lcom/android/settings/ConnectSettings;->mMassStorageActive:Z
    invoke-static {v1, v2}, Lcom/android/settings/ConnectSettings;->access$302(Lcom/android/settings/ConnectSettings;Z)Z

    .line 245
    :cond_1
    :goto_0
    return-void

    .line 236
    :cond_2
    const-string v1, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 237
    iget-object v1, p0, Lcom/android/settings/ConnectSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/ConnectSettings;

    #setter for: Lcom/android/settings/ConnectSettings;->mMassStorageActive:Z
    invoke-static {v1, v4}, Lcom/android/settings/ConnectSettings;->access$302(Lcom/android/settings/ConnectSettings;Z)Z

    goto :goto_0

    .line 238
    :cond_3
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/android/settings/ConnectSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/ConnectSettings;

    const-string v2, "connected"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/android/settings/ConnectSettings;->mUsbConnected:Z
    invoke-static {v1, v2}, Lcom/android/settings/ConnectSettings;->access$402(Lcom/android/settings/ConnectSettings;Z)Z

    .line 240
    const-string v1, "ConnectSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive,mUsbConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ConnectSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/ConnectSettings;

    #getter for: Lcom/android/settings/ConnectSettings;->mUsbConnected:Z
    invoke-static {v3}, Lcom/android/settings/ConnectSettings;->access$400(Lcom/android/settings/ConnectSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v1, p0, Lcom/android/settings/ConnectSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/ConnectSettings;

    #getter for: Lcom/android/settings/ConnectSettings;->mUsbConnected:Z
    invoke-static {v1}, Lcom/android/settings/ConnectSettings;->access$400(Lcom/android/settings/ConnectSettings;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/android/settings/ConnectSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/ConnectSettings;

    invoke-virtual {v1}, Lcom/android/settings/ConnectSettings;->finish()V

    goto :goto_0
.end method
