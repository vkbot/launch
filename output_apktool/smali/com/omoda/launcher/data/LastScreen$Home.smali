.class public final Lcom/omoda/launcher/data/LastScreen$Home;
.super Lcom/omoda/launcher/data/LastScreen;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/omoda/launcher/data/LastScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Home"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/omoda/launcher/data/LastScreen$Home;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/omoda/launcher/data/LastScreen$Home;

    invoke-direct {v0}, Lcom/omoda/launcher/data/LastScreen$Home;-><init>()V

    sput-object v0, Lcom/omoda/launcher/data/LastScreen$Home;->INSTANCE:Lcom/omoda/launcher/data/LastScreen$Home;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/omoda/launcher/data/LastScreen;-><init>(LF6;)V

    return-void
.end method
