.class Lcom/oneplus/camera/ui/CaptureBar$64;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CaptureBar;->setupFaceBeautyUI()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureBar;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$64;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p3, :cond_1

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar$64;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-virtual {v2}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar$64;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v2}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap41(Lcom/oneplus/camera/ui/CaptureBar;)V

    return-void

    :cond_0
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar$64;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    sget-object v3, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->FACE_BEAUTY:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    invoke-static {v2, v3, v0, v4}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap32(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;ZZ)V

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar$64;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v2}, Lcom/oneplus/camera/ui/CaptureBar;->-get11(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/camera/FaceBeautyController;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/FaceBeautyController;->PROP_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/FaceBeautyController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar$64;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v2}, Lcom/oneplus/camera/ui/CaptureBar;->-get11(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/camera/FaceBeautyController;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/FaceBeautyController;->PROP_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v3, v4, v2}, Lcom/oneplus/camera/FaceBeautyController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
