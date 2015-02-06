.class Lcom/caf/fmradio/StationListActivity$2;
.super Ljava/lang/Object;
.source "StationListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/caf/fmradio/StationListActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 115
    iput-object p1, p0, Lcom/caf/fmradio/StationListActivity$2;->this$0:Lcom/caf/fmradio/StationListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/caf/fmradio/StationListActivity$2;->this$0:Lcom/caf/fmradio/StationListActivity;

    #getter for: Lcom/caf/fmradio/StationListActivity;->mAdapter:Landroid/widget/SimpleAdapter;
    invoke-static {v3}, Lcom/caf/fmradio/StationListActivity;->access$100(Lcom/caf/fmradio/StationListActivity;)Landroid/widget/SimpleAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "freq"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 122
    .local v2, freq:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 123
    .local v1, fFreq:Ljava/lang/Float;
    invoke-static {}, Lcom/caf/fmradio/StationListActivity;->access$000()Lcom/caf/fmradio/IFMRadioService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 125
    :try_start_0
    invoke-static {}, Lcom/caf/fmradio/StationListActivity;->access$000()Lcom/caf/fmradio/IFMRadioService;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v5, 0x447a

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-interface {v3, v4}, Lcom/caf/fmradio/IFMRadioService;->tune(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 130
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v3, "StationList"

    const-string v4, "mService is null........"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
