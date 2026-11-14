.class public final LEj;
.super Lgf;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/text/TextPaint;

.field public final synthetic c:Lgf;

.field public final synthetic d:LFj;


# direct methods
.method public constructor <init>(LFj;Landroid/content/Context;Landroid/text/TextPaint;Lgf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LEj;->d:LFj;

    iput-object p2, p0, LEj;->a:Landroid/content/Context;

    iput-object p3, p0, LEj;->b:Landroid/text/TextPaint;

    iput-object p4, p0, LEj;->c:Lgf;

    return-void
.end method


# virtual methods
.method public final m(I)V
    .locals 0

    iget-object p0, p0, LEj;->c:Lgf;

    invoke-virtual {p0, p1}, Lgf;->m(I)V

    return-void
.end method

.method public final n(Landroid/graphics/Typeface;Z)V
    .locals 3

    iget-object v0, p0, LEj;->b:Landroid/text/TextPaint;

    iget-object v1, p0, LEj;->d:LFj;

    iget-object v2, p0, LEj;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, p1}, LFj;->g(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    iget-object p0, p0, LEj;->c:Lgf;

    invoke-virtual {p0, p1, p2}, Lgf;->n(Landroid/graphics/Typeface;Z)V

    return-void
.end method
