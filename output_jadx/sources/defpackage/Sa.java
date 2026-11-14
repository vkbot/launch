package defpackage;

/* loaded from: classes.dex */
public final class Sa {
    public final int a;
    public final Object b;

    public Sa(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Sa)) {
            return false;
        }
        Sa sa = (Sa) obj;
        return this.a == sa.a && AbstractC0348nb.g(this.b, sa.b);
    }

    public final int hashCode() {
        int hashCode = Integer.hashCode(this.a) * 31;
        Object obj = this.b;
        return hashCode + (obj == null ? 0 : obj.hashCode());
    }

    public final String toString() {
        return "IndexedValue(index=" + this.a + ", value=" + this.b + ')';
    }
}
