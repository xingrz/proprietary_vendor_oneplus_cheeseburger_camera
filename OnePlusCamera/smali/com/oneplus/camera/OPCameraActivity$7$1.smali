.class Lcom/oneplus/camera/OPCameraActivity$7$1;
.super Ljava/lang/Object;
.source "OPCameraActivity.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/OPCameraActivity$7;->onComponentFound(Lcom/oneplus/camera/ui/CameraGallery;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Lcom/oneplus/camera/ui/CameraGallery$GalleryState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/OPCameraActivity$7;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/OPCameraActivity$7;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/OPCameraActivity$7$1;->this$1:Lcom/oneplus/camera/OPCameraActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/ui/CameraGallery$GalleryState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/ui/CameraGallery$GalleryState;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity$7$1;->this$1:Lcom/oneplus/camera/OPCameraActivity$7;

    iget-object v1, v0, Lcom/oneplus/camera/OPCameraActivity$7;->this$0:Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-static {v1, v0}, Lcom/oneplus/camera/OPCameraActivity;->-wrap0(Lcom/oneplus/camera/OPCameraActivity;Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)V

    return-void
.end method
