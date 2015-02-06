.class Lcom/caf/fmradio/FMStats$ServiceBinder;
.super Ljava/lang/Object;
.source "FMStats.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FMStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceBinder"
.end annotation


# instance fields
.field mCallback:Landroid/content/ServiceConnection;

.field final synthetic this$0:Lcom/caf/fmradio/FMStats;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/FMStats;Landroid/content/ServiceConnection;)V
    .locals 0
    .parameter
    .parameter "callback"

    .prologue
    .line 2018
    iput-object p1, p0, Lcom/caf/fmradio/FMStats$ServiceBinder;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2019
    iput-object p2, p0, Lcom/caf/fmradio/FMStats$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    .line 2020
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$ServiceBinder;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-static {p2}, Lcom/caf/fmradio/IFMRadioService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v1

    iput-object v1, v0, Lcom/caf/fmradio/FMStats;->sService:Lcom/caf/fmradio/IFMRadioService;

    .line 2024
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 2026
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected: mCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 2029
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 2032
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 2034
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 2036
    :cond_0
    iget-object v0, p0, Lcom/caf/fmradio/FMStats$ServiceBinder;->this$0:Lcom/caf/fmradio/FMStats;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/caf/fmradio/FMStats;->sService:Lcom/caf/fmradio/IFMRadioService;

    .line 2037
    return-void
.end method
