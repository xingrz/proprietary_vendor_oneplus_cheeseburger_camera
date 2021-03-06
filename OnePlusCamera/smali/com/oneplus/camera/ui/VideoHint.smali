.class final Lcom/oneplus/camera/ui/VideoHint;
.super Lcom/oneplus/camera/UIComponent;
.source "VideoHint.java"


# static fields
.field private static final MESSAGE_HIDE_SCREEN_HINT:I = 0x3e8


# instance fields
.field private m_CaptureMode:Lcom/oneplus/camera/capturemode/CaptureModeManager;

.field private m_EnableHint:Z

.field protected m_HideVideoHintImage:Z

.field private m_Hint:Ljava/lang/String;

.field private m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

.field private m_Rotation:Lcom/oneplus/base/Rotation;

.field private m_Status:Z

.field private m_Type:Lcom/oneplus/camera/media/MediaType;

.field private m_VideoCaptureState:Lcom/oneplus/camera/VideoCaptureState;

.field private m_VideoHintImage:Landroid/view/View;

.field private m_VideoOnScreenHint:Lcom/oneplus/base/Handle;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/ui/VideoHint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/VideoHint;->m_EnableHint:Z

    return v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/ui/VideoHint;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/VideoHint;->m_VideoHintImage:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/oneplus/camera/ui/VideoHint;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/VideoHint;->m_EnableHint:Z

    return p1
.end method

