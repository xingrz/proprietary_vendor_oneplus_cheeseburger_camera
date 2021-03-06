.class public Lcom/oneplus/gl/ExternalOESTexture;
.super Lcom/oneplus/gl/Texture;
.source "ExternalOESTexture.java"


# instance fields
.field private final m_Lock:Ljava/lang/Object;

.field private m_Surface:Landroid/view/Surface;

.field private volatile m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private m_TextureId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/gl/ExternalOESTexture;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const v0, 0x8d65

    invoke-direct {p0, v0}, Lcom/oneplus/gl/Texture;-><init>(I)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_Lock:Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/gl/ExternalOESTexture;->isEglContextReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/gl/ExternalOESTexture;->getObjectId()I

    :cond_0
    return-void
.end method


# virtual methods
.method public getObjectId()I
    .locals 5

    const v4, 0x812f

    const/16 v3, 0x2601

    const/4 v2, 0x0

    const v1, 0x8d65

    invoke-virtual {p0}, Lcom/oneplus/gl/ExternalOESTexture;->throwIfNotAccessible()V

    iget v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_TextureId:I

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/oneplus/gl/ExternalOESTexture;->createNativeTexture()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_TextureId:I

    iget v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_TextureId:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_TextureId:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2802

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2801

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_0
    :goto_0
    iget v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_TextureId:I

    return v0

    :cond_1
    const-string/jumbo v0, "Fail to create texture"

    invoke-static {v0}, Lcom/oneplus/gl/EglContextManager;->throwEglError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_Surface:Landroid/view/Surface;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/Surface;

    invoke-virtual {p0}, Lcom/oneplus/gl/ExternalOESTexture;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_Surface:Landroid/view/Surface;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_Surface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 5

    iget-object v2, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_Lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/gl/ExternalOESTexture;->isDependencyThread()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/gl/ExternalOESTexture;->getObjectId()I

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_TextureId:I

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/oneplus/gl/ExternalOESTexture;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getSurfaceTexture() - Create SurfaceTexture : "

    iget-object v4, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-static {v1, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTransformMatrix([F)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/oneplus/gl/ExternalOESTexture;->isDependencyThread()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_TextureId:I

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/gl/ExternalOESTexture;->isEglContextReady()Z

    move-result v0

    :cond_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected onEglContextDestroying()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_TextureId:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_Surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_Surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_Surface:Landroid/view/Surface;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v1, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_1
    iput v2, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_TextureId:I

    :cond_2
    invoke-super {p0}, Lcom/oneplus/gl/Texture;->onEglContextDestroying()V

    return-void
.end method

.method protected onRelease()V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/gl/ExternalOESTexture;->releaseInternalResources()V

    invoke-super {p0}, Lcom/oneplus/gl/Texture;->onRelease()V

    return-void
.end method

.method public refresh()Lcom/oneplus/gl/ExternalOESTexture;
    .locals 6

    invoke-virtual {p0}, Lcom/oneplus/gl/ExternalOESTexture;->throwIfNotAccessible()V

    invoke-virtual {p0}, Lcom/oneplus/gl/ExternalOESTexture;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/gl/EglContextManager;->isGLProfilingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    invoke-static {}, Lcom/oneplus/gl/EglContextManager;->isGLProfilingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/16 v4, 0x14

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gl/ExternalOESTexture;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refresh() - Take "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms to call updateTexImage(), SurfaceTexture : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0

    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public releaseInternalResources()V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/gl/ExternalOESTexture;->verifyAccess()V

    iget-object v1, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_Lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_TextureId:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_Surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_Surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_Surface:Landroid/view/Surface;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_1
    iget v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_TextureId:I

    invoke-static {v0}, Lcom/oneplus/gl/ExternalOESTexture;->destroyNativeTexture(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_TextureId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
