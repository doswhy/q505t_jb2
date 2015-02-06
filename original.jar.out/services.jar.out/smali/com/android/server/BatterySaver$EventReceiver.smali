.class Lcom/android/server/BatterySaver$EventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatterySaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatterySaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatterySaver;


# direct methods
.method public constructor <init>(Lcom/android/server/BatterySaver;)V
    .locals 2
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/server/BatterySaver$EventReceiver;->this$0:Lcom/android/server/BatterySaver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 220
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 221
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    #getter for: Lcom/android/server/BatterySaver;->mAms:Lcom/android/server/AlarmManagerService;
    invoke-static {p1}, Lcom/android/server/BatterySaver;->access$000(Lcom/android/server/BatterySaver;)Lcom/android/server/AlarmManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 224
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 228
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/server/BatterySaver$EventReceiver;->this$0:Lcom/android/server/BatterySaver;

    invoke-virtual {v0}, Lcom/android/server/BatterySaver;->setScreen()V

    .line 232
    iget-object v0, p0, Lcom/android/server/BatterySaver$EventReceiver;->this$0:Lcom/android/server/BatterySaver;

    #getter for: Lcom/android/server/BatterySaver;->mAms:Lcom/android/server/AlarmManagerService;
    invoke-static {v0}, Lcom/android/server/BatterySaver;->access$000(Lcom/android/server/BatterySaver;)Lcom/android/server/AlarmManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->intervalChange()V

    .line 233
    const-string v0, "AlarmManager"

    const-string v1, " screen is changed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_1
    return-void
.end method
