.class public final Ltj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Integer;

.field public final b:Ljava/util/List;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/util/List;I)V
    .locals 1

    const-string v0, "windows"

    invoke-static {p2, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltj;->a:Ljava/lang/Integer;

    iput-object p2, p0, Ltj;->b:Ljava/util/List;

    iput p3, p0, Ltj;->c:I

    return-void
.end method
