.class public Lcom/android/server/BatterySaver;
.super Ljava/lang/Object;
.source "BatterySaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatterySaver$EventReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlarmManager"


# instance fields
.field private chargeState:I

.field private length_time1:J

.field private mAms:Lcom/android/server/AlarmManagerService;

.field private mEventReceiver:Lcom/android/server/BatterySaver$EventReceiver;

.field private mode:I

.field private moperation:Landroid/app/PendingIntent;

.field private noWakeX:I

.field private pm:Landroid/os/PowerManager;

.field private powerState:I

.field private screenState:I

.field private timerX:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 214
    const-string v0, "BatterySaver"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 3
    .parameter "ams"

    .prologue
    .line 197
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/BatterySaver;->timerX:I

    .line 200
    const/16 v0, 0x65

    iput v0, p0, Lcom/android/server/BatterySaver;->noWakeX:I

    .line 201
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/BatterySaver;->screenState:I

    .line 202
    const/16 v0, 0xd3

    iput v0, p0, Lcom/android/server/BatterySaver;->mode:I

    .line 203
    invoke-direct {p0}, Lcom/android/server/BatterySaver;->parserConfig()V

    .line 204
    iget v0, p0, Lcom/android/server/BatterySaver;->mode:I

    iget v1, p0, Lcom/android/server/BatterySaver;->timerX:I

    iget v2, p0, Lcom/android/server/BatterySaver;->noWakeX:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/BatterySaver;->nativeSetRate(III)V

    .line 206
    iput-object p1, p0, Lcom/android/server/BatterySaver;->mAms:Lcom/android/server/AlarmManagerService;

    .line 207
    iget-object v0, p1, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/BatterySaver;->pm:Landroid/os/PowerManager;

    .line 208
    new-instance v0, Lcom/android/server/BatterySaver$EventReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/BatterySaver$EventReceiver;-><init>(Lcom/android/server/BatterySaver;)V

    iput-object v0, p0, Lcom/android/server/BatterySaver;->mEventReceiver:Lcom/android/server/BatterySaver$EventReceiver;

    .line 210
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/BatterySaver;)Lcom/android/server/AlarmManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/server/BatterySaver;->mAms:Lcom/android/server/AlarmManagerService;

    return-object v0
.end method

.method private getAlarmTimeLong(IJ)J
    .locals 2
    .parameter "type"
    .parameter "triggerAtTime"

    .prologue
    .line 81
    packed-switch p1, :pswitch_data_0

    .line 89
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 84
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, p2, v0

    goto :goto_0

    .line 87
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v0, p2, v0

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private needToNative(JLandroid/app/PendingIntent;)Z
    .locals 2
    .parameter "interval"
    .parameter "operation"

    .prologue
    .line 72
    invoke-virtual {p3}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parserConfig()V
    .locals 7

    .prologue
    .line 47
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v4, "/data/batterysaver/config.dat"

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 49
    .local v2, localFileInputStream:Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 52
    .local v1, localBufferedReader:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, str:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 64
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 69
    .end local v1           #localBufferedReader:Ljava/io/BufferedReader;
    .end local v2           #localFileInputStream:Ljava/io/FileInputStream;
    .end local v3           #str:Ljava/lang/String;
    :goto_1
    return-void

    .line 55
    .restart local v1       #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v2       #localFileInputStream:Ljava/io/FileInputStream;
    .restart local v3       #str:Ljava/lang/String;
    :cond_0
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " fileline:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, arrayOfString:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/BatterySaver;->mode:I

    .line 58
    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/BatterySaver;->timerX:I

    .line 59
    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/BatterySaver;->noWakeX:I

    .line 61
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/BatterySaver;->mode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/BatterySaver;->timerX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/BatterySaver;->noWakeX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    .end local v0           #arrayOfString:[Ljava/lang/String;
    .end local v1           #localBufferedReader:Ljava/io/BufferedReader;
    .end local v2           #localFileInputStream:Ljava/io/FileInputStream;
    .end local v3           #str:Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private setNowTime()V
    .locals 4

    .prologue
    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 182
    .local v2, R_time:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 183
    .local v0, E_time:J
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/BatterySaver;->naviteSetParm(JJ)V

    .line 184
    return-void
.end method


# virtual methods
.method public native nativeSetRate(III)V
.end method

.method public native nativeSetScreen(I)V
.end method

.method public native naviteSetParm(JJ)V
.end method

.method public native naviteSetRepeating(IJJIJJLandroid/app/PendingIntent;)I
.end method

