.class public abstract Lcom/oneplus/gallery/GalleryComponent;
.super Lcom/oneplus/base/component/BasicComponent;
.source "GalleryComponent.java"


# instance fields
.field private final m_Gallery:Lcom/oneplus/gallery/Gallery;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/oneplus/gallery/Gallery;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/base/component/BasicComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Z)V

    iput-object p2, p0, Lcom/oneplus/gallery/GalleryComponent;->m_Gallery:Lcom/oneplus/gallery/Gallery;

    return-void
.end method


# virtual methods
.method public final getGallery()Lcom/oneplus/gallery/Gallery;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/GalleryComponent;->m_Gallery:Lcom/oneplus/gallery/Gallery;

    return-object v0
.end method

.method public final getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/gallery/GalleryComponent;->m_Gallery:Lcom/oneplus/gallery/Gallery;

    sget-object v1, Lcom/oneplus/gallery/Gallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/GalleryActivity;

    return-object v0
.end method
