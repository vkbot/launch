package defpackage;

import java.io.Serializable;

/* renamed from: fj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0149fj implements Serializable {
    public Nb a;
    public volatile Object b = T7.u;
    public final Object c = this;

    /* JADX WARN: Multi-variable type inference failed */
    public C0149fj(S9 s9) {
        this.a = (Nb) s9;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [Nb, S9, java.lang.Object] */
    public final Object a() {
        Object obj;
        Object obj2 = this.b;
        T7 t7 = T7.u;
        if (obj2 != t7) {
            return obj2;
        }
        synchronized (this.c) {
            obj = this.b;
            if (obj == t7) {
                ?? r1 = this.a;
                AbstractC0348nb.o(r1);
                obj = r1.d();
                this.b = obj;
                this.a = null;
            }
        }
        return obj;
    }

    public final String toString() {
        return this.b != T7.u ? String.valueOf(a()) : "Lazy value not initialized yet.";
    }
}
