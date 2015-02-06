.class Lcom/android/internal/policy/impl/keyguard/CarrierText$2;
.super Landroid/telephony/PhoneStateListener;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/CarrierText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/CarrierText;)V
    .locals 0
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 425
    return-void
.end method

.method public onDataActivity(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 435
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 0
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 430
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;

    #setter for: Lcom/android/internal/policy/impl/keyguard/CarrierText;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->access$302(Lcom/android/internal/policy/impl/keyguard/CarrierText;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 418
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;

    #getter for: Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->access$200(Lcom/android/internal/policy/impl/keyguard/CarrierText;)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;

    #getter for: Lcom/android/internal/policy/impl/keyguard/CarrierText;->mPlmn:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->access$000(Lcom/android/internal/policy/impl/keyguard/CarrierText;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;

    #getter for: Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSpn:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->access$100(Lcom/android/internal/policy/impl/keyguard/CarrierText;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->updateCarrierText(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 420
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 0
    .parameter "signalStrength"

    .prologue
    .line 412
    return-void
.end method
