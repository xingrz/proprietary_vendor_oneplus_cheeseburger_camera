.class Lcom/oneplus/camera/AgentActivity$1;
.super Ljava/lang/Object;
.source "AgentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/AgentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/AgentActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AgentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/AgentActivity$1;->this$0:Lcom/oneplus/camera/AgentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/AgentActivity$1;->this$0:Lcom/oneplus/camera/AgentActivity;

    invoke-virtual {v0}, Lcom/oneplus/camera/AgentActivity;->finish()V

    return-void
.end method