.class Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;
.super Ljava/lang/Object;
.source "PanoramaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/panorama/PanoramaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageConversionData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;
    }
.end annotation


# instance fields
.field private convertType:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;

.field private resultSize:[I

.field private yuvResult:[B


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;)[I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;->resultSize:[I

    return-object v0
.end method

.method public constructor <init>([B[ILcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;->yuvResult:[B

    iput-object p2, p0, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;->resultSize:[I

    iput-object p3, p0, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;->convertType:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;

    return-void
.end method


# virtual methods
.method public getConvertType()Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;->convertType:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;

    return-object v0
.end method

.method public getResultSize()[I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;->resultSize:[I

    return-object v0
.end method

.method public getYuvResult()[B
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;->yuvResult:[B

    return-object v0
.end method
