package defpackage;

import android.os.Build;
import android.view.View;

/* loaded from: classes.dex */
public class wo {
    public static final yo b;
    public final yo a;

    static {
        b = (Build.VERSION.SDK_INT >= 30 ? new C0413po() : new C0387oo()).b().a.a().a.b().a.c();
    }

    public wo(yo yoVar) {
        this.a = yoVar;
    }

    public yo a() {
        return this.a;
    }

    public yo b() {
        return this.a;
    }

    public yo c() {
        return this.a;
    }

    public void d(View view) {
    }

    public C0596x7 e() {
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wo)) {
            return false;
        }
        wo woVar = (wo) obj;
        return n() == woVar.n() && m() == woVar.m() && He.a(j(), woVar.j()) && He.a(h(), woVar.h()) && He.a(e(), woVar.e());
    }

    public C0090db f(int i) {
        return C0090db.e;
    }

    public C0090db g() {
        return j();
    }

    public C0090db h() {
        return C0090db.e;
    }

    public int hashCode() {
        return He.b(Boolean.valueOf(n()), Boolean.valueOf(m()), j(), h(), e());
    }

    public C0090db i() {
        return j();
    }

    public C0090db j() {
        return C0090db.e;
    }

    public C0090db k() {
        return j();
    }

    public yo l(int i, int i2, int i3, int i4) {
        return b;
    }

    public boolean m() {
        return false;
    }

    public boolean n() {
        return false;
    }

    public void o(C0090db[] c0090dbArr) {
    }

    public void p(yo yoVar) {
    }
}
