.class Lcom/oneplus/camera/CameraThread$33;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraThread;->setMediaType(Lcom/oneplus/camera/media/MediaType;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraThread;

.field final synthetic val$mediaType:Lcom/oneplus/camera/media/MediaType;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/media/MediaType;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/CameraThread$33;->this$0:Lcom/oneplus/camera/CameraThread;

    iput-object p2, p0, Lcom/oneplus/camera/CameraThread$33;->val$mediaType:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/camera/CameraThread$33;->this$0:Lcom/oneplus/camera/CameraThread;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread$33;->val$mediaType:Lcom/oneplus/camera/media/MediaType;

    invoke-static {v0, v1}, Lcom/oneplus/camera/CameraThread;->-wrap5(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/media/MediaType;)Z

    return-void
.end method