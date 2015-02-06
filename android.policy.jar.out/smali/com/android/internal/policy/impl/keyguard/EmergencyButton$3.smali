.class Lcom/android/internal/policy/impl/keyguard/EmergencyButton$3;
.super Landroid/telephony/PhoneStateListener;
.source "EmergencyButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/EmergencyButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$3;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 194
    const-string v2, "EmergencyButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceStateChanged:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$3;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    #setter for: Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v2, p1}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->access$302(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 196
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$3;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->access$400(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    .line 197
    .local v0, phoneState:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$3;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->access$500(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 198
    .local v1, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$3;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    #calls: Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    invoke-static {v2, v1, v0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->access$100(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 200
    return-void
.end method
