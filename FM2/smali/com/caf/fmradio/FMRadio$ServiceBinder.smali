.class Lcom/caf/fmradio/FMRadio$ServiceBinder;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FMRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceBinder"
.end annotation


# instance fields
.field mCallback:Landroid/content/ServiceConnection;

.field final synthetic this$0:Lcom/caf/fmradio/FMRadio;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/FMRadio;Landroid/content/ServiceConnection;)V
    .locals 0
    .parameter
    .parameter "callback"

    .prologue
    .line 2958
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$ServiceBinder;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2959
    iput-object p2, p0, Lcom/caf/fmradio/FMRadio$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    .line 2960
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 2963
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$ServiceBinder;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-static {p2}, Lcom/caf/fmradio/IFMRadioService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v1

    iput-object v1, v0, Lcom/caf/fmradio/FMRadio;->sService:Lcom/caf/fmradio/IFMRadioService;

    .line 2964
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 2965
    const-string v0, "FMRadio"

    const-string v1, "onServiceConnected: mCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 2968
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    const/4 v1, 0x0

    .line 2971
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 2972
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 2974
    :cond_0
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$ServiceBinder;->this$0:Lcom/caf/fmradio/FMRadio;

    iput-object v1, v0, Lcom/caf/fmradio/FMRadio;->sService:Lcom/caf/fmradio/IFMRadioService;

    .line 2975
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$ServiceBinder;->this$0:Lcom/caf/fmradio/FMRadio;

    #setter for: Lcom/caf/fmradio/FMRadio;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v0, v1}, Lcom/caf/fmradio/FMRadio;->access$2802(Lcom/caf/fmradio/FMRadio;Lcom/caf/fmradio/IFMRadioService;)Lcom/caf/fmradio/IFMRadioService;

    .line 2976
    return-void
.end method
