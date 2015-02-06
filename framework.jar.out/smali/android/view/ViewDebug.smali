.class public Landroid/view/ViewDebug;
.super Ljava/lang/Object;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewDebug$ViewOperation;,
        Landroid/view/ViewDebug$RecyclerTraceType;,
        Landroid/view/ViewDebug$HierarchyTraceType;,
        Landroid/view/ViewDebug$HierarchyHandler;,
        Landroid/view/ViewDebug$CapturedViewProperty;,
        Landroid/view/ViewDebug$FlagToString;,
        Landroid/view/ViewDebug$IntToString;,
        Landroid/view/ViewDebug$ExportedProperty;
    }
.end annotation


# static fields
.field private static final CAPTURE_TIMEOUT:I = 0xfa0

.field public static final DEBUG_DRAG:Z = false

.field private static final REMOTE_COMMAND_CAPTURE:Ljava/lang/String; = "CAPTURE"

.field private static final REMOTE_COMMAND_CAPTURE_LAYERS:Ljava/lang/String; = "CAPTURE_LAYERS"

.field private static final REMOTE_COMMAND_DUMP:Ljava/lang/String; = "DUMP"

.field private static final REMOTE_COMMAND_DUMP2:Ljava/lang/String; = "dump2"

.field private static final REMOTE_COMMAND_GETSPECVIEWINFO:Ljava/lang/String; = "getSpecViewInfo"

.field private static final REMOTE_COMMAND_GETSTR:Ljava/lang/String; = "getstr"

.field private static final REMOTE_COMMAND_GETTEXTCENTER:Ljava/lang/String; = "getTextCenter"

.field private static final REMOTE_COMMAND_GETVIEWCENTER:Ljava/lang/String; = "getViewCenter"

.field private static final REMOTE_COMMAND_GETVIEWINFOS:Ljava/lang/String; = "getViewInfos"

.field private static final REMOTE_COMMAND_INVALIDATE:Ljava/lang/String; = "INVALIDATE"

.field private static final REMOTE_COMMAND_OUTPUT_DISPLAYLIST:Ljava/lang/String; = "OUTPUT_DISPLAYLIST"

.field private static final REMOTE_COMMAND_REQUEST_LAYOUT:Ljava/lang/String; = "REQUEST_LAYOUT"

.field private static final REMOTE_COMMAND_SEARCHSPECTEXT:Ljava/lang/String; = "searchSpecText"

.field private static final REMOTE_COMMAND_TAKESCREENSHOT:Ljava/lang/String; = "takeScreenshot"

.field private static final REMOTE_PROFILE:Ljava/lang/String; = "PROFILE"

.field public static final TRACE_HIERARCHY:Z = false
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TRACE_RECYCLER:Z = false
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final UnknownRes:Ljava/lang/String; = "Unknown"

.field private static mCapturedViewFieldsForClasses:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static mCapturedViewMethodsForClasses:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static sAnnotations:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/reflect/AccessibleObject;",
            "Landroid/view/ViewDebug$ExportedProperty;",
            ">;"
        }
    .end annotation
.end field

.field private static sFieldsForClasses:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static sMethodsForClasses:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final tag:Ljava/lang/String; = "EtViewDebug"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 320
    sput-object v0, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    .line 321
    sput-object v0, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 672
    return-void
.end method

