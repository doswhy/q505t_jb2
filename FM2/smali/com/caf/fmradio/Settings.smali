.class public Lcom/caf/fmradio/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private chSpacingItems:[Ljava/lang/String;

.field private chan_spacing:I

.field private mAfPref:Landroid/preference/CheckBoxPreference;

.field private mAudioPreference:Landroid/preference/ListPreference;

.field private mBandPreference:Landroid/preference/ListPreference;

.field private mChannelSpacingPref:Landroid/preference/ListPreference;

.field private mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

.field private mRecordDurPreference:Landroid/preference/ListPreference;

.field private mRestoreDefaultPreference:Landroid/preference/Preference;

.field private mRxMode:Z

.field private mUserBandMaxPref:Landroid/preference/EditTextPreference;

.field private mUserBandMinPref:Landroid/preference/EditTextPreference;

.field private max_freq:I

.field private min_freq:I

.field private summaryAudioModeItems:[Ljava/lang/String;

.field private summaryBandItems:[Ljava/lang/String;

.field private summaryRecordItems:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caf/fmradio/Settings;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/caf/fmradio/Settings;->mRxMode:Z

    return-void
.end method

.method static synthetic access$000(Lcom/caf/fmradio/Settings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/caf/fmradio/Settings;->restoreSettingsDefault()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 13

    .prologue
    const v12, 0x7f0600be

    const v11, 0x7f050013

    const v10, 0x7f050002

    const/high16 v9, 0x7f05

    const/16 v8, 0x2002

    .line 107
    const/4 v2, 0x0

    .line 108
    .local v2, index:I
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    if-nez v5, :cond_0

    .line 109
    const/4 v4, 0x0

    .line 245
    :goto_0
    return-object v4

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/caf/fmradio/Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 115
    .local v4, root:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/caf/fmradio/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f05000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/caf/fmradio/Settings;->summaryBandItems:[Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Lcom/caf/fmradio/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/caf/fmradio/Settings;->chSpacingItems:[Ljava/lang/String;

    .line 119
    new-instance v5, Landroid/preference/ListPreference;

    invoke-direct {v5, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/caf/fmradio/Settings;->mBandPreference:Landroid/preference/ListPreference;

    .line 120
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mBandPreference:Landroid/preference/ListPreference;

    const v6, 0x7f05000b

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 121
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mBandPreference:Landroid/preference/ListPreference;

    const v6, 0x7f05000c

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 122
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mBandPreference:Landroid/preference/ListPreference;

    const v6, 0x7f060045

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 123
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mBandPreference:Landroid/preference/ListPreference;

    const-string v6, "regional_band"

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 124
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mBandPreference:Landroid/preference/ListPreference;

    const v6, 0x7f060048

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 125
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getCountry()I

    move-result v2

    .line 126
    const-string v5, "FMRadio"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createPreferenceHierarchy: Country: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    if-ltz v2, :cond_1

    iget-object v5, p0, Lcom/caf/fmradio/Settings;->summaryBandItems:[Ljava/lang/String;

    array-length v5, v5

    if-lt v2, v5, :cond_2

    .line 129
    :cond_1
    const/4 v2, 0x0

    .line 131
    :cond_2
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mBandPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 134
    new-instance v5, Landroid/preference/ListPreference;

    invoke-direct {v5, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/caf/fmradio/Settings;->mChannelSpacingPref:Landroid/preference/ListPreference;

    .line 135
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mChannelSpacingPref:Landroid/preference/ListPreference;

    invoke-virtual {v5, v11}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 136
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mChannelSpacingPref:Landroid/preference/ListPreference;

    const v6, 0x7f050012

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 137
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mChannelSpacingPref:Landroid/preference/ListPreference;

    const v6, 0x7f0600c0

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 138
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mChannelSpacingPref:Landroid/preference/ListPreference;

    const v6, 0x7f0600c1

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 139
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mChannelSpacingPref:Landroid/preference/ListPreference;

    const-string v6, "chanl_spacing"

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 141
    new-instance v5, Landroid/preference/EditTextPreference;

    invoke-direct {v5, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/caf/fmradio/Settings;->mUserBandMinPref:Landroid/preference/EditTextPreference;

    .line 142
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mUserBandMinPref:Landroid/preference/EditTextPreference;

    const-string v6, "user_defined_band_min"

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 143
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mUserBandMinPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v5, v12}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 144
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mUserBandMinPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 146
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mUserBandMinPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v5, v12}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 148
    new-instance v5, Landroid/preference/EditTextPreference;

    invoke-direct {v5, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/caf/fmradio/Settings;->mUserBandMaxPref:Landroid/preference/EditTextPreference;

    .line 149
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mUserBandMaxPref:Landroid/preference/EditTextPreference;

    const-string v6, "user_defined_band_max"

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 150
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mUserBandMaxPref:Landroid/preference/EditTextPreference;

    const v6, 0x7f0600bf

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 151
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mUserBandMaxPref:Landroid/preference/EditTextPreference;

    const v6, 0x7f0600bf

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 152
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mUserBandMaxPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 155
    invoke-direct {p0, v2}, Lcom/caf/fmradio/Settings;->setBandSummary(I)V

    .line 157
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mChannelSpacingPref:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 158
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mUserBandMinPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 159
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mUserBandMaxPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 161
    iget-boolean v5, p0, Lcom/caf/fmradio/Settings;->mRxMode:Z

    if-eqz v5, :cond_5

    .line 163
    invoke-virtual {p0}, Lcom/caf/fmradio/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/caf/fmradio/Settings;->summaryAudioModeItems:[Ljava/lang/String;

    .line 165
    new-instance v5, Landroid/preference/ListPreference;

    invoke-direct {v5, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/caf/fmradio/Settings;->mAudioPreference:Landroid/preference/ListPreference;

    .line 166
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mAudioPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5, v9}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 167
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mAudioPreference:Landroid/preference/ListPreference;

    const v6, 0x7f050001

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 168
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mAudioPreference:Landroid/preference/ListPreference;

    const v6, 0x7f06004a

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 169
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mAudioPreference:Landroid/preference/ListPreference;

    const-string v6, "audio_output_mode"

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 170
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mAudioPreference:Landroid/preference/ListPreference;

    const v6, 0x7f060049

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 171
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getAudioOutputMode()Z

    move-result v0

    .line 172
    .local v0, audiomode:Z
    if-eqz v0, :cond_6

    .line 173
    const/4 v2, 0x0

    .line 177
    :goto_1
    const-string v5, "FMRadio"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createPreferenceHierarchy: audiomode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mAudioPreference:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/caf/fmradio/Settings;->summaryAudioModeItems:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mAudioPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 180
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mAudioPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 183
    new-instance v5, Landroid/preference/CheckBoxPreference;

    invoke-direct {v5, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/caf/fmradio/Settings;->mAfPref:Landroid/preference/CheckBoxPreference;

    .line 184
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mAfPref:Landroid/preference/CheckBoxPreference;

    const-string v6, "af_checkbox_preference"

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 185
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mAfPref:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f06004d

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 186
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mAfPref:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f06004e

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 187
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mAfPref:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f06004f

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 188
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getAutoAFSwitch()Z

    move-result v1

    .line 189
    .local v1, bAFAutoSwitch:Z
    const-string v5, "FMRadio"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createPreferenceHierarchy: bAFAutoSwitch: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mAfPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 192
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mAfPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 195
    invoke-virtual {p0}, Lcom/caf/fmradio/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/caf/fmradio/Settings;->summaryRecordItems:[Ljava/lang/String;

    .line 197
    const/4 v3, 0x0

    .line 198
    .local v3, nRecordDuration:I
    new-instance v5, Landroid/preference/ListPreference;

    invoke-direct {v5, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/caf/fmradio/Settings;->mRecordDurPreference:Landroid/preference/ListPreference;

    .line 199
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mRecordDurPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5, v10}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 200
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mRecordDurPreference:Landroid/preference/ListPreference;

    const v6, 0x7f050003

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 201
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mRecordDurPreference:Landroid/preference/ListPreference;

    const v6, 0x7f06004c

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 202
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mRecordDurPreference:Landroid/preference/ListPreference;

    const-string v6, "record_duration"

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 203
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mRecordDurPreference:Landroid/preference/ListPreference;

    const v6, 0x7f06004b

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 204
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getRecordDuration()I

    move-result v3

    .line 205
    const-string v5, "FMRadio"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createPreferenceHierarchy: recordDuration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    sparse-switch v3, :sswitch_data_0

    .line 222
    :goto_2
    if-ltz v2, :cond_3

    iget-object v5, p0, Lcom/caf/fmradio/Settings;->summaryRecordItems:[Ljava/lang/String;

    array-length v5, v5

    if-lt v2, v5, :cond_4

    .line 223
    :cond_3
    const/4 v2, 0x0

    .line 225
    :cond_4
    const-string v5, "FMRadio"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createPreferenceHierarchy: recordDurationSummary: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/caf/fmradio/Settings;->summaryRecordItems:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mRecordDurPreference:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/caf/fmradio/Settings;->summaryRecordItems:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mRecordDurPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 229
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mRecordDurPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 237
    .end local v0           #audiomode:Z
    .end local v1           #bAFAutoSwitch:Z
    .end local v3           #nRecordDuration:I
    :cond_5
    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/caf/fmradio/Settings;->mRestoreDefaultPreference:Landroid/preference/Preference;

    .line 238
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mRestoreDefaultPreference:Landroid/preference/Preference;

    const v6, 0x7f060056

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 240
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mRestoreDefaultPreference:Landroid/preference/Preference;

    const-string v6, "revert_to_fac"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 241
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mRestoreDefaultPreference:Landroid/preference/Preference;

    const v6, 0x7f060057

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 243
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mRestoreDefaultPreference:Landroid/preference/Preference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 244
    iget-object v5, p0, Lcom/caf/fmradio/Settings;->mRestoreDefaultPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 175
    .restart local v0       #audiomode:Z
    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 209
    .restart local v1       #bAFAutoSwitch:Z
    .restart local v3       #nRecordDuration:I
    :sswitch_0
    const/4 v2, 0x0

    .line 210
    goto :goto_2

    .line 212
    :sswitch_1
    const/4 v2, 0x1

    .line 213
    goto :goto_2

    .line 215
    :sswitch_2
    const/4 v2, 0x2

    .line 216
    goto :goto_2

    .line 218
    :sswitch_3
    const/4 v2, 0x3

    goto :goto_2

    .line 207
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_3
        0x5 -> :sswitch_0
        0xf -> :sswitch_1
        0x1e -> :sswitch_2
    .end sparse-switch
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/caf/fmradio/Settings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 528
    return-void
.end method

.method private restoreSettingsDefault()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 448
    iget-object v0, p0, Lcom/caf/fmradio/Settings;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    if-eqz v0, :cond_0

    .line 449
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/caf/fmradio/Settings;->mBandPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 456
    :goto_0
    iget-boolean v0, p0, Lcom/caf/fmradio/Settings;->mRxMode:Z

    if-eqz v0, :cond_2

    .line 457
    iget-object v0, p0, Lcom/caf/fmradio/Settings;->mAudioPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 459
    iget-object v0, p0, Lcom/caf/fmradio/Settings;->mRecordDurPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 461
    iget-object v0, p0, Lcom/caf/fmradio/Settings;->mAfPref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 462
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->SetDefaults()V

    .line 472
    :goto_1
    iget-object v0, p0, Lcom/caf/fmradio/Settings;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    invoke-virtual {v0}, Lcom/caf/fmradio/FmSharedPreferences;->Save()V

    .line 474
    :cond_0
    return-void

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/caf/fmradio/Settings;->mBandPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0

    .line 464
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 465
    invoke-static {v3}, Lcom/caf/fmradio/FmSharedPreferences;->setCountry(I)V

    goto :goto_1

    .line 468
    :cond_3
    invoke-static {v2}, Lcom/caf/fmradio/FmSharedPreferences;->setCountry(I)V

    goto :goto_1
.end method

.method private sendSettingsChangedIntent(I)V
    .locals 4
    .parameter "action"

    .prologue
    .line 531
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.caf.fmradio.settings.changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 532
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 533
    const-string v1, "FMRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending  FM SETTING Change intent for = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-virtual {p0}, Lcom/caf/fmradio/Settings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 535
    return-void
.end method

.method private setBandSummary(I)V
    .locals 7
    .parameter "index"

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const-wide v4, 0x408f400000000000L

    .line 502
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/caf/fmradio/Settings;->summaryBandItems:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 503
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getLowerLimit()I

    move-result v0

    iput v0, p0, Lcom/caf/fmradio/Settings;->min_freq:I

    .line 504
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getUpperLimit()I

    move-result v0

    iput v0, p0, Lcom/caf/fmradio/Settings;->max_freq:I

    .line 505
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getChSpacing()I

    move-result v0

    iput v0, p0, Lcom/caf/fmradio/Settings;->chan_spacing:I

    .line 506
    iget v0, p0, Lcom/caf/fmradio/Settings;->chan_spacing:I

    if-gez v0, :cond_0

    .line 507
    iput v2, p0, Lcom/caf/fmradio/Settings;->chan_spacing:I

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/caf/fmradio/Settings;->mBandPreference:Landroid/preference/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/caf/fmradio/Settings;->summaryBandItems:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/caf/fmradio/Settings;->min_freq:I

    int-to-double v2, v2

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Mhz To "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/caf/fmradio/Settings;->max_freq:I

    int-to-double v2, v2

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Mhz)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v0, p0, Lcom/caf/fmradio/Settings;->mChannelSpacingPref:Landroid/preference/ListPreference;

    iget v1, p0, Lcom/caf/fmradio/Settings;->chan_spacing:I

    rsub-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 513
    iget-object v0, p0, Lcom/caf/fmradio/Settings;->mChannelSpacingPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/caf/fmradio/Settings;->chSpacingItems:[Ljava/lang/String;

    iget v2, p0, Lcom/caf/fmradio/Settings;->chan_spacing:I

    rsub-int/lit8 v2, v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v0, p0, Lcom/caf/fmradio/Settings;->mChannelSpacingPref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 515
    iget-object v0, p0, Lcom/caf/fmradio/Settings;->mUserBandMinPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v6}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 516
    iget-object v0, p0, Lcom/caf/fmradio/Settings;->mUserBandMaxPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v6}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 517
    iget-object v0, p0, Lcom/caf/fmradio/Settings;->mUserBandMinPref:Landroid/preference/EditTextPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/caf/fmradio/Settings;->min_freq:I

    int-to-double v2, v2

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Mhz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 518
    iget-object v0, p0, Lcom/caf/fmradio/Settings;->mUserBandMaxPref:Landroid/preference/EditTextPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/caf/fmradio/Settings;->max_freq:I

    int-to-double v2, v2

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Mhz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 525
    :goto_0
    return-void

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/caf/fmradio/Settings;->mBandPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/caf/fmradio/Settings;->summaryBandItems:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v0, p0, Lcom/caf/fmradio/Settings;->mChannelSpacingPref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 522
    iget-object v0, p0, Lcom/caf/fmradio/Settings;->mUserBandMinPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 523
    iget-object v0, p0, Lcom/caf/fmradio/Settings;->mUserBandMaxPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public clearStationList()V
    .locals 4

    .prologue
    .line 249
    const-string v2, "scan_station_list"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/caf/fmradio/Settings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 250
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 251
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 252
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 253
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/caf/fmradio/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 97
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 98
    const-string v1, "rx_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/caf/fmradio/Settings;->mRxMode:Z

    .line 100
    :cond_0
    new-instance v1, Lcom/caf/fmradio/FmSharedPreferences;

    invoke-direct {v1, p0}, Lcom/caf/fmradio/FmSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/caf/fmradio/Settings;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    .line 101
    iget-object v1, p0, Lcom/caf/fmradio/Settings;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    if-eqz v1, :cond_1

    .line 102
    invoke-direct {p0}, Lcom/caf/fmradio/Settings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/caf/fmradio/Settings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 104
    :cond_1
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 419
    packed-switch p1, :pswitch_data_0

    .line 444
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 421
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060053

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060054

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06006d

    new-instance v2, Lcom/caf/fmradio/Settings$2;

    invoke-direct {v2, p0}, Lcom/caf/fmradio/Settings$2;-><init>(Lcom/caf/fmradio/Settings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06006e

    new-instance v2, Lcom/caf/fmradio/Settings$1;

    invoke-direct {v2, p0}, Lcom/caf/fmradio/Settings$1;-><init>(Lcom/caf/fmradio/Settings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 419
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 491
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 492
    invoke-virtual {p0}, Lcom/caf/fmradio/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 493
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    const/4 v1, 0x0

    .line 494
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 497
    :cond_0
    if-eqz v1, :cond_1

    .line 498
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 500
    :cond_1
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 410
    const/4 v0, 0x0

    .line 411
    .local v0, handled:Z
    iget-object v1, p0, Lcom/caf/fmradio/Settings;->mRestoreDefaultPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_0

    .line 412
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/caf/fmradio/Settings;->showDialog(I)V

    .line 414
    :cond_0
    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 478
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 479
    invoke-virtual {p0}, Lcom/caf/fmradio/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 480
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    const/4 v1, 0x0

    .line 481
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 484
    :cond_0
    if-eqz v1, :cond_1

    .line 485
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 487
    :cond_1
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 17
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 257
    const/4 v10, 0x0

    .line 258
    .local v10, mTunedFreq:I
    const/4 v3, 0x0

    .line 259
    .local v3, bStatus:Z
    const-string v13, "regional_band"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 260
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getCurrentListIndex()I

    move-result v5

    .line 261
    .local v5, curListIndex:I
    invoke-static {v5}, Lcom/caf/fmradio/FmSharedPreferences;->getStationList(I)Lcom/caf/fmradio/PresetList;

    move-result-object v4

    .line 262
    .local v4, curList:Lcom/caf/fmradio/PresetList;
    const-string v13, ""

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 263
    .local v12, valueStr:Ljava/lang/String;
    const/4 v9, 0x0

    .line 264
    .local v9, index:I
    if-eqz v12, :cond_0

    .line 265
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/caf/fmradio/Settings;->mBandPreference:Landroid/preference/ListPreference;

    invoke-virtual {v13, v12}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v9

    .line 267
    :cond_0
    if-ltz v9, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/caf/fmradio/Settings;->summaryBandItems:[Ljava/lang/String;

    array-length v13, v13

    if-lt v9, v13, :cond_5

    .line 268
    :cond_1
    const/4 v9, 0x0

    .line 269
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/caf/fmradio/Settings;->mBandPreference:Landroid/preference/ListPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 275
    :goto_0
    const-string v13, "FMRadio"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onSharedPreferenceChanged: Country Change: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-static {v9}, Lcom/caf/fmradio/FmSharedPreferences;->setCountry(I)V

    .line 278
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/caf/fmradio/Settings;->setBandSummary(I)V

    .line 279
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/caf/fmradio/Settings;->sendSettingsChangedIntent(I)V

    .line 280
    if-eqz v4, :cond_2

    .line 281
    invoke-virtual {v4}, Lcom/caf/fmradio/PresetList;->clear()V

    .line 283
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/caf/fmradio/Settings;->clearStationList()V

    .line 394
    .end local v4           #curList:Lcom/caf/fmradio/PresetList;
    .end local v5           #curListIndex:I
    .end local v9           #index:I
    .end local v12           #valueStr:Ljava/lang/String;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/caf/fmradio/Settings;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    if-eqz v13, :cond_4

    .line 395
    if-eqz v3, :cond_19

    .line 396
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/caf/fmradio/Settings;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    invoke-virtual {v13}, Lcom/caf/fmradio/FmSharedPreferences;->Save()V

    .line 407
    :cond_4
    :goto_2
    return-void

    .line 270
    .restart local v4       #curList:Lcom/caf/fmradio/PresetList;
    .restart local v5       #curListIndex:I
    .restart local v9       #index:I
    .restart local v12       #valueStr:Ljava/lang/String;
    :cond_5
    add-int/lit8 v13, v9, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/caf/fmradio/Settings;->summaryBandItems:[Ljava/lang/String;

    array-length v14, v14

    if-ne v13, v14, :cond_6

    .line 271
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/caf/fmradio/Settings;->mChannelSpacingPref:Landroid/preference/ListPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 273
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/caf/fmradio/Settings;->mChannelSpacingPref:Landroid/preference/ListPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 284
    .end local v4           #curList:Lcom/caf/fmradio/PresetList;
    .end local v5           #curListIndex:I
    .end local v9           #index:I
    .end local v12           #valueStr:Ljava/lang/String;
    :cond_7
    const-string v13, "chanl_spacing"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 285
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getCurrentListIndex()I

    move-result v5

    .line 286
    .restart local v5       #curListIndex:I
    invoke-static {v5}, Lcom/caf/fmradio/FmSharedPreferences;->getStationList(I)Lcom/caf/fmradio/PresetList;

    move-result-object v4

    .line 287
    .restart local v4       #curList:Lcom/caf/fmradio/PresetList;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/caf/fmradio/Settings;->mChannelSpacingPref:Landroid/preference/ListPreference;

    invoke-virtual {v13}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 288
    .local v11, valStr:Ljava/lang/String;
    const/4 v9, 0x0

    .line 289
    .restart local v9       #index:I
    if-eqz v11, :cond_8

    .line 290
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/caf/fmradio/Settings;->mChannelSpacingPref:Landroid/preference/ListPreference;

    invoke-virtual {v13, v11}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v9

    .line 292
    :cond_8
    if-ltz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/caf/fmradio/Settings;->chSpacingItems:[Ljava/lang/String;

    array-length v13, v13

    if-lt v9, v13, :cond_a

    .line 293
    :cond_9
    const/4 v9, 0x0

    .line 294
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/caf/fmradio/Settings;->mChannelSpacingPref:Landroid/preference/ListPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 296
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/caf/fmradio/Settings;->mChannelSpacingPref:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/caf/fmradio/Settings;->chSpacingItems:[Ljava/lang/String;

    aget-object v14, v14, v9

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 297
    rsub-int/lit8 v13, v9, 0x2

    invoke-static {v13}, Lcom/caf/fmradio/FmSharedPreferences;->setChSpacing(I)V

    .line 298
    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/caf/fmradio/Settings;->sendSettingsChangedIntent(I)V

    .line 299
    if-eqz v4, :cond_b

    .line 300
    invoke-virtual {v4}, Lcom/caf/fmradio/PresetList;->clear()V

    .line 302
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/caf/fmradio/Settings;->clearStationList()V

    goto/16 :goto_1

    .line 303
    .end local v4           #curList:Lcom/caf/fmradio/PresetList;
    .end local v5           #curListIndex:I
    .end local v9           #index:I
    .end local v11           #valStr:Ljava/lang/String;
    :cond_c
    const-string v13, "user_defined_band_min"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 304
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/caf/fmradio/Settings;->mUserBandMinPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    .line 305
    .restart local v11       #valStr:Ljava/lang/String;
    const-wide/16 v7, 0x0

    .line 307
    .local v7, freq:D
    :try_start_0
    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v13

    const-wide v15, 0x408f400000000000L

    mul-double v7, v13, v15

    .line 312
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getUpperLimit()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/caf/fmradio/Settings;->max_freq:I

    .line 313
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getLowerLimit()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/caf/fmradio/Settings;->min_freq:I

    .line 314
    const-wide/16 v13, 0x0

    cmpl-double v13, v7, v13

    if-lez v13, :cond_d

    move-object/from16 v0, p0

    iget v13, v0, Lcom/caf/fmradio/Settings;->max_freq:I

    int-to-double v13, v13

    cmpg-double v13, v7, v13

    if-gez v13, :cond_d

    const-wide v13, 0x40f28e0000000000L

    cmpl-double v13, v7, v13

    if-ltz v13, :cond_d

    .line 315
    double-to-int v13, v7

    invoke-static {v13}, Lcom/caf/fmradio/FmSharedPreferences;->setLowerLimit(I)V

    .line 316
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/caf/fmradio/Settings;->sendSettingsChangedIntent(I)V

    .line 317
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/caf/fmradio/Settings;->summaryBandItems:[Ljava/lang/String;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/caf/fmradio/Settings;->setBandSummary(I)V

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/caf/fmradio/Settings;->clearStationList()V

    goto/16 :goto_1

    .line 308
    :catch_0
    move-exception v6

    .line 309
    .local v6, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_2

    .line 320
    .end local v6           #e:Ljava/lang/NumberFormatException;
    :cond_d
    const-string v13, "Enter Freq from range 76.0 - 108.0"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/caf/fmradio/Settings;->displayToast(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 322
    .end local v7           #freq:D
    .end local v11           #valStr:Ljava/lang/String;
    :cond_e
    const-string v13, "user_defined_band_max"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 323
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/caf/fmradio/Settings;->mUserBandMaxPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    .line 324
    .restart local v11       #valStr:Ljava/lang/String;
    const-wide/16 v7, 0x0

    .line 326
    .restart local v7       #freq:D
    :try_start_1
    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v13

    const-wide v15, 0x408f400000000000L

    mul-double v7, v13, v15

    .line 331
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getLowerLimit()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/caf/fmradio/Settings;->min_freq:I

    .line 332
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getUpperLimit()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/caf/fmradio/Settings;->max_freq:I

    .line 333
    const-wide/16 v13, 0x0

    cmpl-double v13, v7, v13

    if-lez v13, :cond_f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/caf/fmradio/Settings;->min_freq:I

    int-to-double v13, v13

    cmpl-double v13, v7, v13

    if-lez v13, :cond_f

    const-wide v13, 0x40fa5e0000000000L

    cmpg-double v13, v7, v13

    if-gtz v13, :cond_f

    .line 334
    double-to-int v13, v7

    invoke-static {v13}, Lcom/caf/fmradio/FmSharedPreferences;->setUpperLimit(I)V

    .line 335
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/caf/fmradio/Settings;->sendSettingsChangedIntent(I)V

    .line 336
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/caf/fmradio/Settings;->summaryBandItems:[Ljava/lang/String;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/caf/fmradio/Settings;->setBandSummary(I)V

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/caf/fmradio/Settings;->clearStationList()V

    goto/16 :goto_1

    .line 327
    :catch_1
    move-exception v6

    .line 328
    .restart local v6       #e:Ljava/lang/NumberFormatException;
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_2

    .line 339
    .end local v6           #e:Ljava/lang/NumberFormatException;
    :cond_f
    const-string v13, "Enter Freq from range 76.0 - 108.0"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/caf/fmradio/Settings;->displayToast(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 342
    .end local v7           #freq:D
    .end local v11           #valStr:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/caf/fmradio/Settings;->mRxMode:Z

    if-eqz v13, :cond_3

    .line 343
    const-string v13, "af_checkbox_preference"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 344
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/caf/fmradio/Settings;->mAfPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v13}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 345
    .local v2, bAFAutoSwitch:Z
    const-string v13, "FMRadio"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onSharedPreferenceChanged: Auto AF Enable: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-static {v2}, Lcom/caf/fmradio/FmSharedPreferences;->setAutoAFSwitch(Z)V

    .line 348
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/caf/fmradio/Settings;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    invoke-virtual {v13}, Lcom/caf/fmradio/FmSharedPreferences;->Save()V

    .line 349
    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/caf/fmradio/Settings;->sendSettingsChangedIntent(I)V

    goto/16 :goto_1

    .line 350
    .end local v2           #bAFAutoSwitch:Z
    :cond_11
    const-string v13, "record_duration"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 352
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/caf/fmradio/Settings;->mRecordDurPreference:Landroid/preference/ListPreference;

    invoke-virtual {v13}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 353
    .restart local v12       #valueStr:Ljava/lang/String;
    const/4 v9, 0x0

    .line 354
    .restart local v9       #index:I
    if-eqz v12, :cond_12

    .line 355
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/caf/fmradio/Settings;->mRecordDurPreference:Landroid/preference/ListPreference;

    invoke-virtual {v13, v12}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v9

    .line 357
    :cond_12
    if-ltz v9, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/caf/fmradio/Settings;->summaryRecordItems:[Ljava/lang/String;

    array-length v13, v13

    if-lt v9, v13, :cond_14

    .line 358
    :cond_13
    const/4 v9, 0x0

    .line 359
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/caf/fmradio/Settings;->mRecordDurPreference:Landroid/preference/ListPreference;

    invoke-virtual {v13, v9}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 361
    :cond_14
    const-string v13, "FMRadio"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onSharedPreferenceChanged: recorddur: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/caf/fmradio/Settings;->summaryRecordItems:[Ljava/lang/String;

    aget-object v15, v15, v9

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/caf/fmradio/Settings;->mRecordDurPreference:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/caf/fmradio/Settings;->summaryRecordItems:[Ljava/lang/String;

    aget-object v14, v14, v9

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 364
    invoke-static {v9}, Lcom/caf/fmradio/FmSharedPreferences;->setRecordDuration(I)V

    goto/16 :goto_1

    .line 366
    .end local v9           #index:I
    .end local v12           #valueStr:Ljava/lang/String;
    :cond_15
    const-string v13, "audio_output_mode"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 367
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/caf/fmradio/Settings;->mAudioPreference:Landroid/preference/ListPreference;

    invoke-virtual {v13}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 368
    .restart local v12       #valueStr:Ljava/lang/String;
    const/4 v9, 0x0

    .line 369
    .restart local v9       #index:I
    if-eqz v12, :cond_16

    .line 370
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/caf/fmradio/Settings;->mAudioPreference:Landroid/preference/ListPreference;

    invoke-virtual {v13, v12}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v9

    .line 372
    :cond_16
    const/4 v13, 0x1

    if-eq v9, v13, :cond_17

    .line 373
    if-eqz v9, :cond_17

    .line 374
    const/4 v9, 0x0

    .line 376
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/caf/fmradio/Settings;->mAudioPreference:Landroid/preference/ListPreference;

    invoke-virtual {v13, v9}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 379
    :cond_17
    const-string v13, "FMRadio"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onSharedPreferenceChanged: audiomode: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/caf/fmradio/Settings;->summaryAudioModeItems:[Ljava/lang/String;

    aget-object v15, v15, v9

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/caf/fmradio/Settings;->mAudioPreference:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/caf/fmradio/Settings;->summaryAudioModeItems:[Ljava/lang/String;

    aget-object v14, v14, v9

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 382
    if-nez v9, :cond_18

    .line 384
    const/4 v13, 0x1

    invoke-static {v13}, Lcom/caf/fmradio/FmSharedPreferences;->setAudioOutputMode(Z)V

    .line 389
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/caf/fmradio/Settings;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    invoke-virtual {v13}, Lcom/caf/fmradio/FmSharedPreferences;->Save()V

    .line 390
    const/4 v13, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/caf/fmradio/Settings;->sendSettingsChangedIntent(I)V

    goto/16 :goto_1

    .line 387
    :cond_18
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/caf/fmradio/FmSharedPreferences;->setAudioOutputMode(Z)V

    goto :goto_3

    .line 398
    .end local v9           #index:I
    .end local v12           #valueStr:Ljava/lang/String;
    :cond_19
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getTunedFrequency()I

    move-result v10

    .line 399
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getUpperLimit()I

    move-result v13

    if-gt v10, v13, :cond_1a

    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getLowerLimit()I

    move-result v13

    if-ge v10, v13, :cond_1b

    .line 401
    :cond_1a
    invoke-static {}, Lcom/caf/fmradio/FmSharedPreferences;->getLowerLimit()I

    move-result v13

    invoke-static {v13}, Lcom/caf/fmradio/FmSharedPreferences;->setTunedFrequency(I)V

    .line 404
    :cond_1b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/caf/fmradio/Settings;->mPrefs:Lcom/caf/fmradio/FmSharedPreferences;

    invoke-virtual {v13}, Lcom/caf/fmradio/FmSharedPreferences;->Save()V

    goto/16 :goto_2
.end method
