.class public Lcom/amap/api/location/a;
.super Ljava/lang/Object;
.source "AMapLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/location/a$a;
    }
.end annotation


# static fields
.field static h:Lcom/amap/api/location/a;


# instance fields
.field a:Lcom/amap/api/location/d;

.field b:Lcom/amap/api/location/c;

.field c:Z

.field d:J

.field e:Z

.field f:Z

.field g:Lcom/amap/api/location/b;

.field private i:Landroid/content/Context;

.field private j:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/amap/api/location/g;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/amap/api/location/a$a;

.field private l:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/amap/api/location/g;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/amap/api/location/AMapLocation;

.field private n:Lcom/amap/api/location/AMapLocation;

.field private volatile o:Ljava/lang/Thread;

.field private p:J

.field private q:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/location/a;->h:Lcom/amap/api/location/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/amap/api/location/a;->j:Ljava/util/Vector;

    iput-object v1, p0, Lcom/amap/api/location/a;->k:Lcom/amap/api/location/a$a;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/a;->l:Ljava/util/Vector;

    iput-object v1, p0, Lcom/amap/api/location/a;->a:Lcom/amap/api/location/d;

    iput-object v1, p0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    iput-boolean v3, p0, Lcom/amap/api/location/a;->c:Z

    iput-boolean v2, p0, Lcom/amap/api/location/a;->e:Z

    iput-boolean v2, p0, Lcom/amap/api/location/a;->f:Z

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/amap/api/location/a;->p:J

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/amap/api/location/a;->q:F

    iput-object p1, p0, Lcom/amap/api/location/a;->i:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amap/api/location/a;->e()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amap/api/location/a$a;

    invoke-direct {v0, p0}, Lcom/amap/api/location/a$a;-><init>(Lcom/amap/api/location/a;)V

    iput-object v0, p0, Lcom/amap/api/location/a;->k:Lcom/amap/api/location/a$a;

    :goto_0
    new-instance v0, Lcom/amap/api/location/d;

    iget-object v1, p0, Lcom/amap/api/location/a;->k:Lcom/amap/api/location/a$a;

    invoke-direct {v0, p1, p2, v1, p0}, Lcom/amap/api/location/d;-><init>(Landroid/content/Context;Landroid/location/LocationManager;Lcom/amap/api/location/a$a;Lcom/amap/api/location/a;)V

    iput-object v0, p0, Lcom/amap/api/location/a;->a:Lcom/amap/api/location/d;

    new-instance v0, Lcom/amap/api/location/c;

    iget-object v1, p0, Lcom/amap/api/location/a;->k:Lcom/amap/api/location/a$a;

    invoke-direct {v0, p1, v1, p0}, Lcom/amap/api/location/c;-><init>(Landroid/content/Context;Lcom/amap/api/location/a$a;Lcom/amap/api/location/a;)V

    iput-object v0, p0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    invoke-virtual {p0, v3}, Lcom/amap/api/location/a;->b(Z)V

    iput-boolean v2, p0, Lcom/amap/api/location/a;->e:Z

    iput-boolean v2, p0, Lcom/amap/api/location/a;->f:Z

    new-instance v0, Lcom/amap/api/location/b;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/location/b;-><init>(Lcom/amap/api/location/a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/location/a;->g:Lcom/amap/api/location/b;

    return-void

    :cond_0
    new-instance v0, Lcom/amap/api/location/a$a;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amap/api/location/a$a;-><init>(Lcom/amap/api/location/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/location/a;->k:Lcom/amap/api/location/a$a;

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/location/a;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/a;->m:Lcom/amap/api/location/AMapLocation;

    return-object p1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Landroid/location/LocationManager;)Lcom/amap/api/location/a;
    .locals 2

    const-class v1, Lcom/amap/api/location/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/location/a;->h:Lcom/amap/api/location/a;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/amap/api/location/a;->h:Lcom/amap/api/location/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/amap/api/location/a;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/location/a;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v0, Lcom/amap/api/location/a;->h:Lcom/amap/api/location/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/amap/api/location/a;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/a;->j:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/location/a;)Lcom/amap/api/location/AMapLocation;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/a;->m:Lcom/amap/api/location/AMapLocation;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/location/a;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/a;->n:Lcom/amap/api/location/AMapLocation;

    return-object p1
