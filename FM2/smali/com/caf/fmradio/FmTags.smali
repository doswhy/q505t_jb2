.class public Lcom/caf/fmradio/FmTags;
.super Landroid/app/Activity;
.source "FmTags.java"


# instance fields
.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private itr:Ljava/util/Iterator;

.field private la:Landroid/widget/ListView;

.field final mDisplayTagList:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/caf/fmradio/FmTags;->mHandler:Landroid/os/Handler;

    .line 79
    new-instance v0, Lcom/caf/fmradio/FmTags$1;

    invoke-direct {v0, p0}, Lcom/caf/fmradio/FmTags$1;-><init>(Lcom/caf/fmradio/FmTags;)V

    iput-object v0, p0, Lcom/caf/fmradio/FmTags;->mDisplayTagList:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/caf/fmradio/FmTags;)Ljava/util/Iterator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/caf/fmradio/FmTags;->itr:Ljava/util/Iterator;

    return-object v0
.end method

.method static synthetic access$002(Lcom/caf/fmradio/FmTags;Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/caf/fmradio/FmTags;->itr:Ljava/util/Iterator;

    return-object p1
.end method

.method static synthetic access$100(Lcom/caf/fmradio/FmTags;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/caf/fmradio/FmTags;->adapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/caf/fmradio/FmTags;Landroid/widget/ArrayAdapter;)Landroid/widget/ArrayAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/caf/fmradio/FmTags;->adapter:Landroid/widget/ArrayAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/caf/fmradio/FmTags;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/caf/fmradio/FmTags;->la:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FmTags;->setContentView(I)V

    .line 68
    const v0, 0x7f090028

    invoke-virtual {p0, v0}, Lcom/caf/fmradio/FmTags;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/caf/fmradio/FmTags;->la:Landroid/widget/ListView;

    .line 69
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 77
    iget-object v0, p0, Lcom/caf/fmradio/FmTags;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/caf/fmradio/FmTags;->mDisplayTagList:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 73
    return-void
.end method