.method public setAlarm(IJJJLandroid/app/PendingIntent;)V
    .locals 11
    .parameter "type"
    .parameter "triggerAtTime"
    .parameter "interval"
    .parameter "interval_old"
    .parameter "operation"

    .prologue
    .line 162
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BatterySaver;->getAlarmTimeLong(IJ)J

    move-result-wide v3

    .line 164
    .local v3, length_time:J
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " delay: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/BatterySaver;->length_time1:J

    sub-long v7, v3, v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "interval:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide v0, p4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {v2}, Lcom/android/server/AlarmManagerService$Alarm;-><init>()V

    .local v2, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iput p1, v2, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iput-wide p2, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide p4, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v0, p6

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->intervalAlternative:J

    move-object/from16 v0, p8

    iput-object v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-wide v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->intervalAlternative:J

    cmp-long v5, v5, p4

    if-nez v5, :cond_0

    const-wide/16 v5, 0x0

    iput-wide v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->intervalAlternative:J

    :cond_0
    iget-object v5, p0, Lcom/android/server/BatterySaver;->mAms:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v5, v2}, Lcom/android/server/AlarmManagerService;->addAlarming(Lcom/android/server/AlarmManagerService$Alarm;)V

    return-void
.end method

.method public setRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 17
    .parameter "type"
    .parameter "triggerAtTime"
    .parameter "interval"
    .parameter "operation"

    .prologue
    .line 96
    if-nez p6, :cond_0

    .line 97
    const-string v4, "AlarmManager"

    const-string v5, "set/setRepeating ignored because there is no intent"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 102
    .local v16, uid:I
    invoke-static/range {v16 .. v16}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v13

    .line 103
    .local v13, Txbyte:J
    invoke-static/range {v16 .. v16}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v11

    .line 104
    .local v11, Rxbyte:J
    const-wide/16 v4, 0x0

    cmp-long v4, v13, v4

    if-gtz v4, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, v11, v4

    if-lez v4, :cond_2

    .line 105
    :cond_1
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  data pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p6 .. p6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Tx:= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Rx:= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_2
    invoke-direct/range {p0 .. p3}, Lcom/android/server/BatterySaver;->getAlarmTimeLong(IJ)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/BatterySaver;->length_time1:J

    .line 110
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/BatterySaver;->mode:I

    packed-switch v4, :pswitch_data_0

    .line 129
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/BatterySaver;->mode:I

    const/16 v5, 0xcc

    if-le v4, v5, :cond_5

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/BatterySaver;->needToNative(JLandroid/app/PendingIntent;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 130
    const-wide/16 v10, 0x0

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v12, p6

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/BatterySaver;->setAlarm(IJJJLandroid/app/PendingIntent;)V

    .line 131
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p6 .. p6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " time lenght:= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/BatterySaver;->length_time1:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "s triggerAtTime "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " interval: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not navive"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 112
    :pswitch_0
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p6 .. p6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " time lenght:= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/BatterySaver;->length_time1:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "s triggerAtTime "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " interval: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " opened"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-wide/16 v10, 0x0

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v12, p6

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/BatterySaver;->setAlarm(IJJJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 119
    :pswitch_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/BatterySaver;->needToNative(JLandroid/app/PendingIntent;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/BatterySaver;->screenState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 120
    :cond_3
    const-wide/16 v10, 0x0

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v12, p6

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/BatterySaver;->setAlarm(IJJJLandroid/app/PendingIntent;)V

    .line 122
    :cond_4
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p6 .. p6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " time lenght:= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/BatterySaver;->length_time1:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "s triggerAtTime "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " interval: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " closed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 138
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatterySaver;->setNowTime()V

    .line 139
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BatterySaver;->moperation:Landroid/app/PendingIntent;

    .line 140
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p6 .. p6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " time lenght:= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/BatterySaver;->length_time1:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "s triggerAtTime "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " interval: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual/range {p6 .. p6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    .local v10, hash:I
    move-object/from16 v4, p0

    move/from16 v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v15, p6

    .line 146
    invoke-virtual/range {v4 .. v15}, Lcom/android/server/BatterySaver;->naviteSetRepeating(IJJIJJLandroid/app/PendingIntent;)I

    goto/16 :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setScreen()V
    .locals 2

    .prologue
    .line 187
    iget-object v1, p0, Lcom/android/server/BatterySaver;->pm:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 188
    .local v0, state:Z
    if-eqz v0, :cond_0

    .line 189
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/BatterySaver;->screenState:I

    .line 194
    :goto_0
    iget v1, p0, Lcom/android/server/BatterySaver;->screenState:I

    invoke-virtual {p0, v1}, Lcom/android/server/BatterySaver;->nativeSetScreen(I)V

    .line 195
    return-void

    .line 191
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/BatterySaver;->screenState:I

    goto :goto_0
.end method
