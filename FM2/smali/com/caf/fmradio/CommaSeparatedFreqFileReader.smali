.class public Lcom/caf/fmradio/CommaSeparatedFreqFileReader;
.super Ljava/lang/Object;
.source "CommaSeparatedFreqFileReader.java"

# interfaces
.implements Lcom/caf/fmradio/GetNextFreqInterface;


# instance fields
.field private errorHasOcurred:Z

.field private fileName:Ljava/lang/String;

.field private freqList:[Ljava/lang/String;

.field private index:I

.field private reader:Ljava/io/BufferedReader;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "fileName"

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/caf/fmradio/CommaSeparatedFreqFileReader;->fileName:Ljava/lang/String;

    .line 72
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lcom/caf/fmradio/CommaSeparatedFreqFileReader;->fileName:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lcom/caf/fmradio/CommaSeparatedFreqFileReader;->reader:Ljava/io/BufferedReader;

    .line 73
    invoke-direct {p0}, Lcom/caf/fmradio/CommaSeparatedFreqFileReader;->readLineAndParse()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/caf/fmradio/CommaSeparatedFreqFileReader;->errorHasOcurred:Z

    .line 76
    const-string v1, "COMMA_SEPARATED_FREQ_PARSER"

    const-string v2, "File not found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readLineAndParse()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 82
    iget-object v2, p0, Lcom/caf/fmradio/CommaSeparatedFreqFileReader;->reader:Ljava/io/BufferedReader;

    if-eqz v2, :cond_1

    .line 84
    :try_start_0
    iget-object v2, p0, Lcom/caf/fmradio/CommaSeparatedFreqFileReader;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, curLine:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 85
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/caf/fmradio/CommaSeparatedFreqFileReader;->freqList:[Ljava/lang/String;

    .line 97
    .end local v0           #curLine:Ljava/lang/String;
    :goto_0
    return-void

    .line 87
    .restart local v0       #curLine:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/caf/fmradio/CommaSeparatedFreqFileReader;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 88
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/caf/fmradio/CommaSeparatedFreqFileReader;->reader:Ljava/io/BufferedReader;

    .line 89
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/caf/fmradio/CommaSeparatedFreqFileReader;->errorHasOcurred:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    .end local v0           #curLine:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 92
    .local v1, e:Ljava/lang/Exception;
    iput-boolean v3, p0, Lcom/caf/fmradio/CommaSeparatedFreqFileReader;->errorHasOcurred:Z

    goto :goto_0

    .line 95
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    iput-boolean v3, p0, Lcom/caf/fmradio/CommaSeparatedFreqFileReader;->errorHasOcurred:Z

    goto :goto_0
.end method


# virtual methods
.method public Stop()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/caf/fmradio/CommaSeparatedFreqFileReader;->reader:Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/caf/fmradio/CommaSeparatedFreqFileReader;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caf/fmradio/CommaSeparatedFreqFileReader;->reader:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/caf/fmradio/CommaSeparatedFreqFileReader;->errorHasOcurred:Z

    .line 109
    :cond_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public errorOccured()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/caf/fmradio/CommaSeparatedFreqFileReader;->errorHasOcurred:Z

    return v0
.end method

.method public getNextFreq()I
    .locals 5

    .prologue
    const v2, 0x7fffffff

    .line 45
    const v1, 0x7fffffff

    .line 47
    .local v1, freq:I
    const-string v3, "COMMA_SEPARATED_FREQ_PARSER"

    const-string v4, "Inside function get freq"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-boolean v3, p0, Lcom/caf/fmradio/CommaSeparatedFreqFileReader;->errorHasOcurred:Z

    if-nez v3, :cond_1

    .line 49
    iget v3, p0, Lcom/caf/fmradio/CommaSeparatedFreqFileReader;->index:I

    iget-object v4, p0, Lcom/caf/fmradio/CommaSeparatedFreqFileReader;->freqList:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 51
    :try_start_0
    iget-object v2, p0, Lcom/caf/fmradio/CommaSeparatedFreqFileReader;->freqList:[Ljava/lang/String;

    iget v3, p0, Lcom/caf/fmradio/CommaSeparatedFreqFileReader;->index:I

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/high16 v3, 0x447a

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 55
    :goto_0
    iget v2, p0, Lcom/caf/fmradio/CommaSeparatedFreqFileReader;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/caf/fmradio/CommaSeparatedFreqFileReader;->index:I

    .line 56
    iget v2, p0, Lcom/caf/fmradio/CommaSeparatedFreqFileReader;->index:I

    iget-object v3, p0, Lcom/caf/fmradio/CommaSeparatedFreqFileReader;->freqList:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 57
    const/4 v2, 0x0

    iput v2, p0, Lcom/caf/fmradio/CommaSeparatedFreqFileReader;->index:I

    .line 58
    invoke-direct {p0}, Lcom/caf/fmradio/CommaSeparatedFreqFileReader;->readLineAndParse()V

    :cond_0
    move v2, v1

    .line 65
    :cond_1
    return v2

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "COMMA_SEPARATED_FREQ_PARSER"

    const-string v3, "Format exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
