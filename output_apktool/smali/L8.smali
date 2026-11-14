.class public final LL8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Lhf;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLhf;I)V
    .locals 1

    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_0

    const/4 p6, 0x0

    :cond_0
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_1

    const/4 p7, 0x0

    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL8;->a:Ljava/lang/String;

    iput-object p2, p0, LL8;->b:Ljava/lang/String;

    iput-object p3, p0, LL8;->c:Ljava/lang/String;

    iput-object p4, p0, LL8;->d:Ljava/lang/String;

    iput-object p5, p0, LL8;->e:Ljava/lang/String;

    iput-boolean p6, p0, LL8;->f:Z

    iput-object p7, p0, LL8;->g:Lhf;

    return-void
.end method
