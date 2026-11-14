package defpackage;

import android.view.WindowInsets;

/* renamed from: oo, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0387oo extends qo {
    public final WindowInsets.Builder c;

    public C0387oo() {
        this.c = new WindowInsets.Builder();
    }

    @Override // defpackage.qo
    public yo b() {
        a();
        yo f = yo.f(null, this.c.build());
        f.a.o(this.b);
        return f;
    }

    @Override // defpackage.qo
    public void d(C0090db c0090db) {
        this.c.setMandatorySystemGestureInsets(c0090db.d());
    }

    @Override // defpackage.qo
    public void e(C0090db c0090db) {
        this.c.setSystemGestureInsets(c0090db.d());
    }

    @Override // defpackage.qo
    public void f(C0090db c0090db) {
        this.c.setSystemWindowInsets(c0090db.d());
    }

    @Override // defpackage.qo
    public void g(C0090db c0090db) {
        this.c.setTappableElementInsets(c0090db.d());
    }

    public void h(C0090db c0090db) {
        this.c.setStableInsets(c0090db.d());
    }

    public C0387oo(yo yoVar) {
        super(yoVar);
        WindowInsets.Builder builder;
        WindowInsets e = yoVar.e();
        if (e != null) {
            builder = new WindowInsets.Builder(e);
        } else {
            builder = new WindowInsets.Builder();
        }
        this.c = builder;
    }
}
