.class Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment$2;
.super Ljava/lang/Object;
.source "AdvancedSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment$2;->this$1:Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment$2;->this$1:Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;

    invoke-virtual {v0}, Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;->dismiss()V

    return-void
.end method
