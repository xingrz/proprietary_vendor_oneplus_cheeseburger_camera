.class Lcom/oneplus/camera/ui/LevelGaugeUI$3;
.super Ljava/lang/Object;
.source "LevelGaugeUI.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/LevelGaugeUI;->onInitialize()V
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
        "Lcom/oneplus/base/BaseActivity$State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/LevelGaugeUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/LevelGaugeUI;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/LevelGaugeUI$3;->this$0:Lcom/oneplus/camera/ui/LevelGaugeUI;

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
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RESUMING:Lcom/oneplus/base/BaseActivity$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/LevelGaugeUI$3;->this$0:Lcom/oneplus/camera/ui/LevelGaugeUI;

    invoke-static {v0}, Lcom/oneplus/camera/ui/LevelGaugeUI;->-wrap1(Lcom/oneplus/camera/ui/LevelGaugeUI;)V

    :cond_0
    return-void
.end method
