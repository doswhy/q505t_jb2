.class Lcom/caf/fmradio/FMRadio$6;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/caf/fmradio/FMRadio;->createPresetOptionsDlg(ILandroid/app/AlertDialog$Builder;)Landroid/app/Dialog;
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
    .line 1125
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$6;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    .line 1127
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$6;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mPresetButtonStation:Lcom/caf/fmradio/PresetStation;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$700(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/PresetStation;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1128
    packed-switch p2, :pswitch_data_0

    .line 1177
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$6;->this$0:Lcom/caf/fmradio/FMRadio;

    #setter for: Lcom/caf/fmradio/FMRadio;->mPresetButtonStation:Lcom/caf/fmradio/PresetStation;
    invoke-static {v3, v6}, Lcom/caf/fmradio/FMRadio;->access$702(Lcom/caf/fmradio/FMRadio;Lcom/caf/fmradio/PresetStation;)Lcom/caf/fmradio/PresetStation;

    .line 1182
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$6;->this$0:Lcom/caf/fmradio/FMRadio;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/caf/fmradio/FMRadio;->removeDialog(I)V

    .line 1183
    return-void

    .line 1131
    :pswitch_0
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$6;->this$0:Lcom/caf/fmradio/FMRadio;

    iget-object v4, p0, Lcom/caf/fmradio/FMRadio$6;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mPresetButtonStation:Lcom/caf/fmradio/PresetStation;
    invoke-static {v4}, Lcom/caf/fmradio/FMRadio;->access$700(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/PresetStation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/caf/fmradio/PresetStation;->getFrequency()I

    move-result v4

    #calls: Lcom/caf/fmradio/FMRadio;->tuneRadio(I)V
    invoke-static {v3, v4}, Lcom/caf/fmradio/FMRadio;->access$800(Lcom/caf/fmradio/FMRadio;I)V

    .line 1132
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$6;->this$0:Lcom/caf/fmradio/FMRadio;

    #setter for: Lcom/caf/fmradio/FMRadio;->mPresetButtonStation:Lcom/caf/fmradio/PresetStation;
    invoke-static {v3, v6}, Lcom/caf/fmradio/FMRadio;->access$702(Lcom/caf/fmradio/FMRadio;Lcom/caf/fmradio/PresetStation;)Lcom/caf/fmradio/PresetStation;

    goto :goto_0

    .line 1137
    :pswitch_1
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$6;->this$0:Lcom/caf/fmradio/FMRadio;

    iget-object v4, p0, Lcom/caf/fmradio/FMRadio$6;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mTunedStation:Lcom/caf/fmradio/PresetStation;
    invoke-static {v4}, Lcom/caf/fmradio/FMRadio;->access$900(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/PresetStation;

    move-result-object v4

    #calls: Lcom/caf/fmradio/FMRadio;->stationExists(Lcom/caf/fmradio/PresetStation;)Z
    invoke-static {v3, v4}, Lcom/caf/fmradio/FMRadio;->access$1000(Lcom/caf/fmradio/FMRadio;Lcom/caf/fmradio/PresetStation;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1138
    const-string v3, "FMRadio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "station - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/caf/fmradio/FMRadio$6;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mPresetButtonStation:Lcom/caf/fmradio/PresetStation;
    invoke-static {v5}, Lcom/caf/fmradio/FMRadio;->access$700(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/PresetStation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/caf/fmradio/PresetStation;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/caf/fmradio/FMRadio$6;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mPresetButtonStation:Lcom/caf/fmradio/PresetStation;
    invoke-static {v5}, Lcom/caf/fmradio/FMRadio;->access$700(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/PresetStation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/caf/fmradio/PresetStation;->getFrequency()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$6;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mPresetButtonStation:Lcom/caf/fmradio/PresetStation;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$700(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/PresetStation;

    move-result-object v3

    iget-object v4, p0, Lcom/caf/fmradio/FMRadio$6;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mTunedStation:Lcom/caf/fmradio/PresetStation;
    invoke-static {v4}, Lcom/caf/fmradio/FMRadio;->access$900(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/PresetStation;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/caf/fmradio/PresetStation;->Copy(Lcom/caf/fmradio/PresetStation;)V

    .line 1141
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$6;->this$0:Lcom/caf/fmradio/FMRadio;

    #setter for: Lcom/caf/fmradio/FMRadio;->mPresetButtonStation:Lcom/caf/fmradio/PresetStation;
    invoke-static {v3, v6}, Lcom/caf/fmradio/FMRadio;->access$702(Lcom/caf/fmradio/FMRadio;Lcom/caf/fmradio/PresetStation;)Lcom/caf/fmradio/PresetStation;

    .line 1142
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$6;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->setupPresetLayout()V
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$1100(Lcom/caf/fmradio/FMRadio;)V

    .line 1143
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$6;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$1200(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/FmSharedPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caf/fmradio/FmSharedPreferences;->Save()V

    goto/16 :goto_0

    .line 1149
    :pswitch_2
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$6;->this$0:Lcom/caf/fmradio/FMRadio;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/caf/fmradio/FMRadio;->showDialog(I)V

    goto/16 :goto_0

    .line 1154
    :pswitch_3
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getCurrentListIndex()I

    move-result v0

    .line 1155
    .local v0, curListIndex:I
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$6;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mPresetButtonStation:Lcom/caf/fmradio/PresetStation;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$700(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/PresetStation;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/caf/fmradio/FmSharedPreferences;->removeStation(ILcom/caf/fmradio/PresetStation;)V

    .line 1156
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$6;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mPresetButtonStation:Lcom/caf/fmradio/PresetStation;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$700(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/PresetStation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caf/fmradio/PresetStation;->getFrequency()I

    move-result v3

    iget-object v4, p0, Lcom/caf/fmradio/FMRadio$6;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mTunedStation:Lcom/caf/fmradio/PresetStation;
    invoke-static {v4}, Lcom/caf/fmradio/FMRadio;->access$900(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/PresetStation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/caf/fmradio/PresetStation;->getFrequency()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 1158
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$6;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mTunedStation:Lcom/caf/fmradio/PresetStation;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$900(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/PresetStation;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/caf/fmradio/PresetStation;->setName(Ljava/lang/String;)V

    .line 1160
    :cond_1
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$6;->this$0:Lcom/caf/fmradio/FMRadio;

    #setter for: Lcom/caf/fmradio/FMRadio;->mPresetButtonStation:Lcom/caf/fmradio/PresetStation;
    invoke-static {v3, v6}, Lcom/caf/fmradio/FMRadio;->access$702(Lcom/caf/fmradio/FMRadio;Lcom/caf/fmradio/PresetStation;)Lcom/caf/fmradio/PresetStation;

    .line 1161
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$6;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->setupPresetLayout()V
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$1100(Lcom/caf/fmradio/FMRadio;)V

    .line 1162
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$6;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$1200(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/FmSharedPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caf/fmradio/FmSharedPreferences;->Save()V

    goto/16 :goto_0

    .line 1167
    .end local v0           #curListIndex:I
    :pswitch_4
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$6;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mPresetButtonStation:Lcom/caf/fmradio/PresetStation;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$700(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/PresetStation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caf/fmradio/PresetStation;->getPIString()Ljava/lang/String;

    move-result-object v2

    .line 1168
    .local v2, piString:Ljava/lang/String;
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$6;->this$0:Lcom/caf/fmradio/FMRadio;

    #getter for: Lcom/caf/fmradio/FMRadio;->mPresetButtonStation:Lcom/caf/fmradio/PresetStation;
    invoke-static {v3}, Lcom/caf/fmradio/FMRadio;->access$700(Lcom/caf/fmradio/FMRadio;)Lcom/caf/fmradio/PresetStation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caf/fmradio/PresetStation;->getPI()I

    move-result v1

    .line 1169
    .local v1, pi:I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    if-lez v1, :cond_2

    .line 1170
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$6;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->initiatePISearch(I)V
    invoke-static {v3, v1}, Lcom/caf/fmradio/FMRadio;->access$1300(Lcom/caf/fmradio/FMRadio;I)V

    .line 1172
    :cond_2
    iget-object v3, p0, Lcom/caf/fmradio/FMRadio$6;->this$0:Lcom/caf/fmradio/FMRadio;

    #setter for: Lcom/caf/fmradio/FMRadio;->mPresetButtonStation:Lcom/caf/fmradio/PresetStation;
    invoke-static {v3, v6}, Lcom/caf/fmradio/FMRadio;->access$702(Lcom/caf/fmradio/FMRadio;Lcom/caf/fmradio/PresetStation;)Lcom/caf/fmradio/PresetStation;

    goto/16 :goto_0

    .line 1128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
