package defpackage;

import java.io.Serializable;

/* renamed from: jh, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0250jh implements Serializable {
    public final Throwable a;

    public C0250jh(Throwable th) {
        AbstractC0348nb.r(th, "exception");
        this.a = th;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C0250jh) {
            if (AbstractC0348nb.g(this.a, ((C0250jh) obj).a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "Failure(" + this.a + ')';
    }
}
