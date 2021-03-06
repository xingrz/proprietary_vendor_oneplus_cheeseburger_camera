.class Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "ScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/ScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapWorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private path:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/camera/ui/ScaleImageView;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/ui/ScaleImageView;Landroid/widget/ImageView;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;->path:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const/16 v3, 0x1000

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;->path:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;->path:Ljava/lang/String;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x4

    invoke-static {v0, v3, v3, v2, v1}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ScaleImageView;->-get1(Lcom/oneplus/camera/ui/ScaleImageView;)Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;

    move-result-object v1

    if-ne v1, p0, :cond_1

    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ScaleImageView;->-get17(Lcom/oneplus/camera/ui/ScaleImageView;)Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ScaleImageView;->-get11(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ScaleImageView;->-get17(Lcom/oneplus/camera/ui/ScaleImageView;)Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    invoke-static {v1, v3}, Lcom/oneplus/camera/ui/ScaleImageView;->-set2(Lcom/oneplus/camera/ui/ScaleImageView;Z)Z

    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    invoke-static {v1, v2}, Lcom/oneplus/camera/ui/ScaleImageView;->-set1(Lcom/oneplus/camera/ui/ScaleImageView;Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;)Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;

    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/oneplus/camera/ui/ScaleImageView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Not the same task"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
