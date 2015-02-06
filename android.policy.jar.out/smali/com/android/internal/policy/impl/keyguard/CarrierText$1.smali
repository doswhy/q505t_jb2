.class Lcom/android/internal/policy/impl/keyguard/CarrierText$1;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
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
    .line 68
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method onAirplaneModeChanged(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;

    iput-boolean p1, v0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mAirplaneMode:Z

    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;

    #getter for: Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->access$200(Lcom/android/internal/policy/impl/keyguard/CarrierText;)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;

    #getter for: Lcom/android/internal/policy/impl/keyguard/CarrierText;->mPlmn:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->access$000(Lcom/android/internal/policy/impl/keyguard/CarrierText;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;

    #getter for: Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSpn:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->access$100(Lcom/android/internal/policy/impl/keyguard/CarrierText;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->updateCarrierText(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 76
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 83
    .local v0, tm:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;

    #setter for: Lcom/android/internal/policy/impl/keyguard/CarrierText;->mPlmn:Ljava/lang/CharSequence;
    invoke-static {v1, p1}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->access$002(Lcom/android/internal/policy/impl/keyguard/CarrierText;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 84
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;

    #setter for: Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSpn:Ljava/lang/CharSequence;
    invoke-static {v1, p2}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->access$102(Lcom/android/internal/policy/impl/keyguard/CarrierText;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 85
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;

    #getter for: Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->access$200(Lcom/android/internal/policy/impl/keyguard/CarrierText;)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;

    #getter for: Lcom/android/internal/policy/impl/keyguard/CarrierText;->mPlmn:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->access$000(Lcom/android/internal/policy/impl/keyguard/CarrierText;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;

    #getter for: Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSpn:Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->access$100(Lcom/android/internal/policy/impl/keyguard/CarrierText;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->updateCarrierText(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 86
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 4
    .parameter "simState"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;

    #setter for: Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->access$202(Lcom/android/internal/policy/impl/keyguard/CarrierText;Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/telephony/IccCardConstants$State;

    .line 91
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;

    #getter for: Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->access$200(Lcom/android/internal/policy/impl/keyguard/CarrierText;)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;

    #getter for: Lcom/android/internal/policy/impl/keyguard/CarrierText;->mPlmn:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->access$000(Lcom/android/internal/policy/impl/keyguard/CarrierText;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;

    #getter for: Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSpn:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->access$100(Lcom/android/internal/policy/impl/keyguard/CarrierText;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->updateCarrierText(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method
