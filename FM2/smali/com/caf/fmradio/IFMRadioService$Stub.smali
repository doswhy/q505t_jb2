.class public abstract Lcom/caf/fmradio/IFMRadioService$Stub;
.super Landroid/os/Binder;
.source "IFMRadioService.java"

# interfaces
.implements Lcom/caf/fmradio/IFMRadioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/IFMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caf/fmradio/IFMRadioService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p0, p0, v0}, Lcom/caf/fmradio/IFMRadioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/caf/fmradio/IFMRadioService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.caf.fmradio.IFMRadioService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/caf/fmradio/IFMRadioService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/caf/fmradio/IFMRadioService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/caf/fmradio/IFMRadioService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/caf/fmradio/IFMRadioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 635
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 42
    :sswitch_0
    const-string v5, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->fmOn()Z

    move-result v3

    .line 49
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v3, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v3           #_result:Z
    :sswitch_2
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->fmOff()Z

    move-result v3

    .line 57
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v3, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v3           #_result:Z
    :sswitch_3
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->fmRadioReset()Z

    move-result v3

    .line 65
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v3, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 71
    .end local v3           #_result:Z
    :sswitch_4
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->isFmOn()Z

    move-result v3

    .line 73
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v3, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 79
    .end local v3           #_result:Z
    :sswitch_5
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->isAnalogModeEnabled()Z

    move-result v3

    .line 81
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v3, :cond_4

    move v5, v6

    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 87
    .end local v3           #_result:Z
    :sswitch_6
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->isFmRecordingOn()Z

    move-result v3

    .line 89
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v3, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 95
    .end local v3           #_result:Z
    :sswitch_7
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->isSpeakerEnabled()Z

    move-result v3

    .line 97
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v3, :cond_6

    move v5, v6

    :cond_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 103
    .end local v3           #_result:Z
    :sswitch_8
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->fmReconfigure()Z

    move-result v3

    .line 105
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    if-eqz v3, :cond_7

    move v5, v6

    :cond_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 111
    .end local v3           #_result:Z
    :sswitch_9
    const-string v5, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    move-result-object v0

    .line 114
    .local v0, _arg0:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMRadioService$Stub;->registerCallbacks(Lcom/caf/fmradio/IFMRadioServiceCallbacks;)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 120
    .end local v0           #_arg0:Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    :sswitch_a
    const-string v5, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->unregisterCallbacks()V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 127
    :sswitch_b
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->mute()Z

    move-result v3

    .line 129
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    if-eqz v3, :cond_8

    move v5, v6

    :cond_8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 135
    .end local v3           #_result:Z
    :sswitch_c
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 138
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMRadioService$Stub;->routeAudio(I)Z

    move-result v3

    .line 139
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    if-eqz v3, :cond_9

    move v5, v6

    :cond_9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 145
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_d
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->unMute()Z

    move-result v3

    .line 147
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v3, :cond_a

    move v5, v6

    :cond_a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 153
    .end local v3           #_result:Z
    :sswitch_e
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->isMuted()Z

    move-result v3

    .line 155
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v3, :cond_b

    move v5, v6

    :cond_b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 161
    .end local v3           #_result:Z
    :sswitch_f
    const-string v5, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->startRecording()V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 168
    :sswitch_10
    const-string v5, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->stopRecording()V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 175
    :sswitch_11
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 178
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMRadioService$Stub;->tune(I)Z

    move-result v3

    .line 179
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    if-eqz v3, :cond_c

    move v5, v6

    :cond_c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 185
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_12
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_e

    move v0, v6

    .line 188
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMRadioService$Stub;->seek(Z)Z

    move-result v3

    .line 189
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    if-eqz v3, :cond_d

    move v5, v6

    :cond_d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_e
    move v0, v5

    .line 187
    goto :goto_1

    .line 195
    :sswitch_13
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_f

    move v0, v6

    .line 198
    .restart local v0       #_arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMRadioService$Stub;->enableSpeaker(Z)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_f
    move v0, v5

    .line 197
    goto :goto_2

    .line 204
    :sswitch_14
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 207
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMRadioService$Stub;->scan(I)Z

    move-result v3

    .line 208
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v3, :cond_10

    move v5, v6

    :cond_10
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 214
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_15
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 217
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMRadioService$Stub;->seekPI(I)Z

    move-result v3

    .line 218
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v3, :cond_11

    move v5, v6

    :cond_11
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 224
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_16
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 227
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMRadioService$Stub;->searchStrongStationList(I)Z

    move-result v3

    .line 228
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    if-eqz v3, :cond_12

    move v5, v6

    :cond_12
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 234
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_17
    const-string v5, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->getSearchList()[I

    move-result-object v3

    .line 236
    .local v3, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 242
    .end local v3           #_result:[I
    :sswitch_18
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->cancelSearch()Z

    move-result v3

    .line 244
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    if-eqz v3, :cond_13

    move v5, v6

    :cond_13
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 250
    .end local v3           #_result:Z
    :sswitch_19
    const-string v5, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->getProgramService()Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 258
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_1a
    const-string v5, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->getRadioText()Ljava/lang/String;

    move-result-object v3

    .line 260
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 266
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_1b
    const-string v5, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->getProgramType()I

    move-result v3

    .line 268
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 274
    .end local v3           #_result:I
    :sswitch_1c
    const-string v5, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->getProgramID()I

    move-result v3

    .line 276
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 282
    .end local v3           #_result:I
    :sswitch_1d
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_15

    move v0, v6

    .line 285
    .local v0, _arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMRadioService$Stub;->setLowPowerMode(Z)Z

    move-result v3

    .line 286
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    if-eqz v3, :cond_14

    move v5, v6

    :cond_14
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_15
    move v0, v5

    .line 284
    goto :goto_3

    .line 292
    :sswitch_1e
    const-string v5, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->getPowerMode()I

    move-result v3

    .line 294
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 300
    .end local v3           #_result:I
    :sswitch_1f
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_17

    move v0, v6

    .line 303
    .restart local v0       #_arg0:Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMRadioService$Stub;->enableAutoAF(Z)Z

    move-result v3

    .line 304
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    if-eqz v3, :cond_16

    move v5, v6

    :cond_16
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_17
    move v0, v5

    .line 302
    goto :goto_4

    .line 310
    :sswitch_20
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_19

    move v0, v6

    .line 313
    .restart local v0       #_arg0:Z
    :goto_5
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMRadioService$Stub;->enableStereo(Z)Z

    move-result v3

    .line 314
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    if-eqz v3, :cond_18

    move v5, v6

    :cond_18
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_19
    move v0, v5

    .line 312
    goto :goto_5

    .line 320
    :sswitch_21
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->isAntennaAvailable()Z

    move-result v3

    .line 322
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    if-eqz v3, :cond_1a

    move v5, v6

    :cond_1a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 328
    .end local v3           #_result:Z
    :sswitch_22
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->isWiredHeadsetAvailable()Z

    move-result v3

    .line 330
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    if-eqz v3, :cond_1b

    move v5, v6

    :cond_1b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 336
    .end local v3           #_result:Z
    :sswitch_23
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->isCallActive()Z

    move-result v3

    .line 338
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    if-eqz v3, :cond_1c

    move v5, v6

    :cond_1c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 344
    .end local v3           #_result:Z
    :sswitch_24
    const-string v5, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->getRssi()I

    move-result v3

    .line 346
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 352
    .end local v3           #_result:I
    :sswitch_25
    const-string v5, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->getIoC()I

    move-result v3

    .line 354
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 360
    .end local v3           #_result:I
    :sswitch_26
    const-string v5, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->getMpxDcc()I

    move-result v3

    .line 362
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 368
    .end local v3           #_result:I
    :sswitch_27
    const-string v5, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->getIntDet()I

    move-result v3

    .line 370
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 376
    .end local v3           #_result:I
    :sswitch_28
    const-string v5, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->getSINR()I

    move-result v3

    .line 378
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 384
    .end local v3           #_result:I
    :sswitch_29
    const-string v5, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 387
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMRadioService$Stub;->setHiLoInj(I)V

    .line 388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 393
    .end local v0           #_arg0:I
    :sswitch_2a
    const-string v5, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 397
    .local v0, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 398
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/caf/fmradio/IFMRadioService$Stub;->delayedStop(JI)V

    .line 399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 404
    .end local v0           #_arg0:J
    .end local v2           #_arg1:I
    :sswitch_2b
    const-string v5, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 407
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMRadioService$Stub;->cancelDelayedStop(I)V

    .line 408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 413
    .end local v0           #_arg0:I
    :sswitch_2c
    const-string v5, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->requestFocus()V

    .line 415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 420
    :sswitch_2d
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 423
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMRadioService$Stub;->setSinrSamplesCnt(I)Z

    move-result v3

    .line 424
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    if-eqz v3, :cond_1d

    move v5, v6

    :cond_1d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 430
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_2e
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 433
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMRadioService$Stub;->setSinrTh(I)Z

    move-result v3

    .line 434
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    if-eqz v3, :cond_1e

    move v5, v6

    :cond_1e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 440
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_2f
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 443
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMRadioService$Stub;->setIntfDetLowTh(I)Z

    move-result v3

    .line 444
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    if-eqz v3, :cond_1f

    move v5, v6

    :cond_1f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 450
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_30
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 453
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMRadioService$Stub;->setIntfDetHighTh(I)Z

    move-result v3

    .line 454
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    if-eqz v3, :cond_20

    move v5, v6

    :cond_20
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 460
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_31
    const-string v5, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->getExtenRadioText()Ljava/lang/String;

    move-result-object v3

    .line 462
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 468
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_32
    const-string v5, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->getSinrSamplesCnt()I

    move-result v3

    .line 470
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 476
    .end local v3           #_result:I
    :sswitch_33
    const-string v5, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->getSinrTh()I

    move-result v3

    .line 478
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 484
    .end local v3           #_result:I
    :sswitch_34
    const-string v5, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->getSearchAlgoType()I

    move-result v3

    .line 486
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 492
    .end local v3           #_result:I
    :sswitch_35
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 495
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMRadioService$Stub;->setSearchAlgoType(I)Z

    move-result v3

    .line 496
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    if-eqz v3, :cond_21

    move v5, v6

    :cond_21
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 502
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_36
    const-string v5, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->getSinrFirstStage()I

    move-result v3

    .line 504
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 510
    .end local v3           #_result:I
    :sswitch_37
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 513
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMRadioService$Stub;->setSinrFirstStage(I)Z

    move-result v3

    .line 514
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    if-eqz v3, :cond_22

    move v5, v6

    :cond_22
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 520
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_38
    const-string v5, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->getRmssiFirstStage()I

    move-result v3

    .line 522
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 528
    .end local v3           #_result:I
    :sswitch_39
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 531
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMRadioService$Stub;->setRmssiFirstStage(I)Z

    move-result v3

    .line 532
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    if-eqz v3, :cond_23

    move v5, v6

    :cond_23
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 538
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_3a
    const-string v5, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->getCFOMeanTh()I

    move-result v3

    .line 540
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 546
    .end local v3           #_result:I
    :sswitch_3b
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 549
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMRadioService$Stub;->setCFOMeanTh(I)Z

    move-result v3

    .line 550
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    if-eqz v3, :cond_24

    move v5, v6

    :cond_24
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 556
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_3c
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 559
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMRadioService$Stub;->setAfJmpRmssiTh(I)Z

    move-result v3

    .line 560
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    if-eqz v3, :cond_25

    move v5, v6

    :cond_25
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 566
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_3d
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 569
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMRadioService$Stub;->setGoodChRmssiTh(I)Z

    move-result v3

    .line 570
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    if-eqz v3, :cond_26

    move v5, v6

    :cond_26
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 576
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_3e
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 579
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMRadioService$Stub;->setAfJmpRmssiSamplesCnt(I)Z

    move-result v3

    .line 580
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    if-eqz v3, :cond_27

    move v5, v6

    :cond_27
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 586
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_3f
    const-string v5, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->getAfJmpRmssiTh()I

    move-result v3

    .line 588
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 594
    .end local v3           #_result:I
    :sswitch_40
    const-string v5, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->getGoodChRmssiTh()I

    move-result v3

    .line 596
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 602
    .end local v3           #_result:I
    :sswitch_41
    const-string v5, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->getAfJmpRmssiSamplesCnt()I

    move-result v3

    .line 604
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 610
    .end local v3           #_result:I
    :sswitch_42
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 613
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMRadioService$Stub;->setRxRepeatCount(I)Z

    move-result v3

    .line 614
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    if-eqz v3, :cond_28

    move v5, v6

    :cond_28
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 620
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_43
    const-string v5, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->getRecordingStartTime()J

    move-result-wide v3

    .line 622
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 628
    .end local v3           #_result:J
    :sswitch_44
    const-string v7, "com.caf.fmradio.IFMRadioService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioService$Stub;->isSleepTimerActive()Z

    move-result v3

    .line 630
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    if-eqz v3, :cond_29

    move v5, v6

    :cond_29
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
