.class public abstract LCn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lc4;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lc4;

    const-class v1, Ljava/lang/Float;

    const-string v2, "translationAlpha"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lc4;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, LCn;->a:Lc4;

    new-instance v0, Lc4;

    const-class v1, Landroid/graphics/Rect;

    const-string v2, "clipBounds"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lc4;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    return-void
.end method
