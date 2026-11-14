package defpackage;

import androidx.activity.b;

/* loaded from: classes.dex */
public final class Oe implements M3 {
    public final D9 a;
    public final /* synthetic */ b b;

    public Oe(b bVar, D9 d9) {
        AbstractC0348nb.r(d9, "onBackPressedCallback");
        this.b = bVar;
        this.a = d9;
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [S9, ra] */
    @Override // defpackage.M3
    public final void cancel() {
        b bVar = this.b;
        T2 t2 = bVar.b;
        D9 d9 = this.a;
        t2.remove(d9);
        if (AbstractC0348nb.g(bVar.c, d9)) {
            d9.getClass();
            bVar.c = null;
        }
        d9.b.remove(this);
        ?? r4 = d9.c;
        if (r4 != 0) {
            r4.d();
        }
        d9.c = null;
    }
}
