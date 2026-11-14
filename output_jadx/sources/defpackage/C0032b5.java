package defpackage;

/* renamed from: b5, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0032b5 {
    public final Object a;
    public final InterfaceC0089da b;

    public C0032b5(Object obj, InterfaceC0089da interfaceC0089da) {
        this.a = obj;
        this.b = interfaceC0089da;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0032b5)) {
            return false;
        }
        C0032b5 c0032b5 = (C0032b5) obj;
        return AbstractC0348nb.g(this.a, c0032b5.a) && AbstractC0348nb.g(this.b, c0032b5.b);
    }

    public final int hashCode() {
        Object obj = this.a;
        return this.b.hashCode() + ((obj == null ? 0 : obj.hashCode()) * 31);
    }

    public final String toString() {
        return "CompletedWithCancellation(result=" + this.a + ", onCancellation=" + this.b + ')';
    }
}
