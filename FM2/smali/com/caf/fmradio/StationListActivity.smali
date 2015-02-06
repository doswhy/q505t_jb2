.class public Lcom/caf/fmradio/StationListActivity;
.super Landroid/app/Activity;
.source "StationListActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
.field private static mItemId:I

.field private static mService:Lcom/caf/fmradio/IFMRadioService;


# instance fields
.field private isFirst:Z

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAdapter:Landroid/widget/SimpleAdapter;

.field private mDeleteDialog:Landroid/app/Dialog;

.field mIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRenameDialog:Landroid/app/Dialog;

.field private mStationList:Landroid/widget/ListView;

.field private osc:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/caf/fmradio/StationListActivity;->mService:Lcom/caf/fmradio/IFMRadioService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/caf/fmradio/StationListActivity;->isFirst:Z

    .line 89
    new-instance v0, Lcom/caf/fmradio/StationListActivity$1;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/StationListActivity$1;-><init>(Lcom/caf/fmradio/StationListActivity;)V

    iput-object v0, p0, Lcom/caf/fmradio/StationListActivity;->osc:Landroid/content/ServiceConnection;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/caf/fmradio/StationListActivity;->list:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/caf/fmradio/StationListActivity;->mIndex:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000()Lcom/caf/fmradio/IFMRadioService;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/caf/fmradio/StationListActivity;->mService:Lcom/caf/fmradio/IFMRadioService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/caf/fmradio/IFMRadioService;)Lcom/caf/fmradio/IFMRadioService;
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    sput-object p0, Lcom/caf/fmradio/StationListActivity;->mService:Lcom/caf/fmradio/IFMRadioService;

    return-object p0
.end method

.method static synthetic access$100(Lcom/caf/fmradio/StationListActivity;)Landroid/widget/SimpleAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/caf/fmradio/StationListActivity;->mAdapter:Landroid/widget/SimpleAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/caf/fmradio/StationListActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/caf/fmradio/StationListActivity;->stationNameExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/caf/fmradio/StationListActivity;->mItemId:I

    return v0
.end method

