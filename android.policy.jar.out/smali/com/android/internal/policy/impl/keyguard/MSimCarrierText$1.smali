.class Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "MSimCarrierText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method onAirplaneModeChanged(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    iput-boolean p1, v0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mAirplaneMode:Z

    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->access$200(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)[Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mPlmn:[Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->access$000(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)[Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mSpn:[Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->access$100(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->updateCarrierText([Lcom/android/internal/telephony/IccCardConstants$State;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 6
    .parameter "plmn"
    .parameter "spn"
    .parameter "sub"

    .prologue
    .line 47
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    .line 49
    .local v1, tm:Landroid/telephony/MSimTelephonyManager;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mAirplaneMode:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v1, p3}, Landroid/telephony/MSimTelephonyManager;->getVoiceNetworkType(I)I

    move-result v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .line 51
    .local v0, show3G:Z
    :goto_0
    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 3G"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 53
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mPlmn:[Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->access$000(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)[Ljava/lang/CharSequence;

    move-result-object v2

    aput-object p1, v2, p3

    .line 54
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mSpn:[Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->access$100(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)[Ljava/lang/CharSequence;

    move-result-object v2

    aput-object p2, v2, p3

    .line 55
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->access$200(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)[Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mPlmn:[Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->access$000(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)[Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mSpn:[Ljava/lang/CharSequence;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->access$100(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)[Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->updateCarrierText([Lcom/android/internal/telephony/IccCardConstants$State;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 56
    return-void

    .line 49
    .end local v0           #show3G:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 4
    .parameter "simState"
    .parameter "sub"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->access$200(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)[Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    aput-object p1, v0, p2

    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->access$200(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)[Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mPlmn:[Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->access$000(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)[Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mSpn:[Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->access$100(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->updateCarrierText([Lcom/android/internal/telephony/IccCardConstants$State;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method
