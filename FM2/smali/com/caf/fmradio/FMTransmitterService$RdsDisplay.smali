.class Lcom/caf/fmradio/FMTransmitterService$RdsDisplay;
.super Landroid/media/IRemoteControlDisplay$Stub;
.source "FMTransmitterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FMTransmitterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RdsDisplay"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/fmradio/FMTransmitterService;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/FMTransmitterService;)V
    .locals 0
    .parameter

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/caf/fmradio/FMTransmitterService$RdsDisplay;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    invoke-direct {p0}, Landroid/media/IRemoteControlDisplay$Stub;-><init>()V

    .line 1134
    return-void
.end method


# virtual methods
.method public setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "generationId"
    .parameter "metadata"
    .parameter "bitmap"

    .prologue
    .line 1156
    return-void
.end method

.method public setArtwork(ILandroid/graphics/Bitmap;)V
    .locals 0
    .parameter "generationId"
    .parameter "bitmap"

    .prologue
    .line 1152
    return-void
.end method

.method public setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    .locals 0
    .parameter "clientGeneration"
    .parameter "clientMediaIntent"
    .parameter "clearing"

    .prologue
    .line 1161
    return-void
.end method

.method public setMetadata(ILandroid/os/Bundle;)V
    .locals 1
    .parameter "generationId"
    .parameter "metadata"

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/caf/fmradio/FMTransmitterService$RdsDisplay;->this$0:Lcom/caf/fmradio/FMTransmitterService;

    #calls: Lcom/caf/fmradio/FMTransmitterService;->updateMetadata(Landroid/os/Bundle;)V
    invoke-static {v0, p2}, Lcom/caf/fmradio/FMTransmitterService;->access$1300(Lcom/caf/fmradio/FMTransmitterService;Landroid/os/Bundle;)V

    .line 1144
    return-void
.end method

.method public setPlaybackState(IIJJF)V
    .locals 0
    .parameter "generationId"
    .parameter "state"
    .parameter "stateChangeTimeMs"
    .parameter "currentPosMs"
    .parameter "speed"

    .prologue
    .line 1139
    return-void
.end method

.method public setTransportControlInfo(III)V
    .locals 0
    .parameter "generationId"
    .parameter "flags"
    .parameter "posCapabilities"

    .prologue
    .line 1148
    return-void
.end method
