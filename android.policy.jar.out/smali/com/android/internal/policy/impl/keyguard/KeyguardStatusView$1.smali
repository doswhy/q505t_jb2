.class Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView$1;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardStatusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method onKeyguardVisibilityChanged(Z)V
    .locals 1
    .parameter "showing"

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->refresh()V

    .line 69
    :cond_0
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->refresh()V

    .line 61
    return-void
.end method
