.class final Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;
.super Ljava/lang/Object;
.source "MediaStoreMedia.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/MediaCacheKey;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MediaStoreMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheKey"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6bb35174ecf0fe18L


# instance fields
.field public final filePath:Ljava/lang/String;

.field public final fileSize:J

.field public final lastModifiedTime:J


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMedia;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;->filePath:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getFileSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;->fileSize:J

    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getLastModifiedTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;->lastModifiedTime:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x0

    instance-of v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;

    if-nez v0, :cond_0

    return v4

    :cond_0
    check-cast p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;

    iget-wide v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;->fileSize:J

    iget-wide v2, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;->fileSize:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;->lastModifiedTime:J

    iget-wide v2, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;->lastModifiedTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;->filePath:Ljava/lang/String;

    iget-object v1, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;->filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return v4

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;->fileSize:J

    long-to-int v0, v0

    return v0
.end method

.method public isExpired()Z
    .locals 7

    const/4 v6, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;->fileSize:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;->lastModifiedTime:J

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_0
    return v6

    :cond_1
    return v6

    :catch_0
    move-exception v0

    return v6
.end method
