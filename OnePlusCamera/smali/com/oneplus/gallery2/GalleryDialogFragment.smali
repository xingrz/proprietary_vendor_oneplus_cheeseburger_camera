.class public abstract Lcom/oneplus/gallery2/GalleryDialogFragment;
.super Landroid/app/DialogFragment;
.source "GalleryDialogFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GalleryDialogFragment"


# instance fields
.field private final m_ActivityStateCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_BaseActivity:Lcom/oneplus/base/BaseActivity;

.field private m_DialogHandle:Lcom/oneplus/base/Handle;

.field private m_DialogShowLater:Z

.field private m_FragmentTag:Ljava/lang/String;

.field private m_IsDismissDelayed:Z

.field private m_IsInstanceStateSaved:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    new-instance v0, Lcom/oneplus/gallery2/GalleryDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/GalleryDialogFragment$1;-><init>(Lcom/oneplus/gallery2/GalleryDialogFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/GalleryDialogFragment;->m_ActivityStateCallback:Lcom/oneplus/base/PropertyChangedCallback;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/GalleryDialogFragment;->setRetainInstance(Z)V

    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/GalleryDialogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/gallery2/GalleryDialogFragment;->m_DialogShowLater:Z

    return v0
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/GalleryDialogFragment;)Lcom/oneplus/base/BaseActivity;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryDialogFragment;->m_BaseActivity:Lcom/oneplus/base/BaseActivity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/oneplus/gallery2/GalleryDialogFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryDialogFragment;->m_FragmentTag:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/oneplus/gallery2/GalleryDialogFragment;->m_DialogShowLater:Z

    if-eqz v0, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/oneplus/gallery2/GalleryDialogFragment;->m_DialogShowLater:Z

    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryDialogFragment;->m_BaseActivity:Lcom/oneplus/base/BaseActivity;

    sget-object v1, Lcom/oneplus/base/BaseActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/GalleryDialogFragment;->m_ActivityStateCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/BaseActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->dismiss()V

    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryDialogFragment;->m_DialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/GalleryDialogFragment;->m_DialogHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method public dismissAllowingStateLoss()V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/gallery2/GalleryDialogFragment;->m_IsInstanceStateSaved:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-super {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryDialogFragment;->m_DialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/GalleryDialogFragment;->m_DialogHandle:Lcom/oneplus/base/Handle;

    return-void

    :cond_0
    const-string/jumbo v0, "GalleryDialogFragment"

    const-string/jumbo v1, "dismissAllowingStateLoss() - Dismiss after saving instance state"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/GalleryDialogFragment;->m_IsDismissDelayed:Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GalleryDialogFragment"

    const-string/jumbo v2, "dismissAllowingStateLoss() - Error when dismiss dialog fragment"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/GalleryActivity;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    iget-boolean v0, p0, Lcom/oneplus/gallery2/GalleryDialogFragment;->m_IsDismissDelayed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryDialogFragment;->m_DialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "GalleryDialogFragment"

    const-string/jumbo v1, "onAttach() - Dismiss"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/oneplus/gallery2/GalleryDialogFragment;->m_IsDismissDelayed:Z

    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryDialogFragment;->dismiss()V

    return-void

    :cond_1
    check-cast p1, Lcom/oneplus/gallery2/GalleryActivity;

    invoke-virtual {p1}, Lcom/oneplus/gallery2/GalleryActivity;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery2/Gallery;->notifyShowDialog()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/GalleryDialogFragment;->m_DialogHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryDialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryDialogFragment;->m_DialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/GalleryDialogFragment;->m_DialogHandle:Lcom/oneplus/base/Handle;

    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    iput-boolean v2, p0, Lcom/oneplus/gallery2/GalleryDialogFragment;->m_IsInstanceStateSaved:Z

    iget-boolean v0, p0, Lcom/oneplus/gallery2/GalleryDialogFragment;->m_IsDismissDelayed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "GalleryDialogFragment"

    const-string/jumbo v1, "onResume() - Dismiss"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/oneplus/gallery2/GalleryDialogFragment;->m_IsDismissDelayed:Z

    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryDialogFragment;->dismiss()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/GalleryDialogFragment;->m_IsInstanceStateSaved:Z

    return-void
.end method

.method public show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "GalleryDialogFragment"

    const-string/jumbo v1, "show(FragmentTransaction...) - this method is deprecated, use show(BaseActivity baseActivity...) instead"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "GalleryDialogFragment"

    const-string/jumbo v1, "show(FragmentManager...) - this method is deprecated, use show(BaseActivity baseActivity...) instead"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public show(Lcom/oneplus/base/BaseActivity;Ljava/lang/String;)V
    .locals 2

    iput-object p2, p0, Lcom/oneplus/gallery2/GalleryDialogFragment;->m_FragmentTag:Ljava/lang/String;

    iput-object p1, p0, Lcom/oneplus/gallery2/GalleryDialogFragment;->m_BaseActivity:Lcom/oneplus/base/BaseActivity;

    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1, v0}, Lcom/oneplus/base/BaseActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/base/BaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-super {p0, v0, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "GalleryDialogFragment"

    const-string/jumbo v1, "show() - activity is not running, show later"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/GalleryDialogFragment;->m_DialogShowLater:Z

    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryDialogFragment;->m_ActivityStateCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/base/BaseActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    return-void
.end method
