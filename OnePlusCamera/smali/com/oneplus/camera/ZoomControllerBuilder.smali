.class public final Lcom/oneplus/camera/ZoomControllerBuilder;
.super Ljava/lang/Object;
.source "ZoomControllerBuilder.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs create([Ljava/lang/Object;)Lcom/oneplus/base/component/Component;
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    aget-object v0, p1, v2

    instance-of v0, v0, Lcom/oneplus/camera/CameraActivity;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/oneplus/camera/UIZoomControllerImpl;

    aget-object v0, p1, v2

    check-cast v0, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v1, v0}, Lcom/oneplus/camera/UIZoomControllerImpl;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    return-object v1

    :cond_0
    aget-object v0, p1, v2

    instance-of v0, v0, Lcom/oneplus/camera/CameraThread;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/oneplus/camera/ZoomControlImpl;

    aget-object v0, p1, v2

    check-cast v0, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v1, v0}, Lcom/oneplus/camera/ZoomControlImpl;-><init>(Lcom/oneplus/camera/CameraThread;)V

    return-object v1

    :cond_1
    return-object v1
.end method

.method public getPriority()Lcom/oneplus/base/component/ComponentCreationPriority;
    .locals 1

    sget-object v0, Lcom/oneplus/base/component/ComponentCreationPriority;->ON_DEMAND:Lcom/oneplus/base/component/ComponentCreationPriority;

    return-object v0
.end method

.method public isComponentTypeSupported(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const-class v0, Lcom/oneplus/camera/ZoomController;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
