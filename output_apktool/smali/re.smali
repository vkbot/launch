.class public final Lre;
.super Lq6;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lq6;)V
    .locals 1

    const-string v0, "initialExtras"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lq6;-><init>()V

    iget-object p0, p0, Lq6;->a:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lq6;->a:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
