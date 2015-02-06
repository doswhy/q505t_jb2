.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4$1;
.super Ljava/lang/Object;
.source "KeyguardSimPukView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->onSimLockChangedResponse(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;

    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4$1;->val$result:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 296
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 299
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4$1;->val$result:I

    if-nez v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 311
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mCheckInProgress:Z

    .line 312
    return-void

    .line 302
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4$1;->val$result:I

    if-ne v0, v2, :cond_2

    .line 303
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x104058a

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 309
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->reset(Z)V

    goto :goto_0

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x104031f

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_1
.end method