.method private static callMethodOnAppropriateTheadBlocking(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter "method"
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 1053
    instance-of v6, p1, Landroid/view/View;

    if-nez v6, :cond_0

    .line 1054
    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1074
    :goto_0
    return-object v6

    :cond_0
    move-object v5, p1

    .line 1057
    check-cast v5, Landroid/view/View;

    .line 1058
    .local v5, view:Landroid/view/View;
    new-instance v0, Landroid/view/ViewDebug$7;

    invoke-direct {v0, p0, v5}, Landroid/view/ViewDebug$7;-><init>(Ljava/lang/reflect/Method;Landroid/view/View;)V

    .line 1064
    .local v0, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/concurrent/FutureTask;

    invoke-direct {v2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1066
    .local v2, future:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<Ljava/lang/Object;>;"
    invoke-virtual {v5}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 1068
    .local v3, handler:Landroid/os/Handler;
    if-nez v3, :cond_1

    .line 1069
    new-instance v3, Landroid/os/Handler;

    .end local v3           #handler:Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1071
    .restart local v3       #handler:Landroid/os/Handler;
    :cond_1
    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1074
    :goto_1
    const-wide/16 v6, 0xfa0

    :try_start_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7, v8}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    goto :goto_0

    .line 1075
    :catch_0
    move-exception v1

    .line 1076
    .local v1, e:Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    .line 1077
    .local v4, t:Ljava/lang/Throwable;
    instance-of v6, v4, Ljava/lang/IllegalAccessException;

    if-eqz v6, :cond_2

    .line 1078
    check-cast v4, Ljava/lang/IllegalAccessException;

    .end local v4           #t:Ljava/lang/Throwable;
    throw v4

    .line 1080
    .restart local v4       #t:Ljava/lang/Throwable;
    :cond_2
    instance-of v6, v4, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v6, :cond_3

    .line 1081
    check-cast v4, Ljava/lang/reflect/InvocationTargetException;

    .end local v4           #t:Ljava/lang/Throwable;
    throw v4

    .line 1083
    .restart local v4       #t:Ljava/lang/Throwable;
    :cond_3
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Unexpected exception"

    invoke-direct {v6, v7, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1086
    .end local v1           #e:Ljava/util/concurrent/ExecutionException;
    .end local v4           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 1087
    .local v1, e:Ljava/util/concurrent/CancellationException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Unexpected cancellation exception"

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1084
    .end local v1           #e:Ljava/util/concurrent/CancellationException;
    :catch_2
    move-exception v6

    goto :goto_1
.end method

.method public static capture(Landroid/view/View;Ljava/io/OutputStream;Landroid/view/View;)V
    .locals 6
    .parameter "root"
    .parameter "clientStream"
    .parameter "captureView"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 800
    const/4 v3, 0x0

    invoke-static {p2, v3}, Landroid/view/ViewDebug;->performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 802
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 803
    const-string v3, "View"

    const-string v4, "Failed to create capture bitmap!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v5, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 810
    :cond_0
    const/4 v1, 0x0

    .line 812
    .local v1, out:Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    const v3, 0x8000

    invoke-direct {v2, p1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 813
    .end local v1           #out:Ljava/io/BufferedOutputStream;
    .local v2, out:Ljava/io/BufferedOutputStream;
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 814
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 816
    if-eqz v2, :cond_1

    .line 817
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 819
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 821
    return-void

    .line 816
    .end local v2           #out:Ljava/io/BufferedOutputStream;
    .restart local v1       #out:Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v3

    :goto_0
    if-eqz v1, :cond_2

    .line 817
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 819
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    throw v3

    .line 816
    .end local v1           #out:Ljava/io/BufferedOutputStream;
    .restart local v2       #out:Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedOutputStream;
    .restart local v1       #out:Ljava/io/BufferedOutputStream;
    goto :goto_0
.end method

.method private static capture(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "root"
    .parameter "clientStream"
    .parameter "parameter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 793
    invoke-static {p0, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 794
    .local v0, captureView:Landroid/view/View;
    invoke-static {p0, p1, v0}, Landroid/view/ViewDebug;->capture(Landroid/view/View;Ljava/io/OutputStream;Landroid/view/View;)V

    .line 795
    return-void
.end method

.method public static captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V
    .locals 3
    .parameter "root"
    .parameter "clientStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 717
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    .local v0, outRect:Landroid/graphics/Rect;
    :try_start_1
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowSession;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 724
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 725
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 727
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    .line 729
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 731
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    .line 733
    return-void

    .line 731
    .end local v0           #outRect:Landroid/graphics/Rect;
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    throw v1

    .line 720
    .restart local v0       #outRect:Landroid/graphics/Rect;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V
    .locals 13
    .parameter "view"
    .parameter "clientStream"
    .parameter "visible"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 738
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_3

    if-eqz p2, :cond_3

    move v6, v9

    .line 740
    .local v6, localVisible:Z
    :goto_0
    iget v11, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v11, v11, 0x80

    const/16 v12, 0x80

    if-eq v11, v12, :cond_2

    .line 741
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v5

    .line 742
    .local v5, id:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    .line 743
    .local v7, name:Ljava/lang/String;
    const/4 v11, -0x1

    if-eq v5, v11, :cond_0

    .line 744
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v5}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 747
    :cond_0
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 748
    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 749
    if-eqz v6, :cond_4

    move v11, v9

    :goto_1
    invoke-virtual {p1, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 751
    const/4 v11, 0x2

    new-array v8, v11, [I

    .line 753
    .local v8, position:[I
    invoke-virtual {p0, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 755
    aget v10, v8, v10

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 756
    aget v10, v8, v9

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 757
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 759
    invoke-static {p0, v9}, Landroid/view/ViewDebug;->performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 760
    .local v1, b:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 761
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x2

    invoke-direct {v0, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 763
    .local v0, arrayOut:Ljava/io/ByteArrayOutputStream;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {v1, v9, v10, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 764
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 765
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 767
    .end local v0           #arrayOut:Ljava/io/ByteArrayOutputStream;
    :cond_1
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 770
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v5           #id:I
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #position:[I
    :cond_2
    instance-of v9, p0, Landroid/view/ViewGroup;

    if-eqz v9, :cond_5

    move-object v3, p0

    .line 771
    check-cast v3, Landroid/view/ViewGroup;

    .line 772
    .local v3, group:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 774
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v2, :cond_5

    .line 775
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9, p1, v6}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    .line 774
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v2           #count:I
    .end local v3           #group:Landroid/view/ViewGroup;
    .end local v4           #i:I
    .end local v6           #localVisible:Z
    :cond_3
    move v6, v10

    .line 738
    goto/16 :goto_0

    .restart local v5       #id:I
    .restart local v6       #localVisible:Z
    .restart local v7       #name:Ljava/lang/String;
    :cond_4
    move v11, v10

    .line 749
    goto :goto_1

    .line 778
    .end local v5           #id:I
    .end local v7           #name:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private static capturedViewExportFields(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "obj"
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1456
    .local p1, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 1457
    const-string/jumbo v7, "null"

    .line 1485
    :goto_0
    return-object v7

    .line 1460
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1461
    .local v5, sb:Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/view/ViewDebug;->capturedViewGetPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1463
    .local v3, fields:[Ljava/lang/reflect/Field;
    array-length v0, v3

    .line 1464
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 1465
    aget-object v1, v3, v4

    .line 1467
    .local v1, field:Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1469
    .local v2, fieldValue:Ljava/lang/Object;
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1470
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1473
    if-eqz v2, :cond_1

    .line 1474
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\n"

    const-string v9, "\\n"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1475
    .local v6, value:Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    .end local v6           #value:Ljava/lang/String;
    :goto_2
    const/16 v7, 0x20

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1464
    .end local v2           #fieldValue:Ljava/lang/Object;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1477
    .restart local v2       #fieldValue:Ljava/lang/Object;
    :cond_1
    const-string/jumbo v7, "null"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1480
    .end local v2           #fieldValue:Ljava/lang/Object;
    :catch_0
    move-exception v7

    goto :goto_3

    .line 1485
    .end local v1           #field:Ljava/lang/reflect/Field;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private static capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "obj"
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1413
    .local p1, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 1414
    const-string/jumbo v9, "null"

    .line 1452
    :goto_0
    return-object v9

    .line 1417
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1418
    .local v7, sb:Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/view/ViewDebug;->capturedViewGetPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1420
    .local v4, methods:[Ljava/lang/reflect/Method;
    array-length v0, v4

    .line 1421
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1422
    aget-object v2, v4, v1

    .line 1424
    .local v2, method:Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    :try_start_0
    check-cast v9, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1425
    .local v3, methodValue:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    .line 1427
    .local v6, returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v9, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Landroid/view/ViewDebug$CapturedViewProperty;

    .line 1428
    .local v5, property:Landroid/view/ViewDebug$CapturedViewProperty;
    invoke-interface {v5}, Landroid/view/ViewDebug$CapturedViewProperty;->retrieveReturn()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1430
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v6, v9}, Landroid/view/ViewDebug;->capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1421
    .end local v3           #methodValue:Ljava/lang/Object;
    .end local v5           #property:Landroid/view/ViewDebug$CapturedViewProperty;
    .end local v6           #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1432
    .restart local v3       #methodValue:Ljava/lang/Object;
    .restart local v5       #property:Landroid/view/ViewDebug$CapturedViewProperty;
    .restart local v6       #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1433
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1434
    const-string v9, "()="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1436
    if-eqz v3, :cond_2

    .line 1437
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\n"

    const-string v11, "\\n"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 1438
    .local v8, value:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1442
    .end local v8           #value:Ljava/lang/String;
    :goto_3
    const-string v9, "; "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1444
    .end local v3           #methodValue:Ljava/lang/Object;
    .end local v5           #property:Landroid/view/ViewDebug$CapturedViewProperty;
    .end local v6           #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v9

    goto :goto_2

    .line 1440
    .restart local v3       #methodValue:Ljava/lang/Object;
    .restart local v5       #property:Landroid/view/ViewDebug$CapturedViewProperty;
    .restart local v6       #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    const-string/jumbo v9, "null"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 1447
    .end local v3           #methodValue:Ljava/lang/Object;
    .end local v5           #property:Landroid/view/ViewDebug$CapturedViewProperty;
    .end local v6           #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_1
    move-exception v9

    goto :goto_2

    .line 1452
    .end local v2           #method:Ljava/lang/reflect/Method;
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method

.method private static capturedViewGetPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 1351
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v7, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    if-nez v7, :cond_0

    .line 1352
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    .line 1354
    :cond_0
    sget-object v6, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    .line 1356
    .local v6, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Field;

    .line 1357
    .local v2, fields:[Ljava/lang/reflect/Field;
    if-eqz v2, :cond_1

    move-object v3, v2

    .line 1376
    .end local v2           #fields:[Ljava/lang/reflect/Field;
    .local v3, fields:[Ljava/lang/reflect/Field;
    :goto_0
    return-object v3

    .line 1361
    .end local v3           #fields:[Ljava/lang/reflect/Field;
    .restart local v2       #fields:[Ljava/lang/reflect/Field;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1362
    .local v4, foundFields:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1364
    array-length v0, v2

    .line 1365
    .local v0, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v0, :cond_3

    .line 1366
    aget-object v1, v2, v5

    .line 1367
    .local v1, field:Ljava/lang/reflect/Field;
    const-class v7, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1368
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1369
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1365
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1373
    .end local v1           #field:Ljava/lang/reflect/Field;
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Field;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #fields:[Ljava/lang/reflect/Field;
    check-cast v2, [Ljava/lang/reflect/Field;

    .line 1374
    .restart local v2       #fields:[Ljava/lang/reflect/Field;
    invoke-virtual {v6, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    .line 1376
    .end local v2           #fields:[Ljava/lang/reflect/Field;
    .restart local v3       #fields:[Ljava/lang/reflect/Field;
    goto :goto_0
.end method

.method private static capturedViewGetPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 1380
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v7, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    if-nez v7, :cond_0

    .line 1381
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    .line 1383
    :cond_0
    sget-object v3, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    .line 1385
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Method;>;"
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/reflect/Method;

    .line 1386
    .local v5, methods:[Ljava/lang/reflect/Method;
    if-eqz v5, :cond_1

    move-object v6, v5

    .line 1407
    .end local v5           #methods:[Ljava/lang/reflect/Method;
    .local v6, methods:[Ljava/lang/reflect/Method;
    :goto_0
    return-object v6

    .line 1390
    .end local v6           #methods:[Ljava/lang/reflect/Method;
    .restart local v5       #methods:[Ljava/lang/reflect/Method;
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1391
    .local v1, foundMethods:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1393
    array-length v0, v5

    .line 1394
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 1395
    aget-object v4, v5, v2

    .line 1396
    .local v4, method:Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_2

    const-class v7, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/Void;

    if-eq v7, v8, :cond_2

    .line 1399
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1400
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1394
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1404
    .end local v4           #method:Ljava/lang/reflect/Method;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Method;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5           #methods:[Ljava/lang/reflect/Method;
    check-cast v5, [Ljava/lang/reflect/Method;

    .line 1405
    .restart local v5       #methods:[Ljava/lang/reflect/Method;
    invoke-virtual {v3, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v5

    .line 1407
    .end local v5           #methods:[Ljava/lang/reflect/Method;
    .restart local v6       #methods:[Ljava/lang/reflect/Method;
    goto :goto_0
.end method

.method static dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 11
    .parameter "view"
    .parameter "command"
    .parameter "parameters"
    .parameter "clientStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 449
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 451
    const-string v0, "DUMP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    invoke-static {p0, v4, v6, p3}, Landroid/view/ViewDebug;->dump(Landroid/view/View;ZZLjava/io/OutputStream;)V

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    const-string v0, "CAPTURE_LAYERS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 454
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0, v0}, Landroid/view/ViewDebug;->captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V

    goto :goto_0

    .line 456
    :cond_2
    const-string v0, "getViewInfos"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 458
    invoke-static {p0, p3}, Landroid/view/ViewDebug;->getViewInfos(Landroid/view/View;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 462
    :cond_3
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 463
    .local v10, params:[Ljava/lang/String;
    const-string v0, "CAPTURE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 464
    aget-object v0, v10, v4

    invoke-static {p0, p3, v0}, Landroid/view/ViewDebug;->capture(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 465
    :cond_4
    const-string v0, "OUTPUT_DISPLAYLIST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 466
    aget-object v0, v10, v4

    invoke-static {p0, v0}, Landroid/view/ViewDebug;->outputDisplayList(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_5
    const-string v0, "INVALIDATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 468
    aget-object v0, v10, v4

    invoke-static {p0, v0}, Landroid/view/ViewDebug;->invalidate(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 469
    :cond_6
    const-string v0, "REQUEST_LAYOUT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 470
    aget-object v0, v10, v4

    invoke-static {p0, v0}, Landroid/view/ViewDebug;->requestLayout(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 471
    :cond_7
    const-string v0, "PROFILE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 472
    aget-object v0, v10, v4

    invoke-static {p0, p3, v0}, Landroid/view/ViewDebug;->profile(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 475
    :cond_8
    const-string v0, "dump2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 477
    const-string v0, "\""

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "\""

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 478
    .local v2, text:Ljava/lang/String;
    const-string v0, "\""

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 479
    .local v9, otherParams:[Ljava/lang/String;
    aget-object v3, v9, v4

    aget-object v4, v9, v6

    aget-object v5, v9, v7

    move-object v0, p0

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Landroid/view/ViewDebug;->dump2(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 481
    .end local v2           #text:Ljava/lang/String;
    .end local v9           #otherParams:[Ljava/lang/String;
    :cond_9
    const-string v0, "getstr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 483
    aget-object v5, v10, v4

    aget-object v6, v10, v6

    aget-object v7, v10, v7

    aget-object v8, v10, v1

    move-object v3, p0

    move-object v4, p3

    invoke-static/range {v3 .. v8}, Landroid/view/ViewDebug;->getstr(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 485
    :cond_a
    const-string v0, "getSpecViewInfo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 487
    aget-object v5, v10, v4

    aget-object v6, v10, v6

    aget-object v7, v10, v7

    aget-object v8, v10, v1

    move-object v3, p0

    move-object v4, p3

    invoke-static/range {v3 .. v8}, Landroid/view/ViewDebug;->getSpecViewInfo(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 489
    :cond_b
    const-string v0, "getViewCenter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 491
    aget-object v0, v10, v4

    invoke-static {p0, p3, v0}, Landroid/view/ViewDebug;->getViewCenter(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 493
    :cond_c
    const-string v0, "getTextCenter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 495
    const-string v0, "\""

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "\""

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 496
    .restart local v2       #text:Ljava/lang/String;
    const-string v0, "\""

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 497
    .restart local v9       #otherParams:[Ljava/lang/String;
    aget-object v3, v9, v4

    aget-object v4, v9, v6

    aget-object v5, v9, v7

    move-object v0, p0

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Landroid/view/ViewDebug;->getTextCenter(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 499
    .end local v2           #text:Ljava/lang/String;
    .end local v9           #otherParams:[Ljava/lang/String;
    :cond_d
    const-string/jumbo v0, "searchSpecText"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 501
    const-string v0, "\""

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "\""

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 502
    .restart local v2       #text:Ljava/lang/String;
    const-string v0, "\""

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 503
    .restart local v9       #otherParams:[Ljava/lang/String;
    aget-object v3, v9, v4

    aget-object v4, v9, v6

    aget-object v5, v9, v7

    move-object v0, p0

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Landroid/view/ViewDebug;->searchSpecText(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 505
    .end local v2           #text:Ljava/lang/String;
    .end local v9           #otherParams:[Ljava/lang/String;
    :cond_e
    const-string/jumbo v0, "takeScreenshot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    aget-object v0, v10, v4

    invoke-static {p0, p3, v0}, Landroid/view/ViewDebug;->takeScreenshot(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static dump(Landroid/view/View;ZZLjava/io/OutputStream;)V
    .locals 10
    .parameter "root"
    .parameter "skipChildren"
    .parameter "includeProperties"
    .parameter "clientStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 859
    const/4 v8, 0x0

    .line 861
    .local v8, out:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string/jumbo v4, "utf-8"

    invoke-direct {v1, p3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const v4, 0x8000

    invoke-direct {v3, v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    .end local v8           #out:Ljava/io/BufferedWriter;
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    .line 863
    .local v9, view:Landroid/view/View;
    instance-of v1, v9, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 864
    move-object v0, v9

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 865
    .local v2, group:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    move v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Landroid/view/ViewDebug;->dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    .line 868
    .end local v2           #group:Landroid/view/ViewGroup;
    :cond_0
    const-string v1, "DONE."

    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 869
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 873
    if-eqz v3, :cond_1

    .line 874
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 877
    .end local v9           #view:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 870
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v8       #out:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v7

    move-object v3, v8

    .line 871
    .end local v8           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    .local v7, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v1, "View"

    const-string v4, "Problem dumping the view:"

    invoke-static {v1, v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 873
    if-eqz v3, :cond_1

    .line 874
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_0

    .line 873
    .end local v3           #out:Ljava/io/BufferedWriter;
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v8       #out:Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v1

    move-object v3, v8

    .end local v8           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :goto_2
    if-eqz v3, :cond_2

    .line 874
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    :cond_2
    throw v1

    .line 873
    :catchall_1
    move-exception v1

    goto :goto_2

    .line 870
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method private static dump2(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "root"
    .parameter "clientStream"
    .parameter "text"
    .parameter "strIndex"
    .parameter "strScrWidth"
    .parameter "strScrHeight"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1823
    invoke-static/range {p0 .. p5}, Landroid/view/ViewDebug;->getTextCenter(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    return-void
.end method

.method public static dumpCapturedView(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter "tag"
    .parameter "view"

    .prologue
    .line 1496
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1497
    .local v0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1498
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, ""

    invoke-static {p1, v0, v2}, Landroid/view/ViewDebug;->capturedViewExportFields(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1499
    const-string v2, ""

    invoke-static {p1, v0, v2}, Landroid/view/ViewDebug;->capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    return-void
.end method

.method private static dumpView(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;IZ)Z
    .locals 4
    .parameter "context"
    .parameter "view"
    .parameter "out"
    .parameter "level"
    .parameter "includeProperties"

    .prologue
    .line 940
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 941
    const/16 v2, 0x20

    :try_start_0
    invoke-virtual {p2, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 940
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 943
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 944
    const/16 v2, 0x40

    invoke-virtual {p2, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 945
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 946
    const/16 v2, 0x20

    invoke-virtual {p2, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 947
    if-eqz p4, :cond_1

    .line 948
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V

    .line 950
    :cond_1
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 951
    :catch_0
    move-exception v0

    .line 952
    .local v0, e:Ljava/io/IOException;
    const-string v2, "View"

    const-string v3, "Error while dumping hierarchy tree"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V
    .locals 9
    .parameter "context"
    .parameter "group"
    .parameter "out"
    .parameter "level"
    .parameter "skipChildren"
    .parameter "includeProperties"

    .prologue
    .line 913
    invoke-static {p0, p1, p2, p3, p5}, Landroid/view/ViewDebug;->dumpView(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;IZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 934
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 917
    .restart local p1
    :cond_1
    if-nez p4, :cond_0

    .line 921
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 922
    .local v6, count:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v6, :cond_3

    .line 923
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 924
    .local v8, view:Landroid/view/View;
    instance-of v0, v8, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v1, v8

    .line 925
    check-cast v1, Landroid/view/ViewGroup;

    add-int/lit8 v3, p3, 0x1

    move-object v0, p0

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/view/ViewDebug;->dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    .line 922
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 928
    :cond_2
    add-int/lit8 v0, p3, 0x1

    invoke-static {p0, v8, p2, v0, p5}, Landroid/view/ViewDebug;->dumpView(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;IZ)Z

    goto :goto_2

    .line 931
    .end local v8           #view:Landroid/view/View;
    :cond_3
    instance-of v0, p1, Landroid/view/ViewDebug$HierarchyHandler;

    if-eqz v0, :cond_0

    .line 932
    check-cast p1, Landroid/view/ViewDebug$HierarchyHandler;

    .end local p1
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, p2, v0}, Landroid/view/ViewDebug$HierarchyHandler;->dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V

    goto :goto_0
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V
    .locals 1
    .parameter "context"
    .parameter "view"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1031
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V

    .line 1032
    return-void
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "view"
    .parameter "out"
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1037
    if-nez p1, :cond_0

    .line 1038
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=4,null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1048
    :goto_0
    return-void

    .line 1042
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1044
    .local v0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    invoke-static {p0, p1, p2, v0, p3}, Landroid/view/ViewDebug;->exportFields(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1045
    invoke-static {p0, p1, p2, v0, p3}, Landroid/view/ViewDebug;->exportMethods(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1046
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 1047
    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    goto :goto_0
.end method

.method private static exportFields(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 23
    .parameter "context"
    .parameter "view"
    .parameter "out"
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/io/BufferedWriter;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1168
    .local p3, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static/range {p3 .. p3}, Landroid/view/ViewDebug;->getExportedPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v12

    .line 1170
    .local v12, fields:[Ljava/lang/reflect/Field;
    array-length v9, v12

    .line 1171
    .local v9, count:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    if-ge v14, v9, :cond_9

    .line 1172
    aget-object v10, v12, v14

    .line 1176
    .local v10, field:Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    .line 1177
    .local v11, fieldValue:Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v22

    .line 1178
    .local v22, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v2, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewDebug$ExportedProperty;

    .line 1179
    .local v4, property:Landroid/view/ViewDebug$ExportedProperty;
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1182
    .local v8, categoryPrefix:Ljava/lang/String;
    :goto_1
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v22

    if-eq v0, v2, :cond_0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v22

    if-ne v0, v2, :cond_8

    .line 1183
    :cond_0
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p0, :cond_4

    .line 1184
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15

    .line 1185
    .local v15, id:I
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v11

    .line 1229
    .end local v11           #fieldValue:Ljava/lang/Object;
    .end local v15           #id:I
    :cond_1
    :goto_2
    if-nez v11, :cond_2

    .line 1230
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 1233
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v7, ""

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v7, v11}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1171
    .end local v4           #property:Landroid/view/ViewDebug$ExportedProperty;
    .end local v8           #categoryPrefix:Ljava/lang/String;
    .end local v22           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1179
    .restart local v4       #property:Landroid/view/ViewDebug$ExportedProperty;
    .restart local v11       #fieldValue:Ljava/lang/Object;
    .restart local v22       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_3
    const-string v8, ""

    goto :goto_1

    .line 1187
    .restart local v8       #categoryPrefix:Ljava/lang/String;
    :cond_4
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v13

    .line 1188
    .local v13, flagsMapping:[Landroid/view/ViewDebug$FlagToString;
    array-length v2, v13

    if-lez v2, :cond_5

    .line 1189
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v16

    .line 1190
    .local v16, intValue:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1192
    .local v6, valuePrefix:Ljava/lang/String;
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v0, v13, v1, v6}, Landroid/view/ViewDebug;->exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V

    .line 1195
    .end local v6           #valuePrefix:Ljava/lang/String;
    .end local v16           #intValue:I
    :cond_5
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v19

    .line 1196
    .local v19, mapping:[Landroid/view/ViewDebug$IntToString;
    move-object/from16 v0, v19

    array-length v2, v0

    if-lez v2, :cond_1

    .line 1197
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v16

    .line 1198
    .restart local v16       #intValue:I
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    .line 1199
    .local v20, mappingCount:I
    const/16 v17, 0x0

    .local v17, j:I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    .line 1200
    aget-object v18, v19, v17

    .line 1201
    .local v18, mapped:Landroid/view/ViewDebug$IntToString;
    invoke-interface/range {v18 .. v18}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v2

    move/from16 v0, v16

    if-ne v2, v0, :cond_7

    .line 1202
    invoke-interface/range {v18 .. v18}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v11

    .line 1207
    .end local v11           #fieldValue:Ljava/lang/Object;
    .end local v18           #mapped:Landroid/view/ViewDebug$IntToString;
    :cond_6
    if-nez v11, :cond_1

    .line 1208
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .local v11, fieldValue:Ljava/lang/Integer;
    goto/16 :goto_2

    .line 1199
    .local v11, fieldValue:Ljava/lang/Object;
    .restart local v18       #mapped:Landroid/view/ViewDebug$IntToString;
    :cond_7
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 1212
    .end local v13           #flagsMapping:[Landroid/view/ViewDebug$FlagToString;
    .end local v16           #intValue:I
    .end local v17           #j:I
    .end local v18           #mapped:Landroid/view/ViewDebug$IntToString;
    .end local v19           #mapping:[Landroid/view/ViewDebug$IntToString;
    .end local v20           #mappingCount:I
    :cond_8
    const-class v2, [I

    move-object/from16 v0, v22

    if-ne v0, v2, :cond_a

    .line 1213
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v5, v0

    .line 1214
    .local v5, array:[I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1215
    .restart local v6       #valuePrefix:Ljava/lang/String;
    const-string v21, ""

    .line 1217
    .local v21, suffix:Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v7}, Landroid/view/ViewDebug;->exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V

    .line 1237
    .end local v4           #property:Landroid/view/ViewDebug$ExportedProperty;
    .end local v5           #array:[I
    .end local v6           #valuePrefix:Ljava/lang/String;
    .end local v8           #categoryPrefix:Ljava/lang/String;
    .end local v10           #field:Ljava/lang/reflect/Field;
    .end local v11           #fieldValue:Ljava/lang/Object;
    .end local v21           #suffix:Ljava/lang/String;
    .end local v22           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_9
    return-void

    .line 1221
    .restart local v4       #property:Landroid/view/ViewDebug$ExportedProperty;
    .restart local v8       #categoryPrefix:Ljava/lang/String;
    .restart local v10       #field:Ljava/lang/reflect/Field;
    .restart local v11       #fieldValue:Ljava/lang/Object;
    .restart local v22       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_a
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1222
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1223
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->prefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v2, v1, v3}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 1234
    .end local v4           #property:Landroid/view/ViewDebug$ExportedProperty;
    .end local v8           #categoryPrefix:Ljava/lang/String;
    .end local v11           #fieldValue:Ljava/lang/Object;
    .end local v22           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    goto/16 :goto_3
.end method

.method private static exportMethods(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 25
    .parameter "context"
    .parameter "view"
    .parameter "out"
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/io/BufferedWriter;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1095
    .local p3, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static/range {p3 .. p3}, Landroid/view/ViewDebug;->getExportedPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v22

    .line 1097
    .local v22, methods:[Ljava/lang/reflect/Method;
    move-object/from16 v0, v22

    array-length v10, v0

    .line 1098
    .local v10, count:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v10, :cond_7

    .line 1099
    aget-object v20, v22, v12

    .line 1102
    .local v20, method:Ljava/lang/reflect/Method;
    :try_start_0
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/view/ViewDebug;->callMethodOnAppropriateTheadBlocking(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 1103
    .local v21, methodValue:Ljava/lang/Object;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v23

    .line 1104
    .local v23, returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v3, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewDebug$ExportedProperty;

    .line 1105
    .local v5, property:Landroid/view/ViewDebug$ExportedProperty;
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1108
    .local v9, categoryPrefix:Ljava/lang/String;
    :goto_1
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v23

    if-ne v0, v3, :cond_6

    .line 1110
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p0, :cond_2

    .line 1111
    check-cast v21, Ljava/lang/Integer;

    .end local v21           #methodValue:Ljava/lang/Object;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1112
    .local v13, id:I
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v21

    .line 1157
    .end local v13           #id:I
    :cond_0
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "()"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-static {v0, v3, v4, v8, v1}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1098
    .end local v5           #property:Landroid/view/ViewDebug$ExportedProperty;
    .end local v9           #categoryPrefix:Ljava/lang/String;
    .end local v23           #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1105
    .restart local v5       #property:Landroid/view/ViewDebug$ExportedProperty;
    .restart local v21       #methodValue:Ljava/lang/Object;
    .restart local v23       #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    const-string v9, ""

    goto :goto_1

    .line 1114
    .restart local v9       #categoryPrefix:Ljava/lang/String;
    :cond_2
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v11

    .line 1115
    .local v11, flagsMapping:[Landroid/view/ViewDebug$FlagToString;
    array-length v3, v11

    if-lez v3, :cond_3

    .line 1116
    move-object/from16 v0, v21

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1117
    .local v14, intValue:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1119
    .local v7, valuePrefix:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-static {v0, v11, v14, v7}, Landroid/view/ViewDebug;->exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V

    .line 1122
    .end local v7           #valuePrefix:Ljava/lang/String;
    .end local v14           #intValue:I
    :cond_3
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v18

    .line 1123
    .local v18, mapping:[Landroid/view/ViewDebug$IntToString;
    move-object/from16 v0, v18

    array-length v3, v0

    if-lez v3, :cond_0

    .line 1124
    move-object/from16 v0, v21

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1125
    .restart local v14       #intValue:I
    const/16 v16, 0x0

    .line 1126
    .local v16, mapped:Z
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    .line 1127
    .local v19, mappingCount:I
    const/4 v15, 0x0

    .local v15, j:I
    :goto_4
    move/from16 v0, v19

    if-ge v15, v0, :cond_4

    .line 1128
    aget-object v17, v18, v15

    .line 1129
    .local v17, mapper:Landroid/view/ViewDebug$IntToString;
    invoke-interface/range {v17 .. v17}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v3

    if-ne v3, v14, :cond_5

    .line 1130
    invoke-interface/range {v17 .. v17}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v21

    .line 1131
    .local v21, methodValue:Ljava/lang/String;
    const/16 v16, 0x1

    .line 1136
    .end local v17           #mapper:Landroid/view/ViewDebug$IntToString;
    .end local v21           #methodValue:Ljava/lang/String;
    :cond_4
    if-nez v16, :cond_0

    .line 1137
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .local v21, methodValue:Ljava/lang/Integer;
    goto/16 :goto_2

    .line 1127
    .restart local v17       #mapper:Landroid/view/ViewDebug$IntToString;
    .local v21, methodValue:Ljava/lang/Object;
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1141
    .end local v11           #flagsMapping:[Landroid/view/ViewDebug$FlagToString;
    .end local v14           #intValue:I
    .end local v15           #j:I
    .end local v16           #mapped:Z
    .end local v17           #mapper:Landroid/view/ViewDebug$IntToString;
    .end local v18           #mapping:[Landroid/view/ViewDebug$IntToString;
    .end local v19           #mappingCount:I
    :cond_6
    const-class v3, [I

    move-object/from16 v0, v23

    if-ne v0, v3, :cond_8

    .line 1142
    check-cast v21, [I

    .end local v21           #methodValue:Ljava/lang/Object;
    move-object/from16 v0, v21

    check-cast v0, [I

    move-object v6, v0

    .line 1143
    .local v6, array:[I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1144
    .restart local v7       #valuePrefix:Ljava/lang/String;
    const-string v24, "()"

    .line 1146
    .local v24, suffix:Ljava/lang/String;
    const-string v8, "()"

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-static/range {v3 .. v8}, Landroid/view/ViewDebug;->exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V

    .line 1163
    .end local v5           #property:Landroid/view/ViewDebug$ExportedProperty;
    .end local v6           #array:[I
    .end local v7           #valuePrefix:Ljava/lang/String;
    .end local v9           #categoryPrefix:Ljava/lang/String;
    .end local v20           #method:Ljava/lang/reflect/Method;
    .end local v23           #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v24           #suffix:Ljava/lang/String;
    :cond_7
    return-void

    .line 1150
    .restart local v5       #property:Landroid/view/ViewDebug$ExportedProperty;
    .restart local v9       #categoryPrefix:Ljava/lang/String;
    .restart local v20       #method:Ljava/lang/reflect/Method;
    .restart local v21       #methodValue:Ljava/lang/Object;
    .restart local v23       #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_8
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1151
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->prefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    .line 1158
    .end local v5           #property:Landroid/view/ViewDebug$ExportedProperty;
    .end local v9           #categoryPrefix:Ljava/lang/String;
    .end local v21           #methodValue:Ljava/lang/Object;
    .end local v23           #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    goto/16 :goto_3

    .line 1160
    :catch_1
    move-exception v3

    goto/16 :goto_3

    .line 1159
    :catch_2
    move-exception v3

    goto/16 :goto_3
.end method

.method private static exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V
    .locals 17
    .parameter "context"
    .parameter "out"
    .parameter "property"
    .parameter "array"
    .parameter "prefix"
    .parameter "suffix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1271
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->indexMapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v5

    .line 1272
    .local v5, indexMapping:[Landroid/view/ViewDebug$IntToString;
    array-length v0, v5

    move/from16 v16, v0

    if-lez v16, :cond_3

    const/4 v3, 0x1

    .line 1274
    .local v3, hasIndexMapping:Z
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v10

    .line 1275
    .local v10, mapping:[Landroid/view/ViewDebug$IntToString;
    array-length v0, v10

    move/from16 v16, v0

    if-lez v16, :cond_4

    const/4 v4, 0x1

    .line 1277
    .local v4, hasMapping:Z
    :goto_1
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v16

    if-eqz v16, :cond_5

    if-eqz p0, :cond_5

    const/4 v13, 0x1

    .line 1278
    .local v13, resolveId:Z
    :goto_2
    move-object/from16 v0, p3

    array-length v15, v0

    .line 1280
    .local v15, valuesCount:I
    const/4 v7, 0x0

    .local v7, j:I
    :goto_3
    if-ge v7, v15, :cond_9

    .line 1282
    const/4 v14, 0x0

    .line 1284
    .local v14, value:Ljava/lang/String;
    aget v6, p3, v7

    .line 1286
    .local v6, intValue:I
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 1287
    .local v12, name:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1288
    array-length v11, v5

    .line 1289
    .local v11, mappingCount:I
    const/4 v8, 0x0

    .local v8, k:I
    :goto_4
    if-ge v8, v11, :cond_0

    .line 1290
    aget-object v9, v5, v8

    .line 1291
    .local v9, mapped:Landroid/view/ViewDebug$IntToString;
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v7, :cond_6

    .line 1292
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v12

    .line 1298
    .end local v8           #k:I
    .end local v9           #mapped:Landroid/view/ViewDebug$IntToString;
    .end local v11           #mappingCount:I
    :cond_0
    if-eqz v4, :cond_1

    .line 1299
    array-length v11, v10

    .line 1300
    .restart local v11       #mappingCount:I
    const/4 v8, 0x0

    .restart local v8       #k:I
    :goto_5
    if-ge v8, v11, :cond_1

    .line 1301
    aget-object v9, v10, v8

    .line 1302
    .restart local v9       #mapped:Landroid/view/ViewDebug$IntToString;
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v6, :cond_7

    .line 1303
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v14

    .line 1309
    .end local v8           #k:I
    .end local v9           #mapped:Landroid/view/ViewDebug$IntToString;
    .end local v11           #mappingCount:I
    :cond_1
    if-eqz v13, :cond_8

    .line 1310
    if-nez v14, :cond_2

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #value:Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .line 1315
    .restart local v14       #value:Ljava/lang/String;
    :cond_2
    :goto_6
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v0, v1, v12, v2, v14}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1280
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1272
    .end local v3           #hasIndexMapping:Z
    .end local v4           #hasMapping:Z
    .end local v6           #intValue:I
    .end local v7           #j:I
    .end local v10           #mapping:[Landroid/view/ViewDebug$IntToString;
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #resolveId:Z
    .end local v14           #value:Ljava/lang/String;
    .end local v15           #valuesCount:I
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 1275
    .restart local v3       #hasIndexMapping:Z
    .restart local v10       #mapping:[Landroid/view/ViewDebug$IntToString;
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 1277
    .restart local v4       #hasMapping:Z
    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    .line 1289
    .restart local v6       #intValue:I
    .restart local v7       #j:I
    .restart local v8       #k:I
    .restart local v9       #mapped:Landroid/view/ViewDebug$IntToString;
    .restart local v11       #mappingCount:I
    .restart local v12       #name:Ljava/lang/String;
    .restart local v13       #resolveId:Z
    .restart local v14       #value:Ljava/lang/String;
    .restart local v15       #valuesCount:I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1300
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1312
    .end local v8           #k:I
    .end local v9           #mapped:Landroid/view/ViewDebug$IntToString;
    .end local v11           #mappingCount:I
    :cond_8
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_6

    .line 1317
    .end local v6           #intValue:I
    .end local v12           #name:Ljava/lang/String;
    .end local v14           #value:Ljava/lang/String;
    :cond_9
    return-void
.end method

.method private static exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V
    .locals 10
    .parameter "out"
    .parameter "mapping"
    .parameter "intValue"
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1253
    array-length v0, p1

    .line 1254
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 1255
    aget-object v1, p1, v3

    .line 1256
    .local v1, flagMapping:Landroid/view/ViewDebug$FlagToString;
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->outputIf()Z

    move-result v2

    .line 1257
    .local v2, ifTrue:Z
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->mask()I

    move-result v8

    and-int v4, p2, v8

    .line 1258
    .local v4, maskResult:I
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->equals()I

    move-result v8

    if-ne v4, v8, :cond_3

    const/4 v6, 0x1

    .line 1259
    .local v6, test:Z
    :goto_1
    if-eqz v6, :cond_0

    if-nez v2, :cond_1

    :cond_0
    if-nez v6, :cond_2

    if-nez v2, :cond_2

    .line 1260
    :cond_1
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->name()Ljava/lang/String;

    move-result-object v5

    .line 1261
    .local v5, name:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1262
    .local v7, value:Ljava/lang/String;
    const-string v8, ""

    invoke-static {p0, p3, v5, v8, v7}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1254
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1258
    .end local v6           #test:Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 1265
    .end local v1           #flagMapping:Landroid/view/ViewDebug$FlagToString;
    .end local v2           #ifTrue:Z
    .end local v4           #maskResult:I
    :cond_4
    return-void
.end method

.method public static findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 8
    .parameter "root"
    .parameter "parameter"

    .prologue
    const/4 v5, 0x0

    .line 515
    const/16 v6, 0x40

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 516
    const-string v6, "@"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 517
    .local v3, ids:[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v0, v3, v6

    .line 518
    .local v0, className:Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v6, v3, v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v1, v6

    .line 520
    .local v1, hashCode:I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 521
    .local v4, view:Landroid/view/View;
    instance-of v6, v4, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    .line 522
    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #view:Landroid/view/View;
    invoke-static {v4, v0, v1}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v5

    .line 530
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #hashCode:I
    .end local v3           #ids:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 526
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 527
    .local v2, id:I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    goto :goto_0
.end method

.method private static findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;
    .locals 5
    .parameter "group"
    .parameter "className"
    .parameter "hashCode"

    .prologue
    .line 880
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug;->isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, p0

    .line 904
    :cond_0
    :goto_0
    return-object v1

    .line 884
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 885
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 886
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 887
    .local v3, view:Landroid/view/View;
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    move-object v4, v3

    .line 888
    check-cast v4, Landroid/view/ViewGroup;

    invoke-static {v4, p1, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    .line 889
    .local v1, found:Landroid/view/View;
    if-nez v1, :cond_0

    .line 895
    .end local v1           #found:Landroid/view/View;
    :cond_2
    instance-of v4, v3, Landroid/view/ViewDebug$HierarchyHandler;

    if-eqz v4, :cond_3

    .line 896
    check-cast v3, Landroid/view/ViewDebug$HierarchyHandler;

    .end local v3           #view:Landroid/view/View;
    invoke-interface {v3, p1, p2}, Landroid/view/ViewDebug$HierarchyHandler;->findHierarchyView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    .line 898
    .restart local v1       #found:Landroid/view/View;
    if-nez v1, :cond_0

    .line 885
    .end local v1           #found:Landroid/view/View;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 892
    .restart local v3       #view:Landroid/view/View;
    :cond_4
    invoke-static {v3, p1, p2}, Landroid/view/ViewDebug;->isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v3

    .line 893
    goto :goto_0

    .line 904
    .end local v3           #view:Landroid/view/View;
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getExportedPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 959
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v7, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    if-nez v7, :cond_0

    .line 960
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    .line 962
    :cond_0
    sget-object v7, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    if-nez v7, :cond_1

    .line 963
    new-instance v7, Ljava/util/HashMap;

    const/16 v8, 0x200

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    sput-object v7, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    .line 966
    :cond_1
    sget-object v6, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    .line 968
    .local v6, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Field;

    .line 969
    .local v2, fields:[Ljava/lang/reflect/Field;
    if-eqz v2, :cond_2

    move-object v3, v2

    .line 989
    .end local v2           #fields:[Ljava/lang/reflect/Field;
    .local v3, fields:[Ljava/lang/reflect/Field;
    :goto_0
    return-object v3

    .line 973
    .end local v3           #fields:[Ljava/lang/reflect/Field;
    .restart local v2       #fields:[Ljava/lang/reflect/Field;
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 974
    .local v4, foundFields:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 976
    array-length v0, v2

    .line 977
    .local v0, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v0, :cond_4

    .line 978
    aget-object v1, v2, v5

    .line 979
    .local v1, field:Ljava/lang/reflect/Field;
    const-class v7, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 980
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 981
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    sget-object v7, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    const-class v8, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 986
    .end local v1           #field:Ljava/lang/reflect/Field;
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Field;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #fields:[Ljava/lang/reflect/Field;
    check-cast v2, [Ljava/lang/reflect/Field;

    .line 987
    .restart local v2       #fields:[Ljava/lang/reflect/Field;
    invoke-virtual {v6, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    .line 989
    .end local v2           #fields:[Ljava/lang/reflect/Field;
    .restart local v3       #fields:[Ljava/lang/reflect/Field;
    goto :goto_0
.end method

.method private static getExportedPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 993
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v7, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    if-nez v7, :cond_0

    .line 994
    new-instance v7, Ljava/util/HashMap;

    const/16 v8, 0x64

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    sput-object v7, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    .line 996
    :cond_0
    sget-object v7, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    if-nez v7, :cond_1

    .line 997
    new-instance v7, Ljava/util/HashMap;

    const/16 v8, 0x200

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    sput-object v7, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    .line 1000
    :cond_1
    sget-object v3, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    .line 1002
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Method;>;"
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/reflect/Method;

    .line 1003
    .local v5, methods:[Ljava/lang/reflect/Method;
    if-eqz v5, :cond_2

    move-object v6, v5

    .line 1025
    .end local v5           #methods:[Ljava/lang/reflect/Method;
    .local v6, methods:[Ljava/lang/reflect/Method;
    :goto_0
    return-object v6

    .line 1007
    .end local v6           #methods:[Ljava/lang/reflect/Method;
    .restart local v5       #methods:[Ljava/lang/reflect/Method;
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1008
    .local v1, foundMethods:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1010
    array-length v0, v5

    .line 1011
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 1012
    aget-object v4, v5, v2

    .line 1013
    .local v4, method:Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_3

    const-class v7, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/Void;

    if-eq v7, v8, :cond_3

    .line 1016
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1017
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1018
    sget-object v7, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    const-class v8, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1022
    .end local v4           #method:Ljava/lang/reflect/Method;
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Method;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5           #methods:[Ljava/lang/reflect/Method;
    check-cast v5, [Ljava/lang/reflect/Method;

    .line 1023
    .restart local v5       #methods:[Ljava/lang/reflect/Method;
    invoke-virtual {v3, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v5

    .line 1025
    .end local v5           #methods:[Ljava/lang/reflect/Method;
    .restart local v6       #methods:[Ljava/lang/reflect/Method;
    goto :goto_0
.end method

.method private static getSpecViewInfo(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 23
    .parameter "root"
    .parameter "clientStream"
    .parameter "strX"
    .parameter "strY"
    .parameter "strScrWidth"
    .parameter "strScrHeight"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1612
    const/4 v12, 0x0

    .line 1613
    .local v12, out:Ljava/io/BufferedWriter;
    const/4 v5, 0x0

    .line 1617
    .local v5, etVi:Landroid/view/EtViewInfo;
    :try_start_0
    new-instance v13, Ljava/io/BufferedWriter;

    new-instance v20, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const v21, 0x8000

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v13, v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1619
    .end local v12           #out:Ljava/io/BufferedWriter;
    .local v13, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 1620
    .local v18, x:I
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 1621
    .local v19, y:I
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1622
    .local v15, scrWidth:I
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1623
    .local v14, scrHeight:I
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v15, v14}, Landroid/view/EtViewFetcher;->getSpecViewInfo(Landroid/view/View;IIII)Landroid/view/EtViewInfo;

    move-result-object v5

    .line 1625
    iget-object v10, v5, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    .line 1626
    .local v10, justView:Landroid/view/View;
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 1628
    .local v9, jsonArr:Lorg/json/JSONArray;
    const-string v17, ""

    .line 1629
    .local v17, text:Ljava/lang/String;
    instance-of v0, v10, Landroid/widget/TextView;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 1631
    move-object v0, v10

    check-cast v0, Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1634
    :cond_0
    invoke-virtual {v10}, Landroid/view/View;->isEnabled()Z

    move-result v7

    .line 1636
    .local v7, isEnabled:Z
    const/4 v6, 0x0

    .line 1637
    .local v6, isChecked:Z
    instance-of v0, v10, Landroid/widget/Checkable;

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 1639
    move-object v0, v10

    check-cast v0, Landroid/widget/Checkable;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/widget/Checkable;->isChecked()Z

    move-result v6

    .line 1642
    :cond_1
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1643
    .local v3, clsName:Ljava/lang/String;
    const-string v20, "."

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 1645
    .local v16, shrtClsName:Ljava/lang/String;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v11, v0, [I

    .line 1646
    .local v11, leftTopXy:[I
    invoke-virtual {v10, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1648
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1649
    .local v8, json:Lorg/json/JSONObject;
    const-string v20, "ControlId"

    iget-object v0, v5, Landroid/view/EtViewInfo;->path:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->hashCode()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1650
    const-string v20, "ClassName"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1651
    const-string v20, "TopLeftX"

    const/16 v21, 0x0

    aget v21, v11, v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1652
    const-string v20, "TopLeftY"

    const/16 v21, 0x1

    aget v21, v11, v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1653
    const-string v20, "ControlWidth"

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1654
    const-string v20, "ControlHeigh"

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1655
    const-string v20, "IsEnabled"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1656
    const-string v20, "IsChecked"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1657
    const-string v20, "Text"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1658
    const-string v20, "SameTextIndex"

    iget v0, v5, Landroid/view/EtViewInfo;->sameTextIndex:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1659
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1661
    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1662
    invoke-virtual {v13}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1670
    if-eqz v13, :cond_4

    .line 1672
    invoke-virtual {v13}, Ljava/io/BufferedWriter;->close()V

    move-object v12, v13

    .line 1675
    .end local v3           #clsName:Ljava/lang/String;
    .end local v6           #isChecked:Z
    .end local v7           #isEnabled:Z
    .end local v8           #json:Lorg/json/JSONObject;
    .end local v9           #jsonArr:Lorg/json/JSONArray;
    .end local v10           #justView:Landroid/view/View;
    .end local v11           #leftTopXy:[I
    .end local v13           #out:Ljava/io/BufferedWriter;
    .end local v14           #scrHeight:I
    .end local v15           #scrWidth:I
    .end local v16           #shrtClsName:Ljava/lang/String;
    .end local v17           #text:Ljava/lang/String;
    .end local v18           #x:I
    .end local v19           #y:I
    .restart local v12       #out:Ljava/io/BufferedWriter;
    :cond_2
    :goto_0
    return-void

    .line 1664
    :catch_0
    move-exception v4

    .line 1666
    .local v4, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v20, "EtViewDebug"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getSpecViewInfo:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1670
    if-eqz v12, :cond_2

    .line 1672
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->close()V

    goto :goto_0

    .line 1670
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v20

    :goto_2
    if-eqz v12, :cond_3

    .line 1672
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->close()V

    :cond_3
    throw v20

    .line 1670
    .end local v12           #out:Ljava/io/BufferedWriter;
    .restart local v13       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v20

    move-object v12, v13

    .end local v13           #out:Ljava/io/BufferedWriter;
    .restart local v12       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 1664
    .end local v12           #out:Ljava/io/BufferedWriter;
    .restart local v13       #out:Ljava/io/BufferedWriter;
    :catch_1
    move-exception v4

    move-object v12, v13

    .end local v13           #out:Ljava/io/BufferedWriter;
    .restart local v12       #out:Ljava/io/BufferedWriter;
    goto :goto_1

    .end local v12           #out:Ljava/io/BufferedWriter;
    .restart local v3       #clsName:Ljava/lang/String;
    .restart local v6       #isChecked:Z
    .restart local v7       #isEnabled:Z
    .restart local v8       #json:Lorg/json/JSONObject;
    .restart local v9       #jsonArr:Lorg/json/JSONArray;
    .restart local v10       #justView:Landroid/view/View;
    .restart local v11       #leftTopXy:[I
    .restart local v13       #out:Ljava/io/BufferedWriter;
    .restart local v14       #scrHeight:I
    .restart local v15       #scrWidth:I
    .restart local v16       #shrtClsName:Ljava/lang/String;
    .restart local v17       #text:Ljava/lang/String;
    .restart local v18       #x:I
    .restart local v19       #y:I
    :cond_4
    move-object v12, v13

    .end local v13           #out:Ljava/io/BufferedWriter;
    .restart local v12       #out:Ljava/io/BufferedWriter;
    goto :goto_0
.end method

.method private static getTextCenter(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "root"
    .parameter "clientStream"
    .parameter "text"
    .parameter "strIndex"
    .parameter "strScrWidth"
    .parameter "strScrHeight"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1781
    const/4 v4, 0x0

    .line 1785
    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-direct {v9, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v10, 0x100

    invoke-direct {v5, v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1787
    .end local v4           #out:Ljava/io/BufferedWriter;
    .local v5, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1788
    .local v1, index:I
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1789
    .local v7, scrWidth:I
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1790
    .local v6, scrHeight:I
    invoke-static {p0, p2, v1, v7, v6}, Landroid/view/EtViewFetcher;->getTextCenter(Landroid/view/View;Ljava/lang/String;III)[I

    move-result-object v8

    .line 1792
    .local v8, xyCenter:[I
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1793
    .local v3, jsonArr:Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1794
    .local v2, json:Lorg/json/JSONObject;
    if-eqz v8, :cond_1

    .line 1796
    const-string v9, "X"

    const/4 v10, 0x0

    aget v10, v8, v10

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1797
    const-string v9, "Y"

    const/4 v10, 0x1

    aget v10, v8, v10

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1803
    :goto_0
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1805
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1806
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1814
    if-eqz v5, :cond_3

    .line 1816
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    move-object v4, v5

    .line 1819
    .end local v1           #index:I
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v3           #jsonArr:Lorg/json/JSONArray;
    .end local v5           #out:Ljava/io/BufferedWriter;
    .end local v6           #scrHeight:I
    .end local v7           #scrWidth:I
    .end local v8           #xyCenter:[I
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_0
    :goto_1
    return-void

    .line 1801
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v1       #index:I
    .restart local v2       #json:Lorg/json/JSONObject;
    .restart local v3       #jsonArr:Lorg/json/JSONArray;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    .restart local v6       #scrHeight:I
    .restart local v7       #scrWidth:I
    .restart local v8       #xyCenter:[I
    :cond_1
    :try_start_2
    const-string v9, "Res"

    const-string v10, "Unknown"

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1808
    .end local v1           #index:I
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v3           #jsonArr:Lorg/json/JSONArray;
    .end local v6           #scrHeight:I
    .end local v7           #scrWidth:I
    .end local v8           #xyCenter:[I
    :catch_0
    move-exception v0

    move-object v4, v5

    .line 1810
    .end local v5           #out:Ljava/io/BufferedWriter;
    .local v0, e:Ljava/lang/Exception;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :goto_2
    :try_start_3
    const-string v9, "EtViewDebug"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getTextCenter:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1814
    if-eqz v4, :cond_0

    .line 1816
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    .line 1814
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v4, :cond_2

    .line 1816
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    :cond_2
    throw v9

    .line 1814
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 1808
    :catch_1
    move-exception v0

    goto :goto_2

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v1       #index:I
    .restart local v2       #json:Lorg/json/JSONObject;
    .restart local v3       #jsonArr:Lorg/json/JSONArray;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    .restart local v6       #scrHeight:I
    .restart local v7       #scrWidth:I
    .restart local v8       #xyCenter:[I
    :cond_3
    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_1
.end method

.method private static getViewCenter(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 10
    .parameter "root"
    .parameter "clientStream"
    .parameter "strId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1680
    const/4 v4, 0x0

    .line 1684
    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v8, 0x100

    invoke-direct {v5, v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1686
    .end local v4           #out:Ljava/io/BufferedWriter;
    .local v5, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1687
    .local v1, id:I
    invoke-static {p0, v1}, Landroid/view/EtViewFetcher;->getViewCenter(Landroid/view/View;I)[I

    move-result-object v6

    .line 1689
    .local v6, xy:[I
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1690
    .local v3, jsonArr:Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1691
    .local v2, json:Lorg/json/JSONObject;
    if-eqz v6, :cond_1

    .line 1693
    const-string v7, "X"

    const/4 v8, 0x0

    aget v8, v6, v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1694
    const-string v7, "Y"

    const/4 v8, 0x1

    aget v8, v6, v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1700
    :goto_0
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1702
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1703
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1711
    if-eqz v5, :cond_3

    .line 1713
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    move-object v4, v5

    .line 1716
    .end local v1           #id:I
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v3           #jsonArr:Lorg/json/JSONArray;
    .end local v5           #out:Ljava/io/BufferedWriter;
    .end local v6           #xy:[I
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_0
    :goto_1
    return-void

    .line 1698
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v1       #id:I
    .restart local v2       #json:Lorg/json/JSONObject;
    .restart local v3       #jsonArr:Lorg/json/JSONArray;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    .restart local v6       #xy:[I
    :cond_1
    :try_start_2
    const-string v7, "Res"

    const-string v8, "Unknown"

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1705
    .end local v1           #id:I
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v3           #jsonArr:Lorg/json/JSONArray;
    .end local v6           #xy:[I
    :catch_0
    move-exception v0

    move-object v4, v5

    .line 1707
    .end local v5           #out:Ljava/io/BufferedWriter;
    .local v0, e:Ljava/lang/Exception;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :goto_2
    :try_start_3
    const-string v7, "EtViewDebug"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getViewCenter:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1711
    if-eqz v4, :cond_0

    .line 1713
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    .line 1711
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v4, :cond_2

    .line 1713
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    :cond_2
    throw v7

    .line 1711
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 1705
    :catch_1
    move-exception v0

    goto :goto_2

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v1       #id:I
    .restart local v2       #json:Lorg/json/JSONObject;
    .restart local v3       #jsonArr:Lorg/json/JSONArray;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    .restart local v6       #xy:[I
    :cond_3
    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_1
.end method

.method private static getViewInfos(Landroid/view/View;Ljava/io/OutputStream;)V
    .locals 20
    .parameter "root"
    .parameter "clientStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1549
    const/4 v11, 0x0

    .line 1550
    .local v11, out:Ljava/io/BufferedWriter;
    const/16 v16, 0x0

    .line 1554
    .local v16, viewInfos:Ljava/util/List;,"Ljava/util/List<Landroid/view/EtViewInfo;>;"
    :try_start_0
    new-instance v12, Ljava/io/BufferedWriter;

    new-instance v17, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const v18, 0x8000

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v12, v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1555
    .end local v11           #out:Ljava/io/BufferedWriter;
    .local v12, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    invoke-static/range {v17 .. v17}, Landroid/view/EtViewFetcher;->getViewInfos(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v16

    .line 1557
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 1558
    .local v9, jsonArr:Lorg/json/JSONArray;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/EtViewInfo;

    .line 1560
    .local v4, evi:Landroid/view/EtViewInfo;
    iget-object v15, v4, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    .line 1562
    .local v15, view:Landroid/view/View;
    const-string v14, ""

    .line 1563
    .local v14, text:Ljava/lang/String;
    instance-of v0, v15, Landroid/widget/TextView;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1565
    move-object v0, v15

    check-cast v0, Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1568
    :cond_0
    invoke-virtual {v15}, Landroid/view/View;->isEnabled()Z

    move-result v7

    .line 1570
    .local v7, isEnabled:Z
    const/4 v6, 0x0

    .line 1571
    .local v6, isChecked:Z
    instance-of v0, v15, Landroid/widget/Checkable;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 1573
    move-object v0, v15

    check-cast v0, Landroid/widget/Checkable;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/widget/Checkable;->isChecked()Z

    move-result v6

    .line 1576
    :cond_1
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1577
    .local v2, clsName:Ljava/lang/String;
    const-string v17, "."

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 1579
    .local v13, shrtClsName:Ljava/lang/String;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v10, v0, [I

    .line 1580
    .local v10, leftTopXy:[I
    invoke-virtual {v15, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1582
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1583
    .local v8, json:Lorg/json/JSONObject;
    const-string v17, "ControlId"

    iget-object v0, v4, Landroid/view/EtViewInfo;->path:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->hashCode()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1584
    const-string v17, "ClassName"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1585
    const-string v17, "TopLeftX"

    const/16 v18, 0x0

    aget v18, v10, v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1586
    const-string v17, "TopLeftY"

    const/16 v18, 0x1

    aget v18, v10, v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1587
    const-string v17, "ControlWidth"

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1588
    const-string v17, "ControlHeigh"

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1589
    const-string v17, "IsEnabled"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1590
    const-string v17, "IsChecked"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1591
    const-string v17, "Text"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1592
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1597
    .end local v2           #clsName:Ljava/lang/String;
    .end local v4           #evi:Landroid/view/EtViewInfo;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #isChecked:Z
    .end local v7           #isEnabled:Z
    .end local v8           #json:Lorg/json/JSONObject;
    .end local v9           #jsonArr:Lorg/json/JSONArray;
    .end local v10           #leftTopXy:[I
    .end local v13           #shrtClsName:Ljava/lang/String;
    .end local v14           #text:Ljava/lang/String;
    .end local v15           #view:Landroid/view/View;
    :catch_0
    move-exception v3

    move-object v11, v12

    .line 1599
    .end local v12           #out:Ljava/io/BufferedWriter;
    .local v3, e:Ljava/lang/Exception;
    .restart local v11       #out:Ljava/io/BufferedWriter;
    :goto_1
    :try_start_2
    const-string v17, "EtViewDebug"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getViewInfos:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1603
    if-eqz v11, :cond_2

    .line 1605
    invoke-virtual {v11}, Ljava/io/BufferedWriter;->close()V

    .line 1608
    .end local v3           #e:Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void

    .line 1594
    .end local v11           #out:Ljava/io/BufferedWriter;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v9       #jsonArr:Lorg/json/JSONArray;
    .restart local v12       #out:Ljava/io/BufferedWriter;
    :cond_3
    :try_start_3
    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1595
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1603
    if-eqz v12, :cond_5

    .line 1605
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->close()V

    move-object v11, v12

    .end local v12           #out:Ljava/io/BufferedWriter;
    .restart local v11       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 1603
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v9           #jsonArr:Lorg/json/JSONArray;
    :catchall_0
    move-exception v17

    :goto_3
    if-eqz v11, :cond_4

    .line 1605
    invoke-virtual {v11}, Ljava/io/BufferedWriter;->close()V

    :cond_4
    throw v17

    .line 1603
    .end local v11           #out:Ljava/io/BufferedWriter;
    .restart local v12       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v17

    move-object v11, v12

    .end local v12           #out:Ljava/io/BufferedWriter;
    .restart local v11       #out:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 1597
    :catch_1
    move-exception v3

    goto :goto_1

    .end local v11           #out:Ljava/io/BufferedWriter;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v9       #jsonArr:Lorg/json/JSONArray;
    .restart local v12       #out:Ljava/io/BufferedWriter;
    :cond_5
    move-object v11, v12

    .end local v12           #out:Ljava/io/BufferedWriter;
    .restart local v11       #out:Ljava/io/BufferedWriter;
    goto :goto_2
.end method

.method public static getViewInstanceCount()J
    .locals 2

    .prologue
    .line 384
    const-class v0, Landroid/view/View;

    invoke-static {v0}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getViewRootImplCount()J
    .locals 2

    .prologue
    .line 395
    const-class v0, Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getstr(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "root"
    .parameter "clientStream"
    .parameter "strX"
    .parameter "strY"
    .parameter "strScrWidth"
    .parameter "strScrHeight"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1828
    invoke-static/range {p0 .. p5}, Landroid/view/ViewDebug;->getSpecViewInfo(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    return-void
.end method

.method private static invalidate(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .parameter "root"
    .parameter "parameter"

    .prologue
    .line 534
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 535
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 538
    :cond_0
    return-void
.end method

.method public static invokeViewMethod(Landroid/view/View;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "view"
    .parameter "method"
    .parameter "args"

    .prologue
    .line 1513
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1514
    .local v6, latch:Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1515
    .local v1, result:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1517
    .local v5, exception:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    new-instance v0, Landroid/view/ViewDebug$8;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/ViewDebug$8;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;Landroid/view/View;[Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1533
    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1538
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1539
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1534
    :catch_0
    move-exception v7

    .line 1535
    .local v7, e:Ljava/lang/InterruptedException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1542
    .end local v7           #e:Ljava/lang/InterruptedException;
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z
    .locals 1
    .parameter "view"
    .parameter "className"
    .parameter "hashCode"

    .prologue
    .line 908
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static outputDisplayList(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "root"
    .parameter "target"

    .prologue
    .line 787
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->outputDisplayList(Landroid/view/View;)V

    .line 788
    return-void
.end method

.method private static outputDisplayList(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .parameter "root"
    .parameter "parameter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 781
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 782
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->outputDisplayList(Landroid/view/View;)V

    .line 783
    return-void
.end method

.method private static performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "captureView"
    .parameter "skpiChildren"

    .prologue
    const/4 v3, 0x1

    .line 824
    if-eqz p0, :cond_0

    .line 825
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 826
    .local v2, latch:Ljava/util/concurrent/CountDownLatch;
    new-array v0, v3, [Landroid/graphics/Bitmap;

    .line 828
    .local v0, cache:[Landroid/graphics/Bitmap;
    new-instance v3, Landroid/view/ViewDebug$6;

    invoke-direct {v3, v0, p0, p1, v2}, Landroid/view/ViewDebug$6;-><init>([Landroid/graphics/Bitmap;Landroid/view/View;ZLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 842
    const-wide/16 v3, 0xfa0

    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 843
    const/4 v3, 0x0

    aget-object v3, v0, v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    .end local v0           #cache:[Landroid/graphics/Bitmap;
    .end local v2           #latch:Ljava/util/concurrent/CountDownLatch;
    :goto_0
    return-object v3

    .line 844
    .restart local v0       #cache:[Landroid/graphics/Bitmap;
    .restart local v2       #latch:Ljava/util/concurrent/CountDownLatch;
    :catch_0
    move-exception v1

    .line 845
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v3, "View"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not complete the capture of the view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 850
    .end local v0           #cache:[Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v2           #latch:Ljava/util/concurrent/CountDownLatch;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static profile(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 6
    .parameter "root"
    .parameter "clientStream"
    .parameter "parameter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 554
    invoke-static {p0, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 555
    .local v3, view:Landroid/view/View;
    const/4 v1, 0x0

    .line 557
    .local v1, out:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const v5, 0x8000

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 559
    .end local v1           #out:Ljava/io/BufferedWriter;
    .local v2, out:Ljava/io/BufferedWriter;
    if-eqz v3, :cond_1

    .line 560
    :try_start_1
    invoke-static {v3, v2}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V

    .line 565
    :goto_0
    const-string v4, "DONE."

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 570
    if-eqz v2, :cond_3

    .line 571
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    move-object v1, v2

    .line 574
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    :cond_0
    :goto_1
    return-void

    .line 562
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :cond_1
    :try_start_2
    const-string v4, "-1 -1 -1"

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 567
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 568
    .end local v2           #out:Ljava/io/BufferedWriter;
    .local v0, e:Ljava/lang/Exception;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    :goto_2
    :try_start_3
    const-string v4, "View"

    const-string v5, "Problem profiling the view:"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 570
    if-eqz v1, :cond_0

    .line 571
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    .line 570
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_2

    .line 571
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    :cond_2
    throw v4

    .line 570
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 567
    :catch_1
    move-exception v0

    goto :goto_2

    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :cond_3
    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_1
.end method

.method public static profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V
    .locals 1
    .parameter "view"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 579
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V

    .line 580
    return-void
.end method

.method private static profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V
    .locals 11
    .parameter "view"
    .parameter "out"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x20

    const-wide/16 v1, 0x0

    .line 585
    if-nez p2, :cond_0

    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v9, v9, 0x800

    if-eqz v9, :cond_4

    :cond_0
    new-instance v9, Landroid/view/ViewDebug$2;

    invoke-direct {v9, p0}, Landroid/view/ViewDebug$2;-><init>(Landroid/view/View;)V

    invoke-static {p0, v9}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v5

    .line 612
    .local v5, durationMeasure:J
    :goto_0
    if-nez p2, :cond_1

    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v9, v9, 0x2000

    if-eqz v9, :cond_5

    :cond_1
    new-instance v9, Landroid/view/ViewDebug$3;

    invoke-direct {v9, p0}, Landroid/view/ViewDebug$3;-><init>(Landroid/view/View;)V

    invoke-static {p0, v9}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v3

    .line 626
    .local v3, durationLayout:J
    :goto_1
    if-nez p2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    move-result v9

    if-eqz v9, :cond_2

    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_3

    :cond_2
    new-instance v9, Landroid/view/ViewDebug$4;

    invoke-direct {v9, p0}, Landroid/view/ViewDebug$4;-><init>(Landroid/view/View;)V

    invoke-static {p0, v9}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v1

    .line 657
    .local v1, durationDraw:J
    :cond_3
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p1, v10}, Ljava/io/BufferedWriter;->write(I)V

    .line 659
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p1, v10}, Ljava/io/BufferedWriter;->write(I)V

    .line 661
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 662
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 663
    instance-of v9, p0, Landroid/view/ViewGroup;

    if-eqz v9, :cond_6

    move-object v7, p0

    .line 664
    check-cast v7, Landroid/view/ViewGroup;

    .line 665
    .local v7, group:Landroid/view/ViewGroup;
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 666
    .local v0, count:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v0, :cond_6

    .line 667
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, p1, v10}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V

    .line 666
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v0           #count:I
    .end local v1           #durationDraw:J
    .end local v3           #durationLayout:J
    .end local v5           #durationMeasure:J
    .end local v7           #group:Landroid/view/ViewGroup;
    .end local v8           #i:I
    :cond_4
    move-wide v5, v1

    .line 585
    goto :goto_0

    .restart local v5       #durationMeasure:J
    :cond_5
    move-wide v3, v1

    .line 612
    goto :goto_1

    .line 670
    .restart local v1       #durationDraw:J
    .restart local v3       #durationLayout:J
    :cond_6
    return-void
.end method

.method private static profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J
    .locals 8
    .parameter "view"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "Landroid/view/ViewDebug$ViewOperation",
            "<TT;>;)J"
        }
    .end annotation

    .prologue
    .local p1, operation:Landroid/view/ViewDebug$ViewOperation;,"Landroid/view/ViewDebug$ViewOperation<TT;>;"
    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    .line 679
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 680
    .local v2, latch:Ljava/util/concurrent/CountDownLatch;
    new-array v0, v5, [J

    .line 682
    .local v0, duration:[J
    new-instance v5, Landroid/view/ViewDebug$5;

    invoke-direct {v5, p1, v0, v2}, Landroid/view/ViewDebug$5;-><init>(Landroid/view/ViewDebug$ViewOperation;[JLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 699
    const-wide/16 v5, 0xfa0

    :try_start_0
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 700
    const-string v5, "View"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not complete the profiling of the view "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    :goto_0
    return-wide v3

    .line 703
    :catch_0
    move-exception v1

    .line 704
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v5, "View"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not complete the profiling of the view "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 709
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_0
    const/4 v3, 0x0

    aget-wide v3, v0, v3

    goto :goto_0
.end method

.method private static requestLayout(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .parameter "root"
    .parameter "parameter"

    .prologue
    .line 541
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 542
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 543
    new-instance v1, Landroid/view/ViewDebug$1;

    invoke-direct {v1, v0}, Landroid/view/ViewDebug$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 549
    :cond_0
    return-void
.end method

.method static resolveId(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 5
    .parameter "context"
    .parameter "id"

    .prologue
    .line 1321
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1322
    .local v2, resources:Landroid/content/res/Resources;
    if-ltz p1, :cond_0

    .line 1324
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1332
    .local v1, fieldValue:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1326
    .end local v1           #fieldValue:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1327
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id/0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1328
    .restart local v1       #fieldValue:Ljava/lang/String;
    goto :goto_0

    .line 1330
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v1           #fieldValue:Ljava/lang/String;
    :cond_0
    const-string v1, "NO_ID"

    .restart local v1       #fieldValue:Ljava/lang/String;
    goto :goto_0
.end method

.method private static searchSpecText(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "root"
    .parameter "clientStream"
    .parameter "text"
    .parameter "strIndex"
    .parameter "strScrWidth"
    .parameter "strScrHeight"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1746
    const/4 v4, 0x0

    .line 1750
    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-direct {v9, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v10, 0x100

    invoke-direct {v5, v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1752
    .end local v4           #out:Ljava/io/BufferedWriter;
    .local v5, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1753
    .local v1, index:I
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1754
    .local v7, scrWidth:I
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1755
    .local v6, scrHeight:I
    invoke-static {p0, p2, v1, v7, v6}, Landroid/view/EtViewFetcher;->searchSpecText(Landroid/view/View;Ljava/lang/String;III)Z

    move-result v8

    .line 1757
    .local v8, searched:Z
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1758
    .local v3, jsonArr:Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1759
    .local v2, json:Lorg/json/JSONObject;
    const-string v9, "Searched"

    invoke-virtual {v2, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1760
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1762
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1763
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1771
    if-eqz v5, :cond_2

    .line 1773
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    move-object v4, v5

    .line 1777
    .end local v1           #index:I
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v3           #jsonArr:Lorg/json/JSONArray;
    .end local v5           #out:Ljava/io/BufferedWriter;
    .end local v6           #scrHeight:I
    .end local v7           #scrWidth:I
    .end local v8           #searched:Z
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    return-void

    .line 1765
    :catch_0
    move-exception v0

    .line 1767
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v9, "EtViewDebug"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "searchText:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1771
    if-eqz v4, :cond_0

    .line 1773
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    goto :goto_0

    .line 1771
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_2
    if-eqz v4, :cond_1

    .line 1773
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    :cond_1
    throw v9

    .line 1771
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 1765
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_1

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v1       #index:I
    .restart local v2       #json:Lorg/json/JSONObject;
    .restart local v3       #jsonArr:Lorg/json/JSONArray;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    .restart local v6       #scrHeight:I
    .restart local v7       #scrWidth:I
    .restart local v8       #searched:Z
    :cond_2
    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_0
.end method

.method public static setLayoutParameter(Landroid/view/View;Ljava/lang/String;I)V
    .locals 5
    .parameter "view"
    .parameter "param"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 1837
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1838
    .local v1, p:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1839
    .local v0, f:Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_0

    .line 1840
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Only integer layout parameters can be set. Field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1844
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1846
    new-instance v2, Landroid/view/ViewDebug$9;

    invoke-direct {v2, p0, v1}, Landroid/view/ViewDebug$9;-><init>(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1852
    return-void
.end method

.method public static startHierarchyTracing(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .parameter "prefix"
    .parameter "view"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 436
    return-void
.end method

.method public static startRecyclerTracing(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .parameter "prefix"
    .parameter "view"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 412
    return-void
.end method

.method public static stopHierarchyTracing()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 443
    return-void
.end method

.method public static stopRecyclerTracing()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 420
    return-void
.end method

.method private static takeScreenshot(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 6
    .parameter "root"
    .parameter "clientStream"
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1720
    const/4 v1, 0x0

    .line 1724
    .local v1, out:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x100

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1725
    .end local v1           #out:Ljava/io/BufferedWriter;
    .local v2, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-static {p0, p2}, Landroid/view/EtViewFetcher;->takeScreenshot(Landroid/view/View;Ljava/lang/String;)V

    .line 1726
    const-string/jumbo v3, "takeScreenshot done."

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1728
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1736
    if-eqz v2, :cond_2

    .line 1738
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    move-object v1, v2

    .line 1742
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    return-void

    .line 1730
    :catch_0
    move-exception v0

    .line 1732
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v3, "EtViewDebug"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "takeScreenshot:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1736
    if-eqz v1, :cond_0

    .line 1738
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    goto :goto_0

    .line 1736
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 1738
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    :cond_1
    throw v3

    .line 1736
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 1730
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_1

    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :cond_2
    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_0
.end method

.method public static trace(Landroid/view/View;Landroid/view/ViewDebug$HierarchyTraceType;)V
    .locals 0
    .parameter "view"
    .parameter "type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 428
    return-void
.end method

.method public static varargs trace(Landroid/view/View;Landroid/view/ViewDebug$RecyclerTraceType;[I)V
    .locals 0
    .parameter "view"
    .parameter "type"
    .parameter "parameters"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 404
    return-void
.end method

.method private static writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "out"
    .parameter "prefix"
    .parameter "name"
    .parameter "suffix"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1242
    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1243
    invoke-virtual {p0, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1244
    invoke-virtual {p0, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1245
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1246
    invoke-static {p0, p4}, Landroid/view/ViewDebug;->writeValue(Ljava/io/BufferedWriter;Ljava/lang/Object;)V

    .line 1247
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(I)V

    .line 1248
    return-void
.end method

.method private static writeValue(Ljava/io/BufferedWriter;Ljava/lang/Object;)V
    .locals 4
    .parameter "out"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1336
    if-eqz p1, :cond_0

    .line 1337
    const-string v0, "[EXCEPTION]"

    .line 1339
    .local v0, output:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, "\\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1341
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1342
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1343
    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1348
    .end local v0           #output:Ljava/lang/String;
    :goto_0
    return-void

    .line 1341
    .restart local v0       #output:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1342
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1343
    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    throw v1

    .line 1346
    .end local v0           #output:Ljava/lang/String;
    :cond_0
    const-string v1, "4,null"

    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
