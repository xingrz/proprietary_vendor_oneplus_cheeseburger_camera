.class Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoIcsImpl;
.super Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoStubImpl;
.source "AccessibilityServiceInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityServiceInfoIcsImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getCanRetrieveWindowContent(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 1

    invoke-static {p1}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompatIcs;->getCanRetrieveWindowContent(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v0

    return v0
.end method

.method public getCapabilities(Landroid/accessibilityservice/AccessibilityServiceInfo;)I
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoIcsImpl;->getCanRetrieveWindowContent(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getDescription(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompatIcs;->getDescription(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompatIcs;->getId(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResolveInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/content/pm/ResolveInfo;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompatIcs;->getResolveInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSettingsActivityName(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompatIcs;->getSettingsActivityName(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method