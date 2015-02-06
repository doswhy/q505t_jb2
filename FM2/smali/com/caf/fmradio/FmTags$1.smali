.class Lcom/caf/fmradio/FmTags$1;
.super Ljava/lang/Object;
.source "FmTags.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FmTags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/fmradio/FmTags;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/FmTags;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/caf/fmradio/FmTags$1;->this$0:Lcom/caf/fmradio/FmTags;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 82
    const/4 v1, 0x0

    .line 84
    .local v1, l:I
    sget v4, Lcom/caf/fmradio/FmSharedPreferences;->num_tags:I

    new-array v3, v4, [Ljava/lang/String;

    .line 85
    .local v3, tags:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v4, 0x40

    if-ge v0, v4, :cond_1

    .line 86
    sget-object v4, Lcom/caf/fmradio/FmSharedPreferences;->tagList:[Ljava/util/Set;

    aget-object v4, v4, v0

    if-eqz v4, :cond_0

    .line 87
    iget-object v4, p0, Lcom/caf/fmradio/FmTags$1;->this$0:Lcom/caf/fmradio/FmTags;

    sget-object v5, Lcom/caf/fmradio/FmSharedPreferences;->tagList:[Ljava/util/Set;

    aget-object v5, v5, v0

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    #setter for: Lcom/caf/fmradio/FmTags;->itr:Ljava/util/Iterator;
    invoke-static {v4, v5}, Lcom/caf/fmradio/FmTags;->access$002(Lcom/caf/fmradio/FmTags;Ljava/util/Iterator;)Ljava/util/Iterator;

    .line 88
    :goto_1
    iget-object v4, p0, Lcom/caf/fmradio/FmTags$1;->this$0:Lcom/caf/fmradio/FmTags;

    #getter for: Lcom/caf/fmradio/FmTags;->itr:Ljava/util/Iterator;
    invoke-static {v4}, Lcom/caf/fmradio/FmTags;->access$000(Lcom/caf/fmradio/FmTags;)Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    add-int/lit8 v2, v1, 0x1

    .end local v1           #l:I
    .local v2, l:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/caf/fmradio/FmSharedPreferences;->TAG_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/caf/fmradio/FmTags$1;->this$0:Lcom/caf/fmradio/FmTags;

    #getter for: Lcom/caf/fmradio/FmTags;->itr:Ljava/util/Iterator;
    invoke-static {v4}, Lcom/caf/fmradio/FmTags;->access$000(Lcom/caf/fmradio/FmTags;)Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    move v1, v2

    .end local v2           #l:I
    .restart local v1       #l:I
    goto :goto_1

    .line 85
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_1
    iget-object v4, p0, Lcom/caf/fmradio/FmTags$1;->this$0:Lcom/caf/fmradio/FmTags;

    new-instance v5, Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/caf/fmradio/FmTags$1;->this$0:Lcom/caf/fmradio/FmTags;

    #getter for: Lcom/caf/fmradio/FmTags;->la:Landroid/widget/ListView;
    invoke-static {v6}, Lcom/caf/fmradio/FmTags;->access$200(Lcom/caf/fmradio/FmTags;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x1090003

    invoke-direct {v5, v6, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    #setter for: Lcom/caf/fmradio/FmTags;->adapter:Landroid/widget/ArrayAdapter;
    invoke-static {v4, v5}, Lcom/caf/fmradio/FmTags;->access$102(Lcom/caf/fmradio/FmTags;Landroid/widget/ArrayAdapter;)Landroid/widget/ArrayAdapter;

    .line 94
    iget-object v4, p0, Lcom/caf/fmradio/FmTags$1;->this$0:Lcom/caf/fmradio/FmTags;

    #getter for: Lcom/caf/fmradio/FmTags;->la:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/caf/fmradio/FmTags;->access$200(Lcom/caf/fmradio/FmTags;)Landroid/widget/ListView;

    move-result-object v4

    iget-object v5, p0, Lcom/caf/fmradio/FmTags$1;->this$0:Lcom/caf/fmradio/FmTags;

    #getter for: Lcom/caf/fmradio/FmTags;->adapter:Landroid/widget/ArrayAdapter;
    invoke-static {v5}, Lcom/caf/fmradio/FmTags;->access$100(Lcom/caf/fmradio/FmTags;)Landroid/widget/ArrayAdapter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    return-void
.end method
