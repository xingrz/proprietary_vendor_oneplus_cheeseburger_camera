.class public Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;
.super Ljava/lang/Object;
.source "CameraPreviewOverlay.java"

# interfaces
.implements Lcom/oneplus/base/RecyclableObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CameraPreviewOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenderingParams"
.end annotation


# static fields
.field private static final POOL:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final POOL_SIZE:I = 0x2


# instance fields
.field private volatile m_IsFreeInstance:Z

.field private volatile m_PreviewBounds:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;->POOL:Ljava/util/ArrayDeque;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized obtain(Landroid/graphics/RectF;)Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;
    .locals 3

    const-class v2, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;->POOL:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;->m_IsFreeInstance:Z

    :goto_0
    iput-object p0, v0, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;->m_PreviewBounds:Landroid/graphics/RectF;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;

    invoke-direct {v0}, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public getPreviewBounds()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;->m_PreviewBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public recycle()V
    .locals 3

    const-class v1, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;->m_IsFreeInstance:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;->m_PreviewBounds:Landroid/graphics/RectF;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;->m_IsFreeInstance:Z

    sget-object v0, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;->POOL:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    sget-object v0, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;->POOL:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
