.class public Lcom/oneplus/util/AutomaticId;
.super Ljava/lang/Object;
.source "AutomaticId.java"


# static fields
.field private static final PREFIX_SEPARATOR:Ljava/lang/String; = "/"

.field private static final SUFFIX_SEPARATOR:Ljava/lang/String; = "_"

.field private static volatile m_PreviousTimeNanos:J

.field private static volatile m_SuffixCounter:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generate()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    invoke-static {v0}, Lcom/oneplus/util/AutomaticId;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized generate(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-class v5, Lcom/oneplus/util/AutomaticId;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    sget-wide v6, Lcom/oneplus/util/AutomaticId;->m_PreviousTimeNanos:J

    cmp-long v4, v2, v6

    if-eqz v4, :cond_0

    sput-wide v2, Lcom/oneplus/util/AutomaticId;->m_PreviousTimeNanos:J

    const-wide/16 v6, 0x0

    sput-wide v6, Lcom/oneplus/util/AutomaticId;->m_SuffixCounter:J

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    monitor-exit v5

    return-object v4

    :cond_0
    :try_start_1
    sget-wide v6, Lcom/oneplus/util/AutomaticId;->m_SuffixCounter:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    sput-wide v6, Lcom/oneplus/util/AutomaticId;->m_SuffixCounter:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v6, Lcom/oneplus/util/AutomaticId;->m_SuffixCounter:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method
