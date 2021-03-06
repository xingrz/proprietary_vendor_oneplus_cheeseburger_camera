.class final Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;
.super Lcom/oneplus/gallery2/media/MediaStoreMedia;
.source "VideoMediaStoreMedia.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/VideoMedia;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;
    }
.end annotation


# static fields
.field private static final CONTENT_URI_STRING_VIDEO:Ljava/lang/String;

.field private static final CONTENT_URI_VIDEO:Landroid/net/Uri;

.field private static final FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final INTERNAL_FLAG_SLOW_MOTION:I = 0x1

.field private static final INTERNAL_FLAG_TIME_LAPSE:I = 0x2

.field private static final LARGE_FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final LARGE_VIDEO_FILE_SIZE:J = 0x40000000L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_Duration:Ljava/lang/Long;

.field private m_DurationCallbackHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/CallbackHandle",
            "<",
            "Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

.field private m_InternalFlags:I

.field private m_Size:Landroid/util/Size;

.field private m_SizeCallbackHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/CallbackHandle",
            "<",
            "Lcom/oneplus/gallery2/media/Media$SizeCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const-class v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->TAG:Ljava/lang/String;

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->CONTENT_URI_VIDEO:Landroid/net/Uri;

    sget-object v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->CONTENT_URI_VIDEO:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->CONTENT_URI_STRING_VIDEO:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->LARGE_FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/MediaStoreMedia;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V

    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->parseVideoFile(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;)V

    return-void
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_DurationCallbackHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_DurationCallbackHandles:Ljava/util/List;

    return-void
.end method

.method static synthetic access$3(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;)Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    return-object v0
.end method

