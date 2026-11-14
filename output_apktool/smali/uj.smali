.class public final Luj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Integer;

.field public final c:Landroid/graphics/Rect;

.field public final d:Ltj;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Landroid/graphics/Rect;Ltj;)V
    .locals 1

    const-string v0, "pkg"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luj;->a:Ljava/lang/String;

    iput-object p2, p0, Luj;->b:Ljava/lang/Integer;

    iput-object p3, p0, Luj;->c:Landroid/graphics/Rect;

    iput-object p4, p0, Luj;->d:Ltj;

    return-void
.end method
