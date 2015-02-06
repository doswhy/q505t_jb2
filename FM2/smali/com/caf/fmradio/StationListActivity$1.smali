.class Lcom/caf/fmradio/StationListActivity$1;
.super Ljava/lang/Object;
.source "StationListActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/StationListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/fmradio/StationListActivity;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/StationListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/caf/fmradio/StationListActivity$1;->this$0:Lcom/caf/fmradio/StationListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 91
    invoke-static {p2}, Lcom/caf/fmradio/IFMRadioService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v0

    invoke-static {v0}, Lcom/caf/fmradio/StationListActivity;->access$002(Lcom/caf/fmradio/IFMRadioService;)Lcom/caf/fmradio/IFMRadioService;

    .line 92
    invoke-static {}, Lcom/caf/fmradio/StationListActivity;->access$000()Lcom/caf/fmradio/IFMRadioService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    const-string v0, "StationList"

    const-string v1, "IFMRadioService onServiceConnected failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "classname"

    .prologue
    .line 100
    return-void
.end method
