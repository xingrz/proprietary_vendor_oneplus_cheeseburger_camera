.class Lcom/oneplus/gallery2/location/BaseAddressClassifier$1;
.super Ljava/lang/Object;
.source "BaseAddressClassifier.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/location/BaseAddressClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;)I
    .locals 3

    const/4 v2, 0x0

    iget v0, p2, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->mediaCount:I

    iget v1, p1, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->mediaCount:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    if-nez v1, :cond_3

    return v2

    :cond_0
    return v0

    :cond_1
    if-nez v1, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;

    check-cast p2, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/location/BaseAddressClassifier$1;->compare(Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;)I

    move-result v0

    return v0
.end method