.method static synthetic access$400(Lcom/caf/fmradio/StationListActivity;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/caf/fmradio/StationListActivity;->saveStationName(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/caf/fmradio/StationListActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/caf/fmradio/StationListActivity;->mRenameDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/caf/fmradio/StationListActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/caf/fmradio/StationListActivity;->deleteStation(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/caf/fmradio/StationListActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/caf/fmradio/StationListActivity;->mDeleteDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private deleteStation(I)V
    .locals 5
    .parameter "id"

    .prologue
    .line 283
    const-string v3, "scan_station_list"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/caf/fmradio/StationListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 285
    .local v1, sp:Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/caf/fmradio/StationListActivity;->mIndex:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 286
    .local v2, stationIndex:Ljava/lang/Integer;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 287
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name_of_station"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frequency_of_station"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 289
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 290
    invoke-virtual {p0}, Lcom/caf/fmradio/StationListActivity;->load()V

    .line 291
    return-void
.end method

.method private getNameFromId(I)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 301
    iget-object v1, p0, Lcom/caf/fmradio/StationListActivity;->mAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 303
    .local v0, name:Ljava/lang/String;
    return-object v0
.end method

.method private saveStationName(ILjava/lang/String;)V
    .locals 5
    .parameter "id"
    .parameter "name"

    .prologue
    .line 271
    iget-object v3, p0, Lcom/caf/fmradio/StationListActivity;->mIndex:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 272
    .local v2, stationIndex:Ljava/lang/Integer;
    const-string v3, "scan_station_list"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/caf/fmradio/StationListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 274
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 275
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name_of_station"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 278
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 279
    invoke-virtual {p0}, Lcom/caf/fmradio/StationListActivity;->load()V

    .line 280
    return-void
.end method

.method private stationNameExist(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    .line 172
    iget-object v2, p0, Lcom/caf/fmradio/StationListActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 173
    .local v1, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    const/4 v2, 0x1

    .line 177
    .end local v1           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected load()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v5, 0x0

    .line 308
    iget-object v0, p0, Lcom/caf/fmradio/StationListActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 309
    iget-object v0, p0, Lcom/caf/fmradio/StationListActivity;->mIndex:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 310
    const-string v0, "scan_station_list"

    invoke-virtual {p0, v0, v5}, Lcom/caf/fmradio/StationListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 312
    .local v10, sp:Landroid/content/SharedPreferences;
    const-string v0, "number_of_stations"

    invoke-interface {v10, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 313
    .local v11, station_number:I
    const/4 v7, 0x1

    .local v7, i:I
    :goto_0
    if-gt v7, v11, :cond_1

    .line 314
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 315
    .local v8, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name_of_station"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 317
    .local v9, name:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "frequency_of_station"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 319
    .local v6, frequency:I
    const-string v0, ""

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v6, :cond_0

    .line 320
    const-string v0, "name"

    invoke-virtual {v8, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v0, "freq"

    int-to-float v1, v6

    const/high16 v2, 0x447a

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v0, p0, Lcom/caf/fmradio/StationListActivity;->mIndex:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/caf/fmradio/StationListActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v0, p0, Lcom/caf/fmradio/StationListActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 327
    .end local v6           #frequency:I
    .end local v8           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9           #name:Ljava/lang/String;
    :cond_1
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/caf/fmradio/StationListActivity;->list:Ljava/util/ArrayList;

    const v3, 0x7f03000e

    new-array v4, v12, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v4, v5

    const/4 v1, 0x1

    const-string v5, "freq"

    aput-object v5, v4, v1

    new-array v5, v12, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/caf/fmradio/StationListActivity;->mAdapter:Landroid/widget/SimpleAdapter;

    .line 331
    iget-object v0, p0, Lcom/caf/fmradio/StationListActivity;->mStationList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/caf/fmradio/StationListActivity;->mAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 332
    return-void

    .line 327
    :array_0
    .array-data 0x4
        0x3et 0x0t 0x9t 0x7ft
        0x4dt 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 139
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 140
    .local v0, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 150
    :goto_0
    return v2

    .line 142
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/caf/fmradio/StationListActivity;->showDialog(I)V

    goto :goto_0

    .line 145
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/caf/fmradio/StationListActivity;->showDialog(I)V

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/StationListActivity;->setContentView(I)V

    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/caf/fmradio/FMRadioService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/caf/fmradio/StationListActivity;->osc:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/caf/fmradio/StationListActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 112
    const v0, 0x7f090049

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/StationListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/caf/fmradio/StationListActivity;->mStationList:Landroid/widget/ListView;

    .line 114
    iget-object v0, p0, Lcom/caf/fmradio/StationListActivity;->mStationList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 115
    iget-object v0, p0, Lcom/caf/fmradio/StationListActivity;->mStationList:Landroid/widget/ListView;

    new-instance v1, Lcom/caf/fmradio/StationListActivity$2;

    invoke-direct {v1, p0}, Lcom/caf/fmradio/StationListActivity$2;-><init>(Lcom/caf/fmradio/StationListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 134
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v3, 0x0

    .line 157
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 158
    .local v0, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    const/4 v1, 0x1

    const v2, 0x7f060040

    invoke-virtual {p0, v2}, Lcom/caf/fmradio/StationListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 159
    const/4 v1, 0x2

    const v2, 0x7f060041

    invoke-virtual {p0, v2}, Lcom/caf/fmradio/StationListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 160
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    sput v1, Lcom/caf/fmradio/StationListActivity;->mItemId:I

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0600a7

    invoke-virtual {p0, v2}, Lcom/caf/fmradio/StationListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/caf/fmradio/StationListActivity;->mItemId:I

    invoke-direct {p0, v2}, Lcom/caf/fmradio/StationListActivity;->getNameFromId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 162
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "id"
    .parameter "b"

    .prologue
    .line 255
    packed-switch p1, :pswitch_data_0

    .line 267
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 257
    :pswitch_0
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/caf/fmradio/StationListActivity;->mRenameDialog:Landroid/app/Dialog;

    .line 258
    iget-object v0, p0, Lcom/caf/fmradio/StationListActivity;->mRenameDialog:Landroid/app/Dialog;

    const v1, 0x7f03000b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 259
    iget-object v0, p0, Lcom/caf/fmradio/StationListActivity;->mRenameDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 261
    :pswitch_1
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/caf/fmradio/StationListActivity;->mDeleteDialog:Landroid/app/Dialog;

    .line 262
    iget-object v0, p0, Lcom/caf/fmradio/StationListActivity;->mDeleteDialog:Landroid/app/Dialog;

    const v1, 0x7f030003

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 263
    iget-object v0, p0, Lcom/caf/fmradio/StationListActivity;->mDeleteDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/caf/fmradio/StationListActivity;->osc:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/StationListActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 337
    const/4 v0, 0x0

    sput-object v0, Lcom/caf/fmradio/StationListActivity;->mService:Lcom/caf/fmradio/IFMRadioService;

    .line 338
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 339
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 11
    .parameter "id"
    .parameter "dialog"
    .parameter "b"

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/caf/fmradio/StationListActivity;->load()V

    .line 187
    packed-switch p1, :pswitch_data_0

    .line 249
    :goto_0
    return-void

    .line 189
    :pswitch_0
    iget-object v6, p0, Lcom/caf/fmradio/StationListActivity;->mRenameDialog:Landroid/app/Dialog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0600a7

    invoke-virtual {p0, v8}, Lcom/caf/fmradio/StationListActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/caf/fmradio/StationListActivity;->mItemId:I

    invoke-direct {p0, v8}, Lcom/caf/fmradio/StationListActivity;->getNameFromId(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v6, p0, Lcom/caf/fmradio/StationListActivity;->mRenameDialog:Landroid/app/Dialog;

    const v7, 0x7f09003e

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 192
    .local v4, editText:Landroid/widget/EditText;
    sget v6, Lcom/caf/fmradio/StationListActivity;->mItemId:I

    invoke-direct {p0, v6}, Lcom/caf/fmradio/StationListActivity;->getNameFromId(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v6, p0, Lcom/caf/fmradio/StationListActivity;->mRenameDialog:Landroid/app/Dialog;

    const v7, 0x7f09003f

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 195
    .local v3, bOk:Landroid/widget/Button;
    new-instance v6, Lcom/caf/fmradio/StationListActivity$3;

    invoke-direct {v6, p0, v4}, Lcom/caf/fmradio/StationListActivity$3;-><init>(Lcom/caf/fmradio/StationListActivity;Landroid/widget/EditText;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v6, p0, Lcom/caf/fmradio/StationListActivity;->mRenameDialog:Landroid/app/Dialog;

    const v7, 0x7f09000a

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 219
    .local v0, bCancel:Landroid/widget/Button;
    new-instance v6, Lcom/caf/fmradio/StationListActivity$4;

    invoke-direct {v6, p0}, Lcom/caf/fmradio/StationListActivity$4;-><init>(Lcom/caf/fmradio/StationListActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 228
    .end local v0           #bCancel:Landroid/widget/Button;
    .end local v3           #bOk:Landroid/widget/Button;
    .end local v4           #editText:Landroid/widget/EditText;
    :pswitch_1
    iget-object v6, p0, Lcom/caf/fmradio/StationListActivity;->mDeleteDialog:Landroid/app/Dialog;

    const v7, 0x7f0600a9

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget v10, Lcom/caf/fmradio/StationListActivity;->mItemId:I

    invoke-direct {p0, v10}, Lcom/caf/fmradio/StationListActivity;->getNameFromId(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/caf/fmradio/StationListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v6, p0, Lcom/caf/fmradio/StationListActivity;->mDeleteDialog:Landroid/app/Dialog;

    const v7, 0x7f090008

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 230
    .local v5, prompt:Landroid/widget/TextView;
    const v6, 0x7f0600aa

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget v9, Lcom/caf/fmradio/StationListActivity;->mItemId:I

    invoke-direct {p0, v9}, Lcom/caf/fmradio/StationListActivity;->getNameFromId(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/caf/fmradio/StationListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v6, p0, Lcom/caf/fmradio/StationListActivity;->mDeleteDialog:Landroid/app/Dialog;

    const v7, 0x7f090009

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 233
    .local v2, bDelete:Landroid/widget/Button;
    new-instance v6, Lcom/caf/fmradio/StationListActivity$5;

    invoke-direct {v6, p0}, Lcom/caf/fmradio/StationListActivity$5;-><init>(Lcom/caf/fmradio/StationListActivity;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v6, p0, Lcom/caf/fmradio/StationListActivity;->mDeleteDialog:Landroid/app/Dialog;

    const v7, 0x7f09000a

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 241
    .local v1, bCancelDelete:Landroid/widget/Button;
    new-instance v6, Lcom/caf/fmradio/StationListActivity$6;

    invoke-direct {v6, p0}, Lcom/caf/fmradio/StationListActivity$6;-><init>(Lcom/caf/fmradio/StationListActivity;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/caf/fmradio/StationListActivity;->load()V

    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 169
    return-void
.end method
