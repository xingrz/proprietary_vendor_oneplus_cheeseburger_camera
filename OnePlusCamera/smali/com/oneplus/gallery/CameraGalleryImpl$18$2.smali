.class Lcom/oneplus/gallery/CameraGalleryImpl$18$2;
.super Ljava/lang/Object;
.source "CameraGalleryImpl.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/CameraGalleryImpl$18;->onComponentFound(Lcom/oneplus/camera/PictureProcessService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/EventHandler",
        "<",
        "Lcom/oneplus/camera/media/MediaEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/CameraGalleryImpl$18;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl$18;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$18$2;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/oneplus/camera/media/MediaEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/gallery/CameraGalleryImpl$18$2;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/media/MediaEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/media/MediaEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ">;",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$18$2;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$18;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$18;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap50(Lcom/oneplus/gallery/CameraGalleryImpl;Ljava/lang/String;)V

    return-void
.end method
