package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* renamed from: fd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0143fd implements Set {
    public final /* synthetic */ int a;
    public final /* synthetic */ V2 b;

    public /* synthetic */ C0143fd(V2 v2, int i) {
        this.a = i;
        this.b = v2;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean add(Object obj) {
        switch (this.a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean addAll(Collection collection) {
        switch (this.a) {
            case 0:
                V2 v2 = this.b;
                int d = v2.d();
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    Object key = entry.getKey();
                    Object value = entry.getValue();
                    switch (v2.d) {
                        case 0:
                            ((W2) v2.e).put(key, value);
                            break;
                        default:
                            ((Y2) v2.e).add(key);
                            break;
                    }
                }
                return d != v2.d();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final void clear() {
        switch (this.a) {
            case 0:
                this.b.a();
                return;
            default:
                this.b.a();
                return;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean contains(Object obj) {
        switch (this.a) {
            case 0:
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                V2 v2 = this.b;
                int e = v2.e(key);
                if (e < 0) {
                    return false;
                }
                Object b = v2.b(e, 1);
                Object value = entry.getValue();
                return b == value || (b != null && b.equals(value));
            default:
                return this.b.e(obj) >= 0;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean containsAll(Collection collection) {
        switch (this.a) {
            case 0:
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    if (!contains(it.next())) {
                        return false;
                    }
                }
                return true;
            default:
                Map c = this.b.c();
                Iterator it2 = collection.iterator();
                while (it2.hasNext()) {
                    if (!c.containsKey(it2.next())) {
                        return false;
                    }
                }
                return true;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean equals(Object obj) {
        switch (this.a) {
            case 0:
                return V2.h(this, obj);
            default:
                return V2.h(this, obj);
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final int hashCode() {
        switch (this.a) {
            case 0:
                V2 v2 = this.b;
                int i = 0;
                for (int d = v2.d() - 1; d >= 0; d--) {
                    Object b = v2.b(d, 0);
                    Object b2 = v2.b(d, 1);
                    i += (b == null ? 0 : b.hashCode()) ^ (b2 == null ? 0 : b2.hashCode());
                }
                return i;
            default:
                V2 v22 = this.b;
                int i2 = 0;
                for (int d2 = v22.d() - 1; d2 >= 0; d2--) {
                    Object b3 = v22.b(d2, 0);
                    i2 += b3 == null ? 0 : b3.hashCode();
                }
                return i2;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean isEmpty() {
        switch (this.a) {
            case 0:
                return this.b.d() == 0;
            default:
                return this.b.d() == 0;
        }
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        switch (this.a) {
            case 0:
                return new C0169gd(this.b);
            default:
                return new C0117ed(this.b, 0);
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean remove(Object obj) {
        switch (this.a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                V2 v2 = this.b;
                int e = v2.e(obj);
                if (e < 0) {
                    return false;
                }
                v2.g(e);
                return true;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean removeAll(Collection collection) {
        switch (this.a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                Map c = this.b.c();
                int size = c.size();
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    c.remove(it.next());
                }
                return size != c.size();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean retainAll(Collection collection) {
        switch (this.a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                Map c = this.b.c();
                int size = c.size();
                Iterator it = c.keySet().iterator();
                while (it.hasNext()) {
                    if (!collection.contains(it.next())) {
                        it.remove();
                    }
                }
                return size != c.size();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final int size() {
        switch (this.a) {
            case 0:
                return this.b.d();
            default:
                return this.b.d();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        switch (this.a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                return this.b.i(objArr, 0);
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray() {
        switch (this.a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                V2 v2 = this.b;
                int d = v2.d();
                Object[] objArr = new Object[d];
                for (int i = 0; i < d; i++) {
                    objArr[i] = v2.b(i, 0);
                }
                return objArr;
        }
    }
}
