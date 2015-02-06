.class public Lcom/zte/security/ZTEISms;
.super Lcom/android/internal/telephony/ISms$Stub;
.source "ZTEISms.java"


# instance fields
.field private mISms:Lcom/android/internal/telephony/ISms;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .parameter "ib"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/internal/telephony/ISms$Stub;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/security/ZTEISms;->mISms:Lcom/android/internal/telephony/ISms;

    .line 18
    invoke-static {p1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/security/ZTEISms;->mISms:Lcom/android/internal/telephony/ISms;

    .line 19
    return-void
.end method


# virtual methods
.method public copyMessageToIccEf(Ljava/lang/String;I[B[B)Z
    .locals 2
    .parameter "callingPkg"
    .parameter "status"
    .parameter "pdu"
    .parameter "smsc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEISms;->mISms:Lcom/android/internal/telephony/ISms;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEf(Ljava/lang/String;I[B[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 53
    :catch_0
    move-exception v0

    .line 55
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public copyMessageToIccGetEfIndex(I[B[B)I
    .locals 2
    .parameter "status"
    .parameter "pdu"
    .parameter "smsc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 259
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEISms;->mISms:Lcom/android/internal/telephony/ISms;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->copyMessageToIccGetEfIndex(I[B[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 261
    :catch_0
    move-exception v0

    .line 263
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public disableCellBroadcast(I)Z
    .locals 2
    .parameter "messageIdentifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEISms;->mISms:Lcom/android/internal/telephony/ISms;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISms;->disableCellBroadcast(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 157
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public disableCellBroadcastRange(II)Z
    .locals 2
    .parameter "startMessageId"
    .parameter "endMessageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEISms;->mISms:Lcom/android/internal/telephony/ISms;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISms;->disableCellBroadcastRange(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 183
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public enableCellBroadcast(I)Z
    .locals 2
    .parameter "messageIdentifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEISms;->mISms:Lcom/android/internal/telephony/ISms;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISms;->enableCellBroadcast(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 144
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public enableCellBroadcastRange(II)Z
    .locals 2
    .parameter "startMessageId"
    .parameter "endMessageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEISms;->mISms:Lcom/android/internal/telephony/ISms;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISms;->enableCellBroadcastRange(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 170
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "callingPkg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEISms;->mISms:Lcom/android/internal/telephony/ISms;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 27
    :catch_0
    move-exception v0

    .line 29
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEISms;->mISms:Lcom/android/internal/telephony/ISms;

    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getImsSmsFormat()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 235
    :catch_0
    move-exception v0

    .line 237
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 2
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEISms;->mISms:Lcom/android/internal/telephony/ISms;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISms;->getPremiumSmsPermission(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 196
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getSmsCapacityOnIcc()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEISms;->mISms:Lcom/android/internal/telephony/ISms;

    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getSmsCapacityOnIcc()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 248
    :catch_0
    move-exception v0

    .line 250
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isImsSmsSupported()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEISms;->mISms:Lcom/android/internal/telephony/ISms;

    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->isImsSmsSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 222
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public processCachedLongSms()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEISms;->mISms:Lcom/android/internal/telephony/ISms;

    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->processCachedLongSms()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 276
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 9
    .parameter "callingPkg"
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/zte/security/ZTEISms;->mISms:Lcom/android/internal/telephony/ISms;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    return-void

    .line 66
    :catch_0
    move-exception v8

    .line 68
    .local v8, e:Landroid/os/RemoteException;
    throw v8
.end method

.method public sendDataWithOrigPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 10
    .parameter "callingPkg"
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "origPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/zte/security/ZTEISms;->mISms:Lcom/android/internal/telephony/ISms;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ISms;->sendDataWithOrigPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    return-void

    .line 79
    :catch_0
    move-exception v9

    .line 81
    .local v9, e:Landroid/os/RemoteException;
    throw v9
.end method

#begin
.method public sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .parameter "callingPkg"
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 116
    .local p4, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p5, sentIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    :try_start_0
    iget-object v0, p0, Lcom/zte/security/ZTEISms;->mISms:Lcom/android/internal/telephony/ISms;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

#    move/from16 v7, p7
    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    return-void

    .line 118
    :catch_0
    move-exception v7

    .line 120
    .local v7, e:Landroid/os/RemoteException;
    throw v7
.end method
#end

.method public sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V
    .locals 9
    .parameter "callingPkg"
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "isExpectMore"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 116
    .local p4, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p5, sentIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    :try_start_0
    iget-object v0, p0, Lcom/zte/security/ZTEISms;->mISms:Lcom/android/internal/telephony/ISms;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    return-void

    .line 118
    :catch_0
    move-exception v8

    .line 120
    .local v8, e:Landroid/os/RemoteException;
    throw v8
.end method

.method public sendMultipartTextWithPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ)V
    .locals 10
    .parameter "callingPkg"
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "priority"
    .parameter "isExpectMore"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;IZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 129
    .local p4, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p5, sentIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    :try_start_0
    iget-object v0, p0, Lcom/zte/security/ZTEISms;->mISms:Lcom/android/internal/telephony/ISms;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ISms;->sendMultipartTextWithPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    return-void

    .line 131
    :catch_0
    move-exception v9

    .line 133
    .local v9, e:Landroid/os/RemoteException;
    throw v9
.end method

#begin
.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .parameter "callingPkg"
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/zte/security/ZTEISms;->mISms:Lcom/android/internal/telephony/ISms;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

#    move/from16 v7, p7
    const/4 v7, 0x0


    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    return-void

    .line 92
    :catch_0
    move-exception v7

    .line 94
    .local v7, e:Landroid/os/RemoteException;
    throw v7
.end method
#end

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 9
    .parameter "callingPkg"
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "isExpectMore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/zte/security/ZTEISms;->mISms:Lcom/android/internal/telephony/ISms;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    return-void

    .line 92
    :catch_0
    move-exception v8

    .line 94
    .local v8, e:Landroid/os/RemoteException;
    throw v8
.end method

.method public sendTextWithPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZ)V
    .locals 10
    .parameter "callingPkg"
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "priority"
    .parameter "isExpectMore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/zte/security/ZTEISms;->mISms:Lcom/android/internal/telephony/ISms;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ISms;->sendTextWithPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    return-void

    .line 105
    :catch_0
    move-exception v9

    .line 107
    .local v9, e:Landroid/os/RemoteException;
    throw v9
.end method

.method public setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEISms;->mISms:Lcom/android/internal/telephony/ISms;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISms;->setPremiumSmsPermission(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public updateMessageOnIccEf(Ljava/lang/String;II[B)Z
    .locals 2
    .parameter "callingPkg"
    .parameter "messageIndex"
    .parameter "newStatus"
    .parameter "pdu"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEISms;->mISms:Lcom/android/internal/telephony/ISms;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEf(Ljava/lang/String;II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 40
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method
