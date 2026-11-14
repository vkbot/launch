package defpackage;

import java.io.Serializable;

/* renamed from: af, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0016af implements Serializable {
    public final Object a;
    public final Object b;

    public C0016af(Object obj, Object obj2) {
        this.a = obj;
        this.b = obj2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0016af)) {
            return false;
        }
        C0016af c0016af = (C0016af) obj;
        return AbstractC0348nb.g(this.a, c0016af.a) && AbstractC0348nb.g(this.b, c0016af.b);
    }

    public final int hashCode() {
        Object obj = this.a;
        int hashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.b;
        return hashCode + (obj2 != null ? obj2.hashCode() : 0);
    }

    public final String toString() {
        return "(" + this.a + ", " + this.b + ')';
    }
}
