.class Lcom/oneplus/camera/ui/ThumbnailBarImpl$9;
.super Ljava/lang/Object;
.source "ThumbnailBarImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ThumbnailBarImpl;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$9;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 1
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

    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$9;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap1(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$9;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap3(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    return-void
.end method