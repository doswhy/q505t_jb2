.class Lcom/caf/fmradio/FMRadio$4;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/caf/fmradio/FMRadio;->createSearchDlg(ILandroid/app/AlertDialog$Builder;)Landroid/app/Dialog;
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
    .line 1028
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$4;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 1033
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$4;->this$0:Lcom/caf/fmradio/FMRadio;

    #setter for: Lcom/caf/fmradio/FMRadio;->mItemsIndex:I
    invoke-static {v3, p2}, Lcom/caf/fmradio/FMRadio;->access$302(Lcom/caf/fmradio/FMRadio;I)I

    .line 1035
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->isRBDSStd()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1036
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$4;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-virtual {v3}, Lcom/caf/fmradio/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1038
    .local v0, items:[Ljava/lang/String;
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$4;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-virtual {v3}, Lcom/caf/fmradio/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1046
    .local v2, values:[Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-ltz p2, :cond_0

    .line 1047
    if-ltz p2, :cond_0

    array-length v3, v0

    if-gt p2, v3, :cond_0

    array-length v3, v0

    if-gt p2, v3, :cond_0

    .line 1049
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$4;->this$0:Lcom/caf/fmradio/FMRadio;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Search Stations for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    #calls: Lcom/caf/fmradio/FMRadio;->DebugToasts(Ljava/lang/String;I)V
    invoke-static {v3, v4, v5}, Lcom/caf/fmradio/FMRadio;->access$400(Lcom/caf/fmradio/FMRadio;Ljava/lang/String;I)V

    .line 1052
    aget-object v3, v2, p2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1053
    .local v1, pty:I
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$4;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-virtual {v3}, Lcom/caf/fmradio/FMRadio;->clearStationList()V

    .line 1054
    invoke-static {p2}, Lcom/caf/fmradio/FMRadio;->access$502(I)I

    .line 1055
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$4;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->initiateSearch(I)V
    invoke-static {v3, v1}, Lcom/caf/fmradio/FMRadio;->access$600(Lcom/caf/fmradio/FMRadio;I)V

    .line 1058
    .end local v1           #pty:I
    :cond_0
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$4;->this$0:Lcom/caf/fmradio/FMRadio;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/caf/fmradio/FMRadio;->removeDialog(I)V

    .line 1059
    return-void

    .line 1041
    .end local v0           #items:[Ljava/lang/String;
    .end local v2           #values:[Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$4;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-virtual {v3}, Lcom/caf/fmradio/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1043
    .restart local v0       #items:[Ljava/lang/String;
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$4;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-virtual {v3}, Lcom/caf/fmradio/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .restart local v2       #values:[Ljava/lang/String;
    goto :goto_0
.end method
