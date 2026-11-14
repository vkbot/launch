package defpackage;

import java.util.Map;

/* renamed from: ph, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0406ph implements Map.Entry {
    public final Object a;
    public final Object b;
    public C0406ph c;
    public C0406ph d;

    public C0406ph(Object obj, Object obj2) {
        this.a = obj;
        this.b = obj2;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0406ph)) {
            return false;
        }
        C0406ph c0406ph = (C0406ph) obj;
        return this.a.equals(c0406ph.a) && this.b.equals(c0406ph.b);
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return this.b.hashCode() ^ this.a.hashCode();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException("An entry modification is not supported");
    }

    public final String toString() {
        return this.a + "=" + this.b;
    }
}
