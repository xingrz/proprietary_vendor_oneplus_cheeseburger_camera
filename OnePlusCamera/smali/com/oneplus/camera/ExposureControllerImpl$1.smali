.class Lcom/oneplus/camera/ExposureControllerImpl$1;
.super Ljava/lang/Object;
.source "ExposureControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ExposureControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ExposureControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ExposureControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ExposureControllerImpl$1;->this$0:Lcom/oneplus/camera/ExposureControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/camera/ExposureControllerImpl$1;->this$0:Lcom/oneplus/camera/ExposureControllerImpl;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/oneplus/camera/ExposureControllerImpl;->-wrap2(Lcom/oneplus/camera/ExposureControllerImpl;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)V

    return-void
.end method
