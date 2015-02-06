.class public Lcom/caf/fmradio/PresetList;
.super Ljava/lang/Object;
.source "PresetList.java"


# instance fields
.field private mCurrentStation:I

.field private mListName:Ljava/lang/String;

.field private mPresetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/caf/fmradio/PresetStation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/caf/fmradio/PresetList;->mPresetList:Ljava/util/List;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/caf/fmradio/PresetList;->mCurrentStation:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/caf/fmradio/PresetList;->mListName:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/caf/fmradio/PresetList;->mListName:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public declared-synchronized addStation(Ljava/lang/String;I)Lcom/caf/fmradio/PresetStation;
    .locals 2
    .parameter "name"
    .parameter "freq"

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/caf/fmradio/PresetStation;

    invoke-direct {v0, p1, p2}, Lcom/caf/fmradio/PresetStation;-><init>(Ljava/lang/String;I)V

    .line 109
    .local v0, addStation:Lcom/caf/fmradio/PresetStation;
    if-eqz v0, :cond_0

    .line 110
    iget-object v1, p0, Lcom/caf/fmradio/PresetList;->mPresetList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_0
    monitor-exit p0

    return-object v0

    .line 108
    .end local v0           #addStation:Lcom/caf/fmradio/PresetStation;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/caf/fmradio/PresetList;->mPresetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/caf/fmradio/PresetList;->mListName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getStationCount()I
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/caf/fmradio/PresetList;->mPresetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStationFromIndex(I)Lcom/caf/fmradio/PresetStation;
    .locals 3
    .parameter "index"

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/caf/fmradio/PresetList;->mPresetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 87
    .local v1, totalPresets:I
    const/4 v0, 0x0

    .line 88
    .local v0, station:Lcom/caf/fmradio/PresetStation;
    if-ge p1, v1, :cond_0

    .line 89
    iget-object v2, p0, Lcom/caf/fmradio/PresetList;->mPresetList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #station:Lcom/caf/fmradio/PresetStation;
    check-cast v0, Lcom/caf/fmradio/PresetStation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .restart local v0       #station:Lcom/caf/fmradio/PresetStation;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 86
    .end local v0           #station:Lcom/caf/fmradio/PresetStation;
    .end local v1           #totalPresets:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized removeStation(Lcom/caf/fmradio/PresetStation;)V
    .locals 3
    .parameter "station"

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/caf/fmradio/PresetList;->mPresetList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 134
    .local v0, index:I
    iget-object v2, p0, Lcom/caf/fmradio/PresetList;->mPresetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 135
    .local v1, totalPresets:I
    if-ltz v0, :cond_0

    if-ge v0, v1, :cond_0

    .line 137
    iget-object v2, p0, Lcom/caf/fmradio/PresetList;->mPresetList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_0
    monitor-exit p0

    return-void

    .line 133
    .end local v0           #index:I
    .end local v1           #totalPresets:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized sameStationExists(Lcom/caf/fmradio/PresetStation;)Z
    .locals 5
    .parameter "compareStation"

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/caf/fmradio/PresetList;->mPresetList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 170
    .local v2, totalPresets:I
    if-eqz p1, :cond_1

    .line 171
    const/4 v0, 0x0

    .local v0, presetNum:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 172
    iget-object v3, p0, Lcom/caf/fmradio/PresetList;->mPresetList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caf/fmradio/PresetStation;

    .line 173
    .local v1, station:Lcom/caf/fmradio/PresetStation;
    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {p1}, Lcom/caf/fmradio/PresetStation;->getFrequency()I

    move-result v3

    invoke-virtual {v1}, Lcom/caf/fmradio/PresetStation;->getFrequency()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-ne v3, v4, :cond_0

    .line 175
    const/4 v3, 0x1

    .line 180
    .end local v0           #presetNum:I
    .end local v1           #station:Lcom/caf/fmradio/PresetStation;
    :goto_1
    monitor-exit p0

    return v3

    .line 171
    .restart local v0       #presetNum:I
    .restart local v1       #station:Lcom/caf/fmradio/PresetStation;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    .end local v0           #presetNum:I
    .end local v1           #station:Lcom/caf/fmradio/PresetStation;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 169
    .end local v2           #totalPresets:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/caf/fmradio/PresetList;->mListName:Ljava/lang/String;

    return-object v0
.end method
