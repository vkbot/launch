.class public final Lsl;
.super Ldj;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public final synthetic e:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Ljava/util/List;Ljava/util/List;LS5;)V
    .locals 0

    iput-object p1, p0, Lsl;->e:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p2, p0, Lsl;->f:Ljava/util/List;

    iput-object p3, p0, Lsl;->g:Ljava/util/List;

    invoke-direct {p0, p4}, Ldj;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 2

    new-instance p2, Lsl;

    iget-object v0, p0, Lsl;->f:Ljava/util/List;

    iget-object v1, p0, Lsl;->g:Ljava/util/List;

    iget-object p0, p0, Lsl;->e:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-direct {p2, p0, v0, v1, p1}, Lsl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Ljava/util/List;Ljava/util/List;LS5;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p1, p0, Lsl;->e:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {p1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->z()LJi;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lsl;->f:Ljava/util/List;

    const-string v2, "apps"

    invoke-static {v1, v2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, LJi;->b:Ljava/io/File;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/omoda/launcher/data/RemoteApp;

    invoke-virtual {v4}, Lcom/omoda/launcher/data/RemoteApp;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "toString(...)"

    invoke-static {v1, v3}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lh4;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v3, "getBytes(...)"

    invoke-static {v1, v3}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, LJi;->b(Ljava/io/File;[B)V

    invoke-virtual {p1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->z()LJi;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lsl;->g:Ljava/util/List;

    const-string v0, "urls"

    invoke-static {p0, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, LN4;->r0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, LJi;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v0}, LL4;->F0(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p0

    iget-object p1, p1, LJi;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getName(...)"

    invoke-static {v4, v5}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "icon_"

    invoke-static {v4, v5}, LSi;->P(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_3

    :cond_4
    sget-object p0, Lsm;->a:Lsm;

    return-object p0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, Lsl;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, Lsl;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, Lsl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
