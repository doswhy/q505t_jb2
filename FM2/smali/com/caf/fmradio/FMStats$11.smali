.class Lcom/caf/fmradio/FMStats$11;
.super Ljava/lang/Object;
.source "FMStats.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FMStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/fmradio/FMStats;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/FMStats;)V
    .locals 0
    .parameter

    .prologue
    .line 715
    iput-object p1, p0, Lcom/caf/fmradio/FMStats$11;->this$0:Lcom/caf/fmradio/FMStats;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 718
    iget-object v3, p0, Lcom/caf/fmradio/FMStats$11;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v3, v3, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 720
    .local v0, a:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 721
    .local v1, cf0:I
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value entered for CF0TH12 is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const/high16 v3, -0x8000

    if-lt v1, v3, :cond_0

    const v3, 0x7fffffff

    if-le v1, v3, :cond_1

    .line 736
    .end local v1           #cf0:I
    :cond_0
    :goto_0
    return-void

    .line 725
    .restart local v1       #cf0:I
    :cond_1
    iget-object v3, p0, Lcom/caf/fmradio/FMStats$11;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v3}, Lcom/caf/fmradio/FMStats;->access$600(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/IFMRadioService;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    if-eqz v3, :cond_0

    .line 727
    :try_start_1
    iget-object v3, p0, Lcom/caf/fmradio/FMStats$11;->this$0:Lcom/caf/fmradio/FMStats;

    #getter for: Lcom/caf/fmradio/FMStats;->mService:Lcom/caf/fmradio/IFMRadioService;
    invoke-static {v3}, Lcom/caf/fmradio/FMStats;->access$600(Lcom/caf/fmradio/FMStats;)Lcom/caf/fmradio/IFMRadioService;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/caf/fmradio/IFMRadioService;->setCFOMeanTh(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 728
    :catch_0
    move-exception v2

    .line 729
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 732
    .end local v1           #cf0:I
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 733
    .local v2, e:Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/caf/fmradio/FMStats;->access$1000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value entered is not in correct format : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v3, p0, Lcom/caf/fmradio/FMStats$11;->this$0:Lcom/caf/fmradio/FMStats;

    iget-object v3, v3, Lcom/caf/fmradio/FMStats;->txtbox1:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
