.class Lcom/oneplus/camera/OPCameraActivity$2;
.super Ljava/lang/Object;
.source "OPCameraActivity.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/OPCameraActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/OPCameraActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/OPCameraActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/OPCameraActivity$2;->this$0:Lcom/oneplus/camera/OPCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity$2;->this$0:Lcom/oneplus/camera/OPCameraActivity;

    invoke-static {v0}, Lcom/oneplus/camera/OPCameraActivity;->-wrap3(Lcom/oneplus/camera/OPCameraActivity;)V

    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity$2;->this$0:Lcom/oneplus/camera/OPCameraActivity;

    sget-object v1, Lcom/oneplus/camera/OPCameraActivity;->PROP_IS_DEBUG_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity$2;->this$0:Lcom/oneplus/camera/OPCameraActivity;

    invoke-static {v0}, Lcom/oneplus/camera/OPCameraActivity;->-wrap4(Lcom/oneplus/camera/OPCameraActivity;)V

    :cond_0
    return-void
.end method