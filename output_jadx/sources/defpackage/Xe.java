package defpackage;

/* loaded from: classes.dex */
public final class Xe implements InterfaceC0518u4 {
    public final Class a;

    public Xe(Class cls) {
        this.a = cls;
    }

    @Override // defpackage.InterfaceC0518u4
    public final Class a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Xe) {
            if (AbstractC0348nb.g(this.a, ((Xe) obj).a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return this.a.toString() + " (Kotlin reflection is not available)";
    }
}
