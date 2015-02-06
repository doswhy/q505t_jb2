.class Lcom/caf/fmradio/FMRadio$7;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/caf/fmradio/FMRadio;->createSleepDlg(ILandroid/app/AlertDialog$Builder;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/fmradio/FMRadio;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/FMRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 1194
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$7;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 1196
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$7;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-virtual {v3}, Lcom/caf/fmradio/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1197
    .local v0, items:[Ljava/lang/String;
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$7;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-virtual {v3}, Lcom/caf/fmradio/FMRadio;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    aget-object v4, v0, p2

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1198
    if-ltz p2, :cond_0

    array-length v3, v0

    if-gt p2, v3, :cond_0

    .line 1199
    add-int/lit8 v3, p2, 0x1

    mul-int/lit16 v3, v3, 0x384

    int-to-long v1, v3

    .line 1200
    .local v1, seconds:J
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$7;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->initiateSleepTimer(J)V
    invoke-static {v3, v1, v2}, Lcom/caf/fmradio/FMRadio;->access$1400(Lcom/caf/fmradio/FMRadio;J)V

    .line 1202
    .end local v1           #seconds:J
    :cond_0
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$7;->this$0:Lcom/caf/fmradio/FMRadio;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/caf/fmradio/FMRadio;->removeDialog(I)V

    .line 1203
    return-void
.end method