.method static synthetic access$5(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    return-void
.end method

.method static synthetic access$6(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    return-void
.end method

.method static synthetic access$7(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->onVideoFileParsed(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;)V

    return-void
.end method

.method public static createContentUri(J)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->CONTENT_URI_STRING_VIDEO:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private onVideoFileParsed(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    if-ne v0, p1, :cond_2

    iput-object v6, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Duration:Ljava/lang/Long;

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Duration:Ljava/lang/Long;

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    iget-wide v2, p1, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->duration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Duration:Ljava/lang/Long;

    :goto_1
    iget-object v2, p1, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->size:Landroid/util/Size;

    if-nez v2, :cond_5

    :cond_1
    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_DurationCallbackHandles:Ljava/util/List;

    if-nez v0, :cond_7

    :goto_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    if-nez v0, :cond_a

    :goto_4
    if-nez v2, :cond_f

    :goto_5
    return-void

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Duration:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->duration:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_1

    :cond_4
    sget v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->FLAG_DURATION_CHANGED:I

    or-int/lit8 v0, v0, 0x0

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->size:Landroid/util/Size;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v2, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Size:Landroid/util/Size;

    if-nez v2, :cond_6

    :goto_6
    iget-object v2, p1, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->size:Landroid/util/Size;

    iput-object v2, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Size:Landroid/util/Size;

    move v2, v0

    goto :goto_2

    :cond_6
    sget v2, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->FLAG_SIZE_CHANGED:I

    or-int/2addr v0, v2

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Duration:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_DurationCallbackHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_7
    if-ltz v3, :cond_9

    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_DurationCallbackHandles:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/CallbackHandle;

    invoke-virtual {v0}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;

    if-nez v0, :cond_8

    :goto_8
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_7

    :cond_8
    invoke-interface {v0, p0, v4, v5}, Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;->onDurationObtained(Lcom/oneplus/gallery2/media/VideoMedia;J)V

    goto :goto_8

    :cond_9
    iput-object v6, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_DurationCallbackHandles:Ljava/util/List;

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Size:Landroid/util/Size;

    if-nez v0, :cond_b

    move v3, v1

    :goto_9
    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Size:Landroid/util/Size;

    if-nez v0, :cond_c

    :goto_a
    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_b
    if-ltz v4, :cond_e

    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/CallbackHandle;

    invoke-virtual {v0}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media$SizeCallback;

    if-nez v0, :cond_d

    :goto_c
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_b

    :cond_b
    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    move v3, v0

    goto :goto_9

    :cond_c
    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    goto :goto_a

    :cond_d
    invoke-interface {v0, p0, v3, v1}, Lcom/oneplus/gallery2/media/Media$SizeCallback;->onSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V

    goto :goto_c

    :cond_e
    iput-object v6, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    goto/16 :goto_4

    :cond_f
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {v0, p0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaUpdatedByItself(Lcom/oneplus/gallery2/media/Media;I)V

    goto/16 :goto_5
.end method

.method static final parseVideoContentUri(Landroid/net/Uri;Lcom/oneplus/base/Ref;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->CONTENT_URI_VIDEO:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->parseContentUri(Landroid/net/Uri;Landroid/net/Uri;Lcom/oneplus/base/Ref;)Z

    move-result v0

    return v0
.end method

.method private parseVideoFile(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;)V
    .locals 8

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->getFilePath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v7, v0

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v2

    sget-object v2, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "parseVideoFile() - Take "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ms to read metadata from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v7, :cond_2

    :goto_1
    new-instance v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$3;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$3;-><init>(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/oneplus/media/VideoUtils;->readMetadata(Landroid/content/Context;Landroid/net/Uri;)Lcom/oneplus/media/VideoMetadata;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/oneplus/media/VideoUtils;->readMetadata(Ljava/lang/String;)Lcom/oneplus/media/VideoMetadata;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/oneplus/media/VideoMetadata;->PROP_WIDTH:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v0}, Lcom/oneplus/media/VideoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v0, Lcom/oneplus/media/VideoMetadata;->PROP_HEIGHT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v0}, Lcom/oneplus/media/VideoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v0, Lcom/oneplus/media/VideoMetadata;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v0}, Lcom/oneplus/media/VideoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gtz v1, :cond_4

    :cond_3
    :goto_2
    sget-object v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "parseVideoFile() - Media : "

    const-string/jumbo v3, ", size : "

    iget-object v4, p1, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->size:Landroid/util/Size;

    const-string/jumbo v5, ", orientation : "

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/oneplus/media/VideoMetadata;->PROP_DURATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v0}, Lcom/oneplus/media/VideoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->duration:J

    goto :goto_1

    :cond_4
    if-lez v2, :cond_3

    rem-int/lit16 v0, v6, 0xb4

    if-eqz v0, :cond_5

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p1, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->size:Landroid/util/Size;

    goto :goto_2

    :cond_5
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p1, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->size:Landroid/util/Size;

    goto :goto_2
.end method


# virtual methods
.method protected createContentUri(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;)Landroid/net/Uri;
    .locals 2

    iget-wide v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->id:J

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->createContentUri(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDetails(Lcom/oneplus/gallery2/media/Media$DetailsCallback;)Lcom/oneplus/base/Handle;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    new-instance v0, Lcom/oneplus/base/EmptyHandle;

    const-string/jumbo v1, "GetVideoDetails"

    invoke-direct {v0, v1}, Lcom/oneplus/base/EmptyHandle;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-interface {p1, p0, v0}, Lcom/oneplus/gallery2/media/Media$DetailsCallback;->onDetailsObtained(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/MediaDetails;)V

    goto :goto_0
.end method

.method public getDuration(Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;)Lcom/oneplus/base/Handle;
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->verifyAccess()V

    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Duration:Ljava/lang/Long;

    if-nez v0, :cond_0

    new-instance v1, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$1;

    const-string/jumbo v0, "GetVideoDuration"

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$1;-><init>(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;Ljava/lang/String;Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_DurationCallbackHandles:Ljava/util/List;

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_DurationCallbackHandles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    if-eqz v0, :cond_3

    :goto_1
    return-object v1

    :cond_0
    if-nez p1, :cond_1

    :goto_2
    new-instance v0, Lcom/oneplus/base/EmptyHandle;

    const-string/jumbo v1, "GetVideoDuration"

    invoke-direct {v0, v1}, Lcom/oneplus/base/EmptyHandle;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Duration:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;->onDurationObtained(Lcom/oneplus/gallery2/media/VideoMedia;J)V

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_DurationCallbackHandles:Ljava/util/List;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    invoke-direct {v0, p0, v2}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;-><init>(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->getFileSize()J

    move-result-wide v2

    const-wide/32 v4, 0x40000000

    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    sget-object v2, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->LARGE_FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->executorFuture:Ljava/util/concurrent/Future;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    sget-object v2, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->executorFuture:Ljava/util/concurrent/Future;

    goto :goto_1
.end method

.method public getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->verifyAccess()V

    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Size:Landroid/util/Size;

    if-nez v0, :cond_0

    new-instance v1, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$2;

    const-string/jumbo v0, "GetVideoSize"

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$2;-><init>(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media$SizeCallback;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    if-eqz v0, :cond_3

    :goto_1
    return-object v1

    :cond_0
    if-nez p1, :cond_1

    :goto_2
    new-instance v0, Lcom/oneplus/base/EmptyHandle;

    const-string/jumbo v1, "GetVideoSize"

    invoke-direct {v0, v1}, Lcom/oneplus/base/EmptyHandle;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-interface {p1, p0, v0, v1}, Lcom/oneplus/gallery2/media/Media$SizeCallback;->onSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    invoke-direct {v0, p0, v2}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;-><init>(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->getFileSize()J

    move-result-wide v2

    const-wide/32 v4, 0x40000000

    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    sget-object v2, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->LARGE_FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->executorFuture:Ljava/util/concurrent/Future;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    sget-object v2, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->executorFuture:Ljava/util/concurrent/Future;

    goto :goto_1
.end method

.method public isSlowMotion()Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isTimeLapse()Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onUpdate(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;Z)I
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->onUpdate(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;Z)I

    move-result v0

    iget-object v2, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    if-nez v2, :cond_5

    :cond_0
    iget v3, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_InternalFlags:I

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->isSlowMotion()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_1
    iget v2, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_InternalFlags:I

    :goto_1
    iget-wide v2, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->duration:J

    cmp-long v2, v2, v10

    if-gtz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Duration:Ljava/lang/Long;

    if-nez v1, :cond_7

    :goto_2
    iget-wide v2, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->duration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Duration:Ljava/lang/Long;

    sget v1, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->FLAG_DURATION_CHANGED:I

    or-int/2addr v0, v1

    :cond_3
    sget v1, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->FLAG_LAST_MODIFIED_TIME_CHANGED:I

    and-int/2addr v1, v0

    if-nez v1, :cond_8

    :cond_4
    :goto_3
    return v0

    :cond_5
    iget-wide v4, v2, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    const-wide/16 v6, 0x4

    and-long/2addr v4, v6

    cmp-long v3, v4, v10

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_InternalFlags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_InternalFlags:I

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_1

    iget-wide v2, v2, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    const-wide/16 v4, 0x8

    and-long/2addr v2, v4

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_InternalFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_InternalFlags:I

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Duration:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->duration:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_8
    iput-object v8, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Size:Landroid/util/Size;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onUpdate() - Media "

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, " has been modified, restart video file parsing"

    invoke-static {v1, v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->cancel()Z

    new-instance v1, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    invoke-direct {v1, p0, v8}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;-><init>(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;)V

    iput-object v1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    sget-object v2, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->executorFuture:Ljava/util/concurrent/Future;

    goto :goto_3
.end method

.method public peekDuration()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Duration:Ljava/lang/Long;

    return-object v0
.end method

.method public peekSize()Landroid/util/Size;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Size:Landroid/util/Size;

    return-object v0
.end method
