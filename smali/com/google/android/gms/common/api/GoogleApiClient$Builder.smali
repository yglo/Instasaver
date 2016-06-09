.class public final Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/GoogleApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzOY:Landroid/accounts/Account;

.field private zzQl:Ljava/lang/String;

.field private zzYV:Landroid/os/Looper;

.field private final zzYY:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private zzYZ:I

.field private zzZa:Landroid/view/View;

.field private zzZb:Ljava/lang/String;

.field private final zzZc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Lcom/google/android/gms/common/internal/zzf$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzZd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">;"
        }
    .end annotation
.end field

.field private zzZe:Landroid/support/v4/app/FragmentActivity;

.field private zzZf:I

.field private zzZg:I

.field private zzZh:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

.field private zzZi:Lcom/google/android/gms/common/GoogleApiAvailability;

.field private zzZj:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/signin/zzd;",
            "Lcom/google/android/gms/signin/zze;",
            ">;"
        }
    .end annotation
.end field

.field private final zzZk:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final zzZl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzZm:Lcom/google/android/gms/signin/zze$zza;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzYY:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/internal/zzld;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzld;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZc:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/internal/zzld;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzld;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZd:Ljava/util/Map;

    iput v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZf:I

    iput v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZg:I

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZi:Lcom/google/android/gms/common/GoogleApiAvailability;

    sget-object v0, Lcom/google/android/gms/signin/zzb;->zzQg:Lcom/google/android/gms/common/api/Api$zza;

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZj:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZk:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZl:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/gms/signin/zze$zza;

    invoke-direct {v0}, Lcom/google/android/gms/signin/zze$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZm:Lcom/google/android/gms/signin/zze$zza;

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzYV:Landroid/os/Looper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzQl:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZb:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Must provide a connected listener"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZk:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "Must provide a connection failed listener"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZl:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/GoogleApiClient$Builder;)Landroid/support/v4/app/FragmentActivity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZe:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method private varargs zza(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;I[Lcom/google/android/gms/common/api/Scope;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;TO;I[",
            "Lcom/google/android/gms/common/api/Scope;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    :goto_0
    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zznb()Lcom/google/android/gms/common/api/Api$zza;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/android/gms/common/api/Api$zza;->zzl(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    array-length v3, p4

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, p4, v1

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid resolution mode: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', use a constant from GoogleApiClient.ResolutionMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZc:Ljava/util/Map;

    new-instance v3, Lcom/google/android/gms/common/internal/zzf$zza;

    invoke-direct {v3, v2, v0}, Lcom/google/android/gms/common/internal/zzf$zza;-><init>(Ljava/util/Set;Z)V

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/GoogleApiClient$Builder;Lcom/google/android/gms/common/api/zzp;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zza(Lcom/google/android/gms/common/api/zzp;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/common/api/zzp;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZf:I

    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZh:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    invoke-virtual {p1, v0, p2, v1}, Lcom/google/android/gms/common/api/zzp;->zza(ILcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method private zznj()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 11

    new-instance v0, Lcom/google/android/gms/common/api/zzi;

    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzYV:Landroid/os/Looper;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzni()Lcom/google/android/gms/common/internal/zzf;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZi:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v5, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZj:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v6, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZd:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZk:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZl:Ljava/util/ArrayList;

    iget v9, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZf:I

    const/4 v10, -0x1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/common/api/zzi;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/GoogleApiAvailability;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZe:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1}, Lcom/google/android/gms/common/api/zzp;->zza(Landroid/support/v4/app/FragmentActivity;)Lcom/google/android/gms/common/api/zzp;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/google/android/gms/common/api/GoogleApiClient$Builder$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder$1;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient$Builder;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zza(Lcom/google/android/gms/common/api/zzp;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    goto :goto_0
.end method

.method private zznk()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZe:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/google/android/gms/common/api/zzq;->zzc(Landroid/support/v4/app/FragmentActivity;)Lcom/google/android/gms/common/api/zzq;

    move-result-object v11

    iget v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZg:I

    invoke-virtual {v11, v0}, Lcom/google/android/gms/common/api/zzq;->zzbj(I)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/zzi;

    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzYV:Landroid/os/Looper;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzni()Lcom/google/android/gms/common/internal/zzf;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZi:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v5, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZj:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v6, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZd:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZk:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZl:Ljava/util/ArrayList;

    const/4 v9, -0x1

    iget v10, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZg:I

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/common/api/zzi;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/GoogleApiAvailability;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_0
    iget v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZg:I

    iget-object v2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZh:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    invoke-virtual {v11, v1, v0, v2}, Lcom/google/android/gms/common/api/zzq;->zza(ILcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-object v0
.end method


# virtual methods
.method public addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<+",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NotRequiredOptions;",
            ">;)",
            "Lcom/google/android/gms/common/api/GoogleApiClient$Builder;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZd:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzYY:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zznb()Lcom/google/android/gms/common/api/Api$zza;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/Api$zza;->zzl(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;TO;)",
            "Lcom/google/android/gms/common/api/GoogleApiClient$Builder;"
        }
    .end annotation

    const-string v0, "Null options are not permitted for this Api"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZd:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzYY:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zznb()Lcom/google/android/gms/common/api/Api$zza;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/common/api/Api$zza;->zzl(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs addApiIfAvailable(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;TO;[",
            "Lcom/google/android/gms/common/api/Scope;",
            ")",
            "Lcom/google/android/gms/common/api/GoogleApiClient$Builder;"
        }
    .end annotation

    const-string v0, "Null options are not permitted for this Api"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZd:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zza(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;I[Lcom/google/android/gms/common/api/Scope;)V

    return-object p0
.end method

.method public varargs addApiIfAvailable(Lcom/google/android/gms/common/api/Api;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<+",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NotRequiredOptions;",
            ">;[",
            "Lcom/google/android/gms/common/api/Scope;",
            ")",
            "Lcom/google/android/gms/common/api/GoogleApiClient$Builder;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZd:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zza(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;I[Lcom/google/android/gms/common/api/Scope;)V

    return-object p0
.end method

.method public addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZk:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZl:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzYY:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 11

    const/4 v9, -0x1

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZd:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "must call addApi() to add at least one API"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZf:I

    if-ltz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zznj()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZg:I

    if-ltz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zznk()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/common/api/zzi;

    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzYV:Landroid/os/Looper;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzni()Lcom/google/android/gms/common/internal/zzf;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZi:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v5, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZj:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v6, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZd:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZk:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZl:Ljava/util/ArrayList;

    move v10, v9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/common/api/zzi;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/GoogleApiAvailability;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    goto :goto_1
.end method

.method public enableAutoManage(Landroid/support/v4/app/FragmentActivity;ILcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 2

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "clientId must be non-negative"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iput p2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZf:I

    const-string v0, "Null activity is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZe:Landroid/support/v4/app/FragmentActivity;

    iput-object p3, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZh:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestServerAuthCode(Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZm:Lcom/google/android/gms/signin/zze$zza;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/signin/zze$zza;->zza(Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;)Lcom/google/android/gms/signin/zze$zza;

    return-object p0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzOY:Landroid/accounts/Account;

    return-object p0

    :cond_0
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setGravityForPopups(I)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzYZ:I

    return-object p0
.end method

.method public setHandler(Landroid/os/Handler;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 1

    const-string v0, "Handler must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzYV:Landroid/os/Looper;

    return-object p0
.end method

.method public setViewForPopups(Landroid/view/View;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZa:Landroid/view/View;

    return-object p0
.end method

.method public useDefaultAccount()Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 1

    const-string v0, "<<default account>>"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public zzni()Lcom/google/android/gms/common/internal/zzf;
    .locals 9

    new-instance v0, Lcom/google/android/gms/common/internal/zzf;

    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzOY:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzYY:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZc:Ljava/util/Map;

    iget v4, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzYZ:I

    iget-object v5, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZa:Landroid/view/View;

    iget-object v6, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzQl:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZb:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzZm:Lcom/google/android/gms/signin/zze$zza;

    invoke-virtual {v8}, Lcom/google/android/gms/signin/zze$zza;->zzzr()Lcom/google/android/gms/signin/zze;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/zzf;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/signin/zze;)V

    return-object v0
.end method