.method static synthetic -set1(Lcom/oneplus/camera/ui/VideoHint;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/VideoHint;->m_Status:Z

    return p1
.end method

.method static synthetic -set2(Lcom/oneplus/camera/ui/VideoHint;Lcom/oneplus/camera/media/MediaType;)Lcom/oneplus/camera/media/MediaType;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/VideoHint;->m_Type:Lcom/oneplus/camera/media/MediaType;

    return-object p1
.end method

.method static synthetic -set3(Lcom/oneplus/camera/ui/VideoHint;Lcom/oneplus/camera/VideoCaptureState;)Lcom/oneplus/camera/VideoCaptureState;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/VideoHint;->m_VideoCaptureState:Lcom/oneplus/camera/VideoCaptureState;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/ui/VideoHint;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/VideoHint;->updateVideoHint()V

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "Video Hint"

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    iput-boolean v1, p0, Lcom/oneplus/camera/ui/VideoHint;->m_EnableHint:Z

    return-void
.end method

.method private updateVideoHint()V
    .locals 7

    const/16 v6, 0x3e8

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/VideoHint;->m_EnableHint:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/camera/ui/VideoHint;->m_Rotation:Lcom/oneplus/base/Rotation;

    sget-object v1, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/VideoHint;->m_Rotation:Lcom/oneplus/base/Rotation;

    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    if-ne v0, v1, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/VideoHint;->m_Type:Lcom/oneplus/camera/media/MediaType;

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/VideoHint;->m_Status:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/camera/ui/VideoHint;->m_VideoCaptureState:Lcom/oneplus/camera/VideoCaptureState;

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v0, v1, :cond_4

    iput-boolean v4, p0, Lcom/oneplus/camera/ui/VideoHint;->m_EnableHint:Z

    iget-object v0, p0, Lcom/oneplus/camera/ui/VideoHint;->m_VideoHintImage:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/camera/ui/VideoHint;->m_VideoHintImage:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/oneplus/camera/ui/VideoHint;->m_VideoHintImage:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    iget-object v0, p0, Lcom/oneplus/camera/ui/VideoHint;->m_VideoHintImage:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/ui/VideoHint$6;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/VideoHint$6;-><init>(Lcom/oneplus/camera/ui/VideoHint;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    sget v0, Lcom/oneplus/camera/BuildFlags;->ROM_VERSION:I

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/ui/VideoHint;->m_VideoOnScreenHint:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/camera/ui/VideoHint;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    iget-object v1, p0, Lcom/oneplus/camera/ui/VideoHint;->m_VideoOnScreenHint:Lcom/oneplus/base/Handle;

    iget-object v2, p0, Lcom/oneplus/camera/ui/VideoHint;->m_Hint:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v4}, Lcom/oneplus/camera/ui/OnScreenHint;->updateHint(Lcom/oneplus/base/Handle;Ljava/lang/CharSequence;I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/VideoHint;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    if-nez v0, :cond_3

    const-class v0, Lcom/oneplus/camera/ui/OnScreenHint;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/VideoHint;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/OnScreenHint;

    iput-object v0, p0, Lcom/oneplus/camera/ui/VideoHint;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/ui/VideoHint;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/ui/VideoHint;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    iget-object v1, p0, Lcom/oneplus/camera/ui/VideoHint;->m_Hint:Ljava/lang/String;

    invoke-interface {v0, v1, v5}, Lcom/oneplus/camera/ui/OnScreenHint;->showHint(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/VideoHint;->m_VideoOnScreenHint:Lcom/oneplus/base/Handle;

    const-wide/16 v0, 0xbb8

    invoke-static {p0, v6, v0, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    goto :goto_0

    :cond_4
    invoke-static {p0, v6}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    iget-object v0, p0, Lcom/oneplus/camera/ui/VideoHint;->m_VideoOnScreenHint:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/VideoHint;->m_VideoOnScreenHint:Lcom/oneplus/base/Handle;

    iget-object v0, p0, Lcom/oneplus/camera/ui/VideoHint;->m_VideoHintImage:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/oneplus/camera/ui/VideoHint;->m_VideoHintImage:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/VideoHint;->m_VideoOnScreenHint:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/VideoHint;->m_VideoOnScreenHint:Lcom/oneplus/base/Handle;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method protected onDeinitialize()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/VideoHint;->m_VideoOnScreenHint:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/VideoHint;->m_VideoOnScreenHint:Lcom/oneplus/base/Handle;

    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onDeinitialize()V

    return-void
.end method

.method protected onInitialize()V
    .locals 5

    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VideoHint;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v2}, Lcom/oneplus/camera/OPCameraActivity;->getCaptureUIContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v2, 0x7f0a0131

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/VideoHint;->m_VideoHintImage:Landroid/view/View;

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/media/MediaType;

    iput-object v2, p0, Lcom/oneplus/camera/ui/VideoHint;->m_Type:Lcom/oneplus/camera/media/MediaType;

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/camera/ui/VideoHint;->m_Status:Z

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VideoHint;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/VideoHint;->m_Rotation:Lcom/oneplus/base/Rotation;

    const v2, 0x7f0d009b

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/VideoHint;->m_Hint:Ljava/lang/String;

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/VideoHint$1;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/VideoHint$1;-><init>(Lcom/oneplus/camera/ui/VideoHint;)V

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/VideoHint$2;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/VideoHint$2;-><init>(Lcom/oneplus/camera/ui/VideoHint;)V

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/VideoHint$3;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/VideoHint$3;-><init>(Lcom/oneplus/camera/ui/VideoHint;)V

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/VideoHint$4;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/VideoHint$4;-><init>(Lcom/oneplus/camera/ui/VideoHint;)V

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    const-class v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/VideoHint;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    iput-object v2, p0, Lcom/oneplus/camera/ui/VideoHint;->m_CaptureMode:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    iget-object v2, p0, Lcom/oneplus/camera/ui/VideoHint;->m_CaptureMode:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v3, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/oneplus/camera/ui/VideoHint$5;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/ui/VideoHint$5;-><init>(Lcom/oneplus/camera/ui/VideoHint;)V

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    return-void
.end method

.method protected onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/UIComponent;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    iput-object p2, p0, Lcom/oneplus/camera/ui/VideoHint;->m_Rotation:Lcom/oneplus/base/Rotation;

    invoke-direct {p0}, Lcom/oneplus/camera/ui/VideoHint;->updateVideoHint()V

    return-void
.end method
