.class Lcom/caf/fmradio/FMTransmitterActivity$ServiceBinder;
.super Ljava/lang/Object;
.source "FMTransmitterActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FMTransmitterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceBinder"
.end annotation


# instance fields
.field mCallback:Landroid/content/ServiceConnection;

.field final synthetic this$0:Lcom/caf/fmradio/FMTransmitterActivity;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/FMTransmitterActivity;Landroid/content/ServiceConnection;)V
    .locals 0
    .parameter
    .parameter "callback"

    .prologue
    .line 1432
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterActivity$ServiceBinder;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1433
    iput-object p2, p0, Lcom/caf/fmradio/FMTransmitterActivity$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    .line 1434
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$ServiceBinder;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    invoke-static {p2}, Lcom/caf/fmradio/IFMTransmitterService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/caf/fmradio/IFMTransmitterService;

    move-result-object v1

    iput-object v1, v0, Lcom/caf/fmradio/FMTransmitterActivity;->sService:Lcom/caf/fmradio/IFMTransmitterService;

    .line 1439
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 1440
    const-string v0, "FMTransmitterActivity"

    const-string v1, "onServiceConnected: mCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 1443
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 1447
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 1449
    :cond_0
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterActivity$ServiceBinder;->this$0:Lcom/caf/fmradio/FMTransmitterActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/caf/fmradio/FMTransmitterActivity;->sService:Lcom/caf/fmradio/IFMTransmitterService;

    .line 1450
    return-void
.end method
