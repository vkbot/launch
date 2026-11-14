package defpackage;

/* renamed from: ra, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0449ra extends I3 implements InterfaceC0425qa, Ib, InterfaceC0399pa {
    public final int g;
    public final int h;

    public AbstractC0449ra(int i, Object obj, Class cls, String str, String str2) {
        super(obj, cls, str, str2, false);
        this.g = i;
        this.h = 0;
    }

    public final Ib b() {
        Lg.a.getClass();
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [Ib] */
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC0449ra) {
            AbstractC0449ra abstractC0449ra = (AbstractC0449ra) obj;
            return this.d.equals(abstractC0449ra.d) && this.e.equals(abstractC0449ra.e) && this.h == abstractC0449ra.h && this.g == abstractC0449ra.g && AbstractC0348nb.g(this.b, abstractC0449ra.b) && a().equals(abstractC0449ra.a());
        }
        if (!(obj instanceof AbstractC0449ra)) {
            return false;
        }
        ?? r0 = this.a;
        if (r0 == 0) {
            b();
            this.a = this;
        } else {
            this = r0;
        }
        return obj.equals(this);
    }

    @Override // defpackage.InterfaceC0425qa
    public final int f() {
        return this.g;
    }

    public final int hashCode() {
        a();
        return this.e.hashCode() + AbstractC0407pi.e(this.d, a().hashCode() * 31, 31);
    }

    public final String toString() {
        Ib ib = this.a;
        if (ib == null) {
            b();
            this.a = this;
            ib = this;
        }
        if (ib != this) {
            return ib.toString();
        }
        String str = this.d;
        if ("<init>".equals(str)) {
            return "constructor (Kotlin reflection is not available)";
        }
        return "function " + str + " (Kotlin reflection is not available)";
    }
}
