package defpackage;

/* loaded from: classes.dex */
public final /* synthetic */ class Kc extends I3 implements S9, Ib {
    public final boolean g;

    public Kc(Lc lc) {
        super(lc, C6.class, "classSimpleName", "getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;", true);
        this.g = false;
    }

    public final Ib b() {
        if (this.g) {
            return this;
        }
        Ib ib = this.a;
        if (ib != null) {
            return ib;
        }
        Lg.a.getClass();
        this.a = this;
        return this;
    }

    @Override // defpackage.S9
    public final Object d() {
        return this.b.getClass().getSimpleName();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Kc) {
            Kc kc = (Kc) obj;
            return a().equals(kc.a()) && this.d.equals(kc.d) && this.e.equals(kc.e) && AbstractC0348nb.g(this.b, kc.b);
        }
        if (obj instanceof Kc) {
            return obj.equals(b());
        }
        return false;
    }

    public final int hashCode() {
        return this.e.hashCode() + AbstractC0407pi.e(this.d, a().hashCode() * 31, 31);
    }

    public final String toString() {
        Ib b = b();
        if (b != this) {
            return b.toString();
        }
        return "property " + this.d + " (Kotlin reflection is not available)";
    }
}
