.class public abstract Lcom/caf/fmradio/IFMTransmitterServiceCallbacks$Stub;
.super Landroid/os/Binder;
.source "IFMTransmitterServiceCallbacks.java"

# interfaces
.implements Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caf/fmradio/IFMTransmitterServiceCallbacks$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.caf.fmradio.IFMTransmitterServiceCallbacks"

    invoke-virtual {p0, p0, v0}, Lcom/caf/fmradio/IFMTransmitterServiceCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;
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
    const-string v1, "com.caf.fmradio.IFMTransmitterServiceCallbacks"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/caf/fmradio/IFMTransmitterServiceCallbacks;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/caf/fmradio/IFMTransmitterServiceCallbacks$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/caf/fmradio/IFMTransmitterServiceCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 3
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
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v2, "com.caf.fmradio.IFMTransmitterServiceCallbacks"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.caf.fmradio.IFMTransmitterServiceCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 50
    .local v0, _arg0:Z
    :cond_0
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMTransmitterServiceCallbacks$Stub;->onEnabled(Z)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0           #_arg0:Z
    :sswitch_2
    const-string v2, "com.caf.fmradio.IFMTransmitterServiceCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMTransmitterServiceCallbacks$Stub;->onDisabled()V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    :sswitch_3
    const-string v2, "com.caf.fmradio.IFMTransmitterServiceCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMTransmitterServiceCallbacks$Stub;->onRadioReset()V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 70
    :sswitch_4
    const-string v2, "com.caf.fmradio.IFMTransmitterServiceCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMTransmitterServiceCallbacks$Stub;->onTuneStatusChanged(I)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 79
    .end local v0           #_arg0:I
    :sswitch_5
    const-string v2, "com.caf.fmradio.IFMTransmitterServiceCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMTransmitterServiceCallbacks$Stub;->onRadioTextChanged()V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 86
    :sswitch_6
    const-string v2, "com.caf.fmradio.IFMTransmitterServiceCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 89
    .local v0, _arg0:Z
    :cond_1
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMTransmitterServiceCallbacks$Stub;->onSearchListComplete(Z)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 95
    .end local v0           #_arg0:Z
    :sswitch_7
    const-string v2, "com.caf.fmradio.IFMTransmitterServiceCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMTransmitterServiceCallbacks$Stub;->onReconfigured()V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 102
    :sswitch_8
    const-string v2, "com.caf.fmradio.IFMTransmitterServiceCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMTransmitterServiceCallbacks$Stub;->onMetaDataChanged(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 111
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_9
    const-string v2, "com.caf.fmradio.IFMTransmitterServiceCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMTransmitterServiceCallbacks$Stub;->onPSInfoSent(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
