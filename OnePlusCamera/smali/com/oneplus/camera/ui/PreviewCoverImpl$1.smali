.class Lcom/oneplus/camera/ui/PreviewCoverImpl$1;
.super Ljava/lang/Object;
.source "PreviewCoverImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/PreviewCoverImpl;->getPreviewCoverProducer(Lcom/oneplus/camera/ui/PreviewCover$Style;)Lcom/oneplus/camera/ui/PreviewCoverProducer;
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
        "Lcom/oneplus/camera/ui/PreviewCoverProducer$State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/PreviewCoverImpl;

.field final synthetic val$style:Lcom/oneplus/camera/ui/PreviewCover$Style;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/PreviewCoverImpl;Lcom/oneplus/camera/ui/PreviewCover$Style;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl$1;->this$0:Lcom/oneplus/camera/ui/PreviewCoverImpl;

    iput-object p2, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl$1;->val$style:Lcom/oneplus/camera/ui/PreviewCover$Style;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/ui/PreviewCoverProducer$State;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/ui/PreviewCoverProducer$State;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl$1;->this$0:Lcom/oneplus/camera/ui/PreviewCoverImpl;

    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl$1;->val$style:Lcom/oneplus/camera/ui/PreviewCover$Style;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-static {v2, v3, v0, v1}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->-wrap1(Lcom/oneplus/camera/ui/PreviewCoverImpl;Lcom/oneplus/camera/ui/PreviewCover$Style;Lcom/oneplus/camera/ui/PreviewCoverProducer$State;Lcom/oneplus/camera/ui/PreviewCoverProducer$State;)V

    return-void
.end method