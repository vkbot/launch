.class public final Lpd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Le;


# instance fields
.field public final a:Lb6;

.field public final b:Lb6;

.field public final c:Lb6;

.field public final d:Lb6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le;-><init>(F)V

    sput-object v0, Lpd;->e:Le;

    return-void
.end method

.method public constructor <init>(Lb6;Lb6;Lb6;Lb6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpd;->a:Lb6;

    iput-object p3, p0, Lpd;->b:Lb6;

    iput-object p4, p0, Lpd;->c:Lb6;

    iput-object p2, p0, Lpd;->d:Lb6;

    return-void
.end method
