.class public final Lr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LEe;


# static fields
.field public static final a:Lr0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lr0;->a:Lr0;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Active"

    return-object p0
.end method
