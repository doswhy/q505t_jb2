.class public Lcom/caf/fmradio/FMTransmitterConfigReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FMTransmitterConfigReceiver.java"


# static fields
.field private static build_id:Ljava/lang/String;

.field private static socinfo:[C

.field private static socinfo_fd:Ljava/io/FileReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0x14

    new-array v0, v0, [C

    sput-object v0, Lcom/caf/fmradio/FMTransmitterConfigReceiver;->socinfo:[C

    .line 47
    const-string v0, "1"

    sput-object v0, Lcom/caf/fmradio/FMTransmitterConfigReceiver;->build_id:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, action:Ljava/lang/String;
    const-string v6, "FMFolderConfigReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    if-eqz v0, :cond_2

    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 55
    const-string v6, "FMFolderConfigReceiver"

    const-string v7, "boot complete intent received"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v6, "ro.fm.transmitter"

    invoke-static {v6, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 58
    .local v4, isFmTransmitterSupported:Z
    const-string v6, "msm7630_surf"

    const-string v7, "ro.board.platform"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 59
    const-string v6, "FMFolderConfigReceiver"

    const-string v7, "this is msm7630_surf"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v6, "/sys/devices/soc0/build_id"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 63
    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/sys/devices/soc0/build_id"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/caf/fmradio/FMTransmitterConfigReceiver;->socinfo_fd:Ljava/io/FileReader;

    .line 67
    :goto_0
    sget-object v6, Lcom/caf/fmradio/FMTransmitterConfigReceiver;->socinfo_fd:Ljava/io/FileReader;

    sget-object v7, Lcom/caf/fmradio/FMTransmitterConfigReceiver;->socinfo:[C

    const/4 v8, 0x0

    const/16 v9, 0x14

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/FileReader;->read([CII)I

    .line 68
    sget-object v6, Lcom/caf/fmradio/FMTransmitterConfigReceiver;->socinfo_fd:Ljava/io/FileReader;

    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v2           #f:Ljava/io/File;
    :goto_1
    const-string v6, "FMFolderConfigReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "socinfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/caf/fmradio/FMTransmitterConfigReceiver;->socinfo:[C

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/caf/fmradio/FMTransmitterConfigReceiver;->socinfo:[C

    const/16 v8, 0x11

    invoke-direct {v6, v7, v8, v10}, Ljava/lang/String;-><init>([CII)V

    sput-object v6, Lcom/caf/fmradio/FMTransmitterConfigReceiver;->build_id:Ljava/lang/String;

    .line 74
    const-string v6, "FMFolderConfigReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "build_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/caf/fmradio/FMTransmitterConfigReceiver;->build_id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    if-eqz v4, :cond_1

    sget-object v6, Lcom/caf/fmradio/FMTransmitterConfigReceiver;->build_id:Ljava/lang/String;

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 77
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 78
    .local v5, pManager:Landroid/content/pm/PackageManager;
    if-eqz v5, :cond_2

    .line 79
    const-string v6, "FMFolderConfigReceiver"

    const-string v7, "disableing the FM Transmitter"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v3, Landroid/content/ComponentName;

    const-string v6, "com.caf.fmradio"

    const-string v7, "com.caf.fmradio.FMTransmitterActivity"

    invoke-direct {v3, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .local v3, fmTransmitter:Landroid/content/ComponentName;
    const/4 v6, 0x2

    invoke-virtual {v5, v3, v6, v10}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 86
    .end local v3           #fmTransmitter:Landroid/content/ComponentName;
    .end local v4           #isFmTransmitterSupported:Z
    .end local v5           #pManager:Landroid/content/pm/PackageManager;
    :cond_2
    return-void

    .line 65
    .restart local v2       #f:Ljava/io/File;
    .restart local v4       #isFmTransmitterSupported:Z
    :cond_3
    :try_start_1
    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/sys/devices/system/soc/soc0/build_id"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/caf/fmradio/FMTransmitterConfigReceiver;->socinfo_fd:Ljava/io/FileReader;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 69
    .end local v2           #f:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 70
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "FMFolderConfigReceiver"

    const-string v7, "Exception in FileReader"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
