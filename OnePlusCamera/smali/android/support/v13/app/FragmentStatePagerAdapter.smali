.class public abstract Landroid/support/v13/app/FragmentStatePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "FragmentStatePagerAdapter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FragmentStatePagerAdapter"


# instance fields
.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/app/Fragment;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private mFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedState:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    iput-object v1, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    iput-object p1, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    check-cast p3, Landroid/app/Fragment;

    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_1

    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1, p3}, Landroid/app/FragmentManager;->saveFragmentInstanceState(Landroid/app/Fragment;)Landroid/app/Fragment$SavedState;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iput-object v1, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0
.end method

.method public abstract getItem(I)Landroid/app/Fragment;
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p2, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_3

    :goto_0
    invoke-virtual {p0, p2}, Landroid/support/v13/app/FragmentStatePagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p2, :cond_4

    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_5

    invoke-static {v1, v3}, Landroid/support/v13/app/FragmentCompat;->setMenuVisibility(Landroid/app/Fragment;Z)V

    invoke-static {v1, v3}, Landroid/support/v13/app/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    return-object v1

    :cond_2
    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-eqz v0, :cond_0

    return-object v0

    :cond_3
    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment$SavedState;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setInitialSavedState(Landroid/app/Fragment$SavedState;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    check-cast p2, Landroid/app/Fragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string/jumbo v0, "states"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez v3, :cond_4

    :cond_2
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "f"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4, p1, v0}, Landroid/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    if-nez v4, :cond_6

    const-string/jumbo v3, "FragmentStatePagerAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bad fragment at key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_1
    array-length v0, v3

    if-ge v1, v0, :cond_2

    iget-object v4, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    aget-object v0, v3, v1

    check-cast v0, Landroid/app/Fragment$SavedState;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_5

    invoke-static {v4, v2}, Landroid/support/v13/app/FragmentCompat;->setMenuVisibility(Landroid/app/Fragment;Z)V

    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    :goto_0
    move-object v2, v0

    :goto_1
    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    return-object v2

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/app/Fragment$SavedState;

    iget-object v3, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string/jumbo v3, "states"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-nez v0, :cond_2

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4, v2, v3, v0}, Landroid/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    goto :goto_2

    :cond_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    goto :goto_3
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    check-cast p3, Landroid/app/Fragment;

    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-ne p3, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-nez v0, :cond_1

    :goto_1
    if-nez p3, :cond_2

    :goto_2
    iput-object p3, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-static {v0, v1}, Landroid/support/v13/app/FragmentCompat;->setMenuVisibility(Landroid/app/Fragment;Z)V

    iget-object v0, p0, Landroid/support/v13/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-static {v0, v1}, Landroid/support/v13/app/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    goto :goto_1

    :cond_2
    invoke-static {p3, v2}, Landroid/support/v13/app/FragmentCompat;->setMenuVisibility(Landroid/app/Fragment;Z)V

    invoke-static {p3, v2}, Landroid/support/v13/app/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    goto :goto_2
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method
