.class public Lcom/oneplus/gallery/ActionItemEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "ActionItemEventArgs.java"


# instance fields
.field private final m_Id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    iput-object p1, p0, Lcom/oneplus/gallery/ActionItemEventArgs;->m_Id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getActionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/ActionItemEventArgs;->m_Id:Ljava/lang/String;

    return-object v0
.end method
