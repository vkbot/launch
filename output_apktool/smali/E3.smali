.class public final LE3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LE3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LE3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LE3;->a:LE3;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    invoke-static {p1}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result p0

    return p0
.end method
