package defpackage;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;

/* loaded from: classes.dex */
public final class Ej extends AbstractC0171gf {
    public final /* synthetic */ Context a;
    public final /* synthetic */ TextPaint b;
    public final /* synthetic */ AbstractC0171gf c;
    public final /* synthetic */ Fj d;

    public Ej(Fj fj, Context context, TextPaint textPaint, AbstractC0171gf abstractC0171gf) {
        this.d = fj;
        this.a = context;
        this.b = textPaint;
        this.c = abstractC0171gf;
    }

    @Override // defpackage.AbstractC0171gf
    public final void m(int i) {
        this.c.m(i);
    }

    @Override // defpackage.AbstractC0171gf
    public final void n(Typeface typeface, boolean z) {
        this.d.g(this.a, this.b, typeface);
        this.c.n(typeface, z);
    }
}
