.class Lcom/oneplus/gallery2/media/TempVideoMedia$1;
.super Lcom/oneplus/base/CallbackHandle;
.source "TempVideoMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/TempVideoMedia;->getDuration(Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/base/CallbackHandle",
        "<",
        "Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/TempVideoMedia;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/TempVideoMedia;Ljava/lang/String;Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/gallery2/media/TempVideoMedia$1;->this$0:Lcom/oneplus/gallery2/media/TempVideoMedia;

    invoke-direct {p0, p2, p3, p4}, Lcom/oneplus/base/CallbackHandle;-><init>(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia$1;->this$0:Lcom/oneplus/gallery2/media/TempVideoMedia;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/TempVideoMedia;->verifyAccess()V

    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia$1;->this$0:Lcom/oneplus/gallery2/media/TempVideoMedia;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/TempVideoMedia;->access$0(Lcom/oneplus/gallery2/media/TempVideoMedia;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia$1;->this$0:Lcom/oneplus/gallery2/media/TempVideoMedia;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/TempVideoMedia;->access$0(Lcom/oneplus/gallery2/media/TempVideoMedia;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia$1;->this$0:Lcom/oneplus/gallery2/media/TempVideoMedia;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/TempVideoMedia;->access$0(Lcom/oneplus/gallery2/media/TempVideoMedia;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia$1;->this$0:Lcom/oneplus/gallery2/media/TempVideoMedia;

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/TempVideoMedia;->access$1(Lcom/oneplus/gallery2/media/TempVideoMedia;Ljava/util/List;)V

    goto :goto_0
.end method
