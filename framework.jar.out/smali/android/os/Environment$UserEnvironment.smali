.class public Landroid/os/Environment$UserEnvironment;
.super Ljava/lang/Object;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Environment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserEnvironment"
.end annotation


# instance fields
.field private mExternalStorage:Ljava/io/File;

.field private mExternalStorageAndroidData:Ljava/io/File;

.field private mExternalStorageAndroidMedia:Ljava/io/File;

.field private mExternalStorageAndroidObb:Ljava/io/File;

.field private final mMediaStorage:Ljava/io/File;

.field private rawExternalStorage:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 8
    .parameter "userId"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 126
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const-string v2, "EXTERNAL_STORAGE"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/Environment$UserEnvironment;->rawExternalStorage:Ljava/lang/String;

    .line 129
    const-string v2, "EMULATED_STORAGE_TARGET"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, rawEmulatedStorageTarget:Ljava/lang/String;
    const-string v2, "MEDIA_STORAGE"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, rawMediaStorage:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    const-string v1, "/data/media"

    .line 151
    :cond_0
    iget-object v2, p0, Landroid/os/Environment$UserEnvironment;->rawExternalStorage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    const-string v2, "Environment"

    const-string v3, "EXTERNAL_STORAGE undefined; falling back to default"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v2, "/storage/sdcard0"

    iput-object v2, p0, Landroid/os/Environment$UserEnvironment;->rawExternalStorage:Ljava/lang/String;

    .line 157
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/os/Environment$UserEnvironment;->rawExternalStorage:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorage:Ljava/io/File;

    .line 159
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/os/Environment$UserEnvironment;->mMediaStorage:Ljava/io/File;

    .line 162
    iget-object v2, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorage:Ljava/io/File;

    new-array v3, v7, [Ljava/lang/String;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_ANDROID:Ljava/lang/String;

    aput-object v4, v3, v5

    const-string/jumbo v4, "obb"

    aput-object v4, v3, v6

    #calls: Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    invoke-static {v2, v3}, Landroid/os/Environment;->access$000(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidObb:Ljava/io/File;

    .line 163
    iget-object v2, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorage:Ljava/io/File;

    new-array v3, v7, [Ljava/lang/String;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_ANDROID:Ljava/lang/String;

    aput-object v4, v3, v5

    const-string v4, "data"

    aput-object v4, v3, v6

    #calls: Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    invoke-static {v2, v3}, Landroid/os/Environment;->access$000(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidData:Ljava/io/File;

    .line 164
    iget-object v2, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorage:Ljava/io/File;

    new-array v3, v7, [Ljava/lang/String;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_ANDROID:Ljava/lang/String;

    aput-object v4, v3, v5

    const-string/jumbo v4, "media"

    aput-object v4, v3, v6

    #calls: Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    invoke-static {v2, v3}, Landroid/os/Environment;->access$000(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidMedia:Ljava/io/File;

    .line 165
    return-void
.end method

.method static synthetic access$100(Landroid/os/Environment$UserEnvironment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Landroid/os/Environment$UserEnvironment;->updatePrimaryVolume(Ljava/lang/String;)V

    return-void
.end method

.method private checkPrimaryVolumeRemoved()V
    .locals 5

    .prologue
    .line 217
    const-string v3, "EXTERNAL_STORAGE"

    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/os/Environment$UserEnvironment;->rawExternalStorage:Ljava/lang/String;

    .line 218
    iget-object v3, p0, Landroid/os/Environment$UserEnvironment;->rawExternalStorage:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/os/Environment$UserEnvironment;->updatePrimaryVolume(Ljava/lang/String;)V

    .line 221
    :try_start_0
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 223
    .local v1, mountService:Landroid/os/storage/IMountService;
    if-eqz v1, :cond_2

    .line 225
    iget-object v3, p0, Landroid/os/Environment$UserEnvironment;->rawExternalStorage:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, state:Ljava/lang/String;
    const-string/jumbo v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "mounted_ro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 230
    iget-object v3, p0, Landroid/os/Environment$UserEnvironment;->rawExternalStorage:Ljava/lang/String;

    const-string v4, "/storage/sdcard0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/os/Environment$UserEnvironment;->rawExternalStorage:Ljava/lang/String;

    const-string v4, "/mnt/sdcard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 231
    :cond_0
    const-string v3, "/storage/sdcard1"

    iput-object v3, p0, Landroid/os/Environment$UserEnvironment;->rawExternalStorage:Ljava/lang/String;

    .line 234
    :cond_1
    :goto_0
    iget-object v3, p0, Landroid/os/Environment$UserEnvironment;->rawExternalStorage:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/os/Environment$UserEnvironment;->updatePrimaryVolume(Ljava/lang/String;)V

    .line 235
    iget-object v3, p0, Landroid/os/Environment$UserEnvironment;->rawExternalStorage:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->setPrimaryVolume(Ljava/lang/String;)V

    .line 241
    .end local v1           #mountService:Landroid/os/storage/IMountService;
    .end local v2           #state:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 232
    .restart local v1       #mountService:Landroid/os/storage/IMountService;
    .restart local v2       #state:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Landroid/os/Environment$UserEnvironment;->rawExternalStorage:Ljava/lang/String;

    const-string v4, "/storage/sdcard1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/os/Environment$UserEnvironment;->rawExternalStorage:Ljava/lang/String;

    const-string v4, "/mnt/sdcard2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 233
    :cond_4
    const-string v3, "/storage/sdcard0"

    iput-object v3, p0, Landroid/os/Environment$UserEnvironment;->rawExternalStorage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    .end local v1           #mountService:Landroid/os/storage/IMountService;
    .end local v2           #state:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Environment"

    const-string v4, "couldn\'t talk to MountService"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updatePrimaryVolume(Ljava/lang/String;)V
    .locals 6
    .parameter "volumePath"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 246
    if-nez p1, :cond_0

    .line 254
    :goto_0
    return-void

    .line 248
    :cond_0
    iput-object p1, p0, Landroid/os/Environment$UserEnvironment;->rawExternalStorage:Ljava/lang/String;

    .line 250
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/Environment$UserEnvironment;->rawExternalStorage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorage:Ljava/io/File;

    .line 251
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorage:Ljava/io/File;

    new-array v1, v5, [Ljava/lang/String;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_ANDROID:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string/jumbo v2, "obb"

    aput-object v2, v1, v4

    #calls: Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    invoke-static {v0, v1}, Landroid/os/Environment;->access$000(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidObb:Ljava/io/File;

    .line 252
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorage:Ljava/io/File;

    new-array v1, v5, [Ljava/lang/String;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_ANDROID:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "data"

    aput-object v2, v1, v4

    #calls: Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    invoke-static {v0, v1}, Landroid/os/Environment;->access$000(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidData:Ljava/io/File;

    .line 253
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorage:Ljava/io/File;

    new-array v1, v5, [Ljava/lang/String;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_ANDROID:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string/jumbo v2, "media"

    aput-object v2, v1, v4

    #calls: Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    invoke-static {v0, v1}, Landroid/os/Environment;->access$000(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidMedia:Ljava/io/File;

    goto :goto_0
.end method


# virtual methods
.method public getExternalStorageAndroidDataDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0}, Landroid/os/Environment$UserEnvironment;->checkPrimaryVolumeRemoved()V

    .line 184
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidData:Ljava/io/File;

    return-object v0
.end method

.method public getExternalStorageAppCacheDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 208
    invoke-direct {p0}, Landroid/os/Environment$UserEnvironment;->checkPrimaryVolumeRemoved()V

    .line 209
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidData:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getExternalStorageAppDataDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 188
    invoke-direct {p0}, Landroid/os/Environment$UserEnvironment;->checkPrimaryVolumeRemoved()V

    .line 189
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidData:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getExternalStorageAppFilesDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 203
    invoke-direct {p0}, Landroid/os/Environment$UserEnvironment;->checkPrimaryVolumeRemoved()V

    .line 204
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidData:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "files"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getExternalStorageAppMediaDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 193
    invoke-direct {p0}, Landroid/os/Environment$UserEnvironment;->checkPrimaryVolumeRemoved()V

    .line 194
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidMedia:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getExternalStorageAppObbDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 198
    invoke-direct {p0}, Landroid/os/Environment$UserEnvironment;->checkPrimaryVolumeRemoved()V

    .line 199
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidObb:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getExternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0}, Landroid/os/Environment$UserEnvironment;->checkPrimaryVolumeRemoved()V

    .line 169
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorage:Ljava/io/File;

    return-object v0
.end method

.method public getExternalStorageObbDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Landroid/os/Environment$UserEnvironment;->checkPrimaryVolumeRemoved()V

    .line 174
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidObb:Ljava/io/File;

    return-object v0
.end method

.method public getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "type"

    .prologue
    .line 178
    invoke-direct {p0}, Landroid/os/Environment$UserEnvironment;->checkPrimaryVolumeRemoved()V

    .line 179
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorage:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getMediaStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mMediaStorage:Ljava/io/File;

    return-object v0
.end method

.method public getSecondaryExternalStorageDirectory()Ljava/io/File;
    .locals 3

    .prologue
    #calls: Landroid/os/Environment;->getSecondaryVolume()Landroid/os/storage/StorageVolume;
    invoke-static {}, Landroid/os/Environment;->access$invoke-getSecondaryVolume-32cf99()Landroid/os/storage/StorageVolume;

    move-result-object v0

    .local v0, SecondaryVolume:Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
