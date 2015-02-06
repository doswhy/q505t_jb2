.class public abstract Lcom/caf/fmradio/IFMTransmitterService$Stub;
.super Landroid/os/Binder;
.source "IFMTransmitterService.java"

# interfaces
.implements Lcom/caf/fmradio/IFMTransmitterService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/IFMTransmitterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caf/fmradio/IFMTransmitterService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.caf.fmradio.IFMTransmitterService"

    invoke-virtual {p0, p0, v0}, Lcom/caf/fmradio/IFMTransmitterService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/caf/fmradio/IFMTransmitterService;
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
    const-string v1, "com.caf.fmradio.IFMTransmitterService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/caf/fmradio/IFMTransmitterService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/caf/fmradio/IFMTransmitterService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/caf/fmradio/IFMTransmitterService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/caf/fmradio/IFMTransmitterService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 178
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v2, "com.caf.fmradio.IFMTransmitterService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.caf.fmradio.IFMTransmitterService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMTransmitterService$Stub;->fmOn()Z

    move-result v1

    .line 49
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v1           #_result:Z
    :sswitch_2
    const-string v4, "com.caf.fmradio.IFMTransmitterService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMTransmitterService$Stub;->fmOff()Z

    move-result v1

    .line 57
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v1           #_result:Z
    :sswitch_3
    const-string v4, "com.caf.fmradio.IFMTransmitterService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMTransmitterService$Stub;->fmRestart()Z

    move-result v1

    .line 65
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 71
    .end local v1           #_result:Z
    :sswitch_4
    const-string v4, "com.caf.fmradio.IFMTransmitterService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMTransmitterService$Stub;->isFmOn()Z

    move-result v1

    .line 73
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 79
    .end local v1           #_result:Z
    :sswitch_5
    const-string v4, "com.caf.fmradio.IFMTransmitterService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMTransmitterService$Stub;->fmReconfigure()Z

    move-result v1

    .line 81
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 87
    .end local v1           #_result:Z
    :sswitch_6
    const-string v2, "com.caf.fmradio.IFMTransmitterService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/caf/fmradio/IFMTransmitterServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    move-result-object v0

    .line 90
    .local v0, _arg0:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMTransmitterService$Stub;->registerCallbacks(Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 96
    .end local v0           #_arg0:Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;
    :sswitch_7
    const-string v2, "com.caf.fmradio.IFMTransmitterService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMTransmitterService$Stub;->unregisterCallbacks()V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 103
    :sswitch_8
    const-string v4, "com.caf.fmradio.IFMTransmitterService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 106
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMTransmitterService$Stub;->tune(I)Z

    move-result v1

    .line 107
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v1, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 113
    .end local v0           #_arg0:I
    .end local v1           #_result:Z
    :sswitch_9
    const-string v4, "com.caf.fmradio.IFMTransmitterService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 116
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMTransmitterService$Stub;->searchWeakStationList(I)Z

    move-result v1

    .line 117
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v1, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 123
    .end local v0           #_arg0:I
    .end local v1           #_result:Z
    :sswitch_a
    const-string v2, "com.caf.fmradio.IFMTransmitterService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMTransmitterService$Stub;->getSearchList()[I

    move-result-object v1

    .line 125
    .local v1, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 131
    .end local v1           #_result:[I
    :sswitch_b
    const-string v4, "com.caf.fmradio.IFMTransmitterService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMTransmitterService$Stub;->cancelSearch()Z

    move-result v1

    .line 133
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v1, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 139
    .end local v1           #_result:Z
    :sswitch_c
    const-string v2, "com.caf.fmradio.IFMTransmitterService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMTransmitterService$Stub;->getRadioText()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 147
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_d
    const-string v4, "com.caf.fmradio.IFMTransmitterService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMTransmitterService$Stub;->isInternalAntennaAvailable()Z

    move-result v1

    .line 149
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    if-eqz v1, :cond_8

    move v2, v3

    :cond_8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 155
    .end local v1           #_result:Z
    :sswitch_e
    const-string v4, "com.caf.fmradio.IFMTransmitterService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMTransmitterService$Stub;->isHeadsetPlugged()Z

    move-result v1

    .line 157
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    if-eqz v1, :cond_9

    move v2, v3

    :cond_9
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 163
    .end local v1           #_result:Z
    :sswitch_f
    const-string v4, "com.caf.fmradio.IFMTransmitterService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMTransmitterService$Stub;->isCallActive()Z

    move-result v1

    .line 165
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    if-eqz v1, :cond_a

    move v2, v3

    :cond_a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 171
    .end local v1           #_result:Z
    :sswitch_10
    const-string v2, "com.caf.fmradio.IFMTransmitterService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMTransmitterService$Stub;->getPSData()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 38
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