.end method

.method static synthetic c(Lcom/amap/api/location/a;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/a;->l:Ljava/util/Vector;

    return-object v0
.end method

.method static declared-synchronized c()V
    .locals 2

    const-class v1, Lcom/amap/api/location/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/location/a;->h:Lcom/amap/api/location/a;

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/location/a;->h:Lcom/amap/api/location/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/amap/api/location/a;->h:Lcom/amap/api/location/a;

    invoke-virtual {v0}, Lcom/amap/api/location/a;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/a;->e:Z

    return-void
.end method

.method static synthetic d(Lcom/amap/api/location/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/a;->i:Landroid/content/Context;

    return-object v0
.end method

.method private d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/a;->f:Z

    return-void
.end method

.method static synthetic e(Lcom/amap/api/location/a;)Lcom/amap/api/location/AMapLocation;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/a;->n:Lcom/amap/api/location/AMapLocation;

    return-object v0
.end method

.method private e()V
    .locals 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/a;->j:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method a()Lcom/amap/api/location/AMapLocation;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/a;->m:Lcom/amap/api/location/AMapLocation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/a;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/d;->b(Landroid/content/Context;)Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/a;->m:Lcom/amap/api/location/AMapLocation;

    return-object v0
.end method

.method a(DDFJLandroid/app/PendingIntent;)V
    .locals 3

    new-instance v0, Lcom/aps/j;

    invoke-direct {v0}, Lcom/aps/j;-><init>()V

    iput-wide p1, v0, Lcom/aps/j;->b:D

    iput-wide p3, v0, Lcom/aps/j;->a:D

    iput p5, v0, Lcom/aps/j;->c:F

    invoke-virtual {v0, p6, p7}, Lcom/aps/j;->a(J)V

    iget-object v1, p0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    invoke-virtual {v1, v0, p8}, Lcom/amap/api/location/c;->a(Lcom/aps/j;Landroid/app/PendingIntent;)V

    return-void
.end method

.method a(ILcom/amap/api/location/AMapLocalWeatherListener;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/amap/api/location/a$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/amap/api/location/a$1;-><init>(Lcom/amap/api/location/a;ILcom/amap/api/location/AMapLocalWeatherListener;)V

    invoke-virtual {v0}, Lcom/amap/api/location/a$1;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method a(JFLcom/amap/api/location/AMapLocationListener;Ljava/lang/String;Z)V
    .locals 9

    const/4 v8, 0x1

    iput-wide p1, p0, Lcom/amap/api/location/a;->p:J

    iput p3, p0, Lcom/amap/api/location/a;->q:F

    if-nez p4, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/amap/api/location/g;

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/amap/api/location/g;-><init>(JFLcom/amap/api/location/AMapLocationListener;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/amap/api/location/a;->j:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "gps"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "lbs"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/amap/api/location/a;->a:Lcom/amap/api/location/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amap/api/location/d;->a(JF)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/amap/api/location/a;->f:Z

    if-nez v0, :cond_4

    :goto_1
    iget-object v0, p0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/location/c;->a(J)V

    invoke-direct {p0, v8}, Lcom/amap/api/location/a;->c(Z)V

    iget-object v0, p0, Lcom/amap/api/location/a;->o:Ljava/lang/Thread;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    invoke-virtual {v0, v8}, Lcom/amap/api/location/c;->b(Z)V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amap/api/location/a;->o:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/amap/api/location/a;->o:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/amap/api/location/a;->a:Lcom/amap/api/location/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amap/api/location/d;->a(JF)V

    goto :goto_1
.end method

.method a(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    invoke-virtual {v0, p1}, Lcom/amap/api/location/c;->a(Landroid/app/PendingIntent;)V

    return-void
.end method

.method a(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/location/a;->j:Ljava/util/Vector;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    move v2, v1

    move v3, v0

    :goto_1
    if-lt v2, v3, :cond_2

    iget-object v0, p0, Lcom/amap/api/location/a;->j:Ljava/util/Vector;

    if-nez v0, :cond_6

    :cond_0
    invoke-virtual {p0, v1}, Lcom/amap/api/location/a;->b(Z)V

    invoke-direct {p0, v1}, Lcom/amap/api/location/a;->c(Z)V

    invoke-virtual {p0}, Lcom/amap/api/location/a;->b()V

    iget-object v0, p0, Lcom/amap/api/location/a;->a:Lcom/amap/api/location/d;

    if-nez v0, :cond_7

    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/a;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/location/a;->j:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/g;

    if-eqz v0, :cond_4

    iget-object v4, v0, Lcom/amap/api/location/g;->b:Lcom/amap/api/location/AMapLocationListener;

    if-nez v4, :cond_5

    :cond_3
    iget-object v4, p0, Lcom/amap/api/location/a;->j:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v2, -0x1

    move v2, v3

    :goto_3
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    move v2, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/amap/api/location/a;->j:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v2, -0x1

    move v2, v3

    goto :goto_3

    :cond_5
    iget-object v4, v0, Lcom/amap/api/location/g;->b:Lcom/amap/api/location/AMapLocationListener;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    move v0, v2

    move v2, v3

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/amap/api/location/a;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/amap/api/location/a;->a:Lcom/amap/api/location/d;

    invoke-virtual {v0}, Lcom/amap/api/location/d;->b()V

    goto :goto_2
.end method

.method a(Z)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/amap/api/location/a;->d(Z)V

    iget-object v0, p0, Lcom/amap/api/location/a;->j:Ljava/util/Vector;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/a;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/amap/api/location/a;->a:Lcom/amap/api/location/d;

    invoke-virtual {v0}, Lcom/amap/api/location/d;->b()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/location/a;->a:Lcom/amap/api/location/d;

    invoke-virtual {v0}, Lcom/amap/api/location/d;->b()V

    iget-object v0, p0, Lcom/amap/api/location/a;->a:Lcom/amap/api/location/d;

    iget-wide v2, p0, Lcom/amap/api/location/a;->p:J

    iget v1, p0, Lcom/amap/api/location/a;->q:F

    invoke-virtual {v0, v2, v3, v1}, Lcom/amap/api/location/d;->a(JF)V

    goto :goto_0
.end method

.method b()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/location/a;->o:Ljava/lang/Thread;

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/location/c;->b(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/a;->o:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iput-object v2, p0, Lcom/amap/api/location/a;->o:Ljava/lang/Thread;

    goto :goto_1
.end method

.method b(DDFJLandroid/app/PendingIntent;)V
    .locals 3

    new-instance v0, Lcom/aps/j;

    invoke-direct {v0}, Lcom/aps/j;-><init>()V

    iput-wide p1, v0, Lcom/aps/j;->b:D

    iput-wide p3, v0, Lcom/aps/j;->a:D

    iput p5, v0, Lcom/aps/j;->c:F

    invoke-virtual {v0, p6, p7}, Lcom/aps/j;->a(J)V

    iget-object v1, p0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    invoke-virtual {v1, v0, p8}, Lcom/amap/api/location/c;->b(Lcom/aps/j;Landroid/app/PendingIntent;)V

    return-void
.end method

.method b(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    invoke-virtual {v0, p1}, Lcom/amap/api/location/c;->b(Landroid/app/PendingIntent;)V

    return-void
.end method

.method b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/a;->c:Z

    return-void
.end method

.method d()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/location/a;->a:Lcom/amap/api/location/d;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    if-nez v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/amap/api/location/a;->j:Ljava/util/Vector;

    if-nez v0, :cond_2

    :goto_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/location/a;->b(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/a;->a:Lcom/amap/api/location/d;

    invoke-virtual {v0}, Lcom/amap/api/location/d;->b()V

    iget-object v0, p0, Lcom/amap/api/location/a;->a:Lcom/amap/api/location/d;

    invoke-virtual {v0}, Lcom/amap/api/location/d;->a()V

    iput-object v1, p0, Lcom/amap/api/location/a;->a:Lcom/amap/api/location/d;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    invoke-virtual {v0}, Lcom/amap/api/location/c;->b()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/amap/api/location/a;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    goto :goto_2
.end method