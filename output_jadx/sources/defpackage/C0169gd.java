package defpackage;

import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;

/* renamed from: gd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0169gd implements Iterator, Map.Entry {
    public int a;
    public final /* synthetic */ V2 d;
    public boolean c = false;
    public int b = -1;

    public C0169gd(V2 v2) {
        this.d = v2;
        this.a = v2.d() - 1;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (!this.c) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        int i = this.b;
        V2 v2 = this.d;
        Object b = v2.b(i, 0);
        if (key != b && (key == null || !key.equals(b))) {
            return false;
        }
        Object value = entry.getValue();
        Object b2 = v2.b(this.b, 1);
        return value == b2 || (value != null && value.equals(b2));
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        if (!this.c) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        return this.d.b(this.b, 0);
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (!this.c) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        return this.d.b(this.b, 1);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.b < this.a;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        if (!this.c) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        int i = this.b;
        V2 v2 = this.d;
        Object b = v2.b(i, 0);
        Object b2 = v2.b(this.b, 1);
        return (b == null ? 0 : b.hashCode()) ^ (b2 != null ? b2.hashCode() : 0);
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.b++;
        this.c = true;
        return this;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.c) {
            throw new IllegalStateException();
        }
        this.d.g(this.b);
        this.b--;
        this.a--;
        this.c = false;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (!this.c) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        V2 v2 = this.d;
        int i = this.b;
        switch (v2.d) {
            case 0:
                int i2 = (i << 1) + 1;
                Object[] objArr = ((W2) v2.e).b;
                Object obj2 = objArr[i2];
                objArr[i2] = obj;
                return obj2;
            default:
                throw new UnsupportedOperationException("not a map");
        }
    }

    public final String toString() {
        return getKey() + "=" + getValue();
    }
}
