package defpackage;

import java.util.Collection;
import java.util.Iterator;

/* renamed from: hd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0195hd implements Collection {
    public final /* synthetic */ V2 a;

    public C0195hd(V2 v2) {
        this.a = v2;
    }

    @Override // java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final void clear() {
        this.a.a();
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        return this.a.f(obj) >= 0;
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        return this.a.d() == 0;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new C0117ed(this.a, 1);
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        V2 v2 = this.a;
        int f = v2.f(obj);
        if (f < 0) {
            return false;
        }
        v2.g(f);
        return true;
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection collection) {
        V2 v2 = this.a;
        int d = v2.d();
        int i = 0;
        boolean z = false;
        while (i < d) {
            if (collection.contains(v2.b(i, 1))) {
                v2.g(i);
                i--;
                d--;
                z = true;
            }
            i++;
        }
        return z;
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection collection) {
        V2 v2 = this.a;
        int d = v2.d();
        int i = 0;
        boolean z = false;
        while (i < d) {
            if (!collection.contains(v2.b(i, 1))) {
                v2.g(i);
                i--;
                d--;
                z = true;
            }
            i++;
        }
        return z;
    }

    @Override // java.util.Collection
    public final int size() {
        return this.a.d();
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        V2 v2 = this.a;
        int d = v2.d();
        Object[] objArr = new Object[d];
        for (int i = 0; i < d; i++) {
            objArr[i] = v2.b(i, 1);
        }
        return objArr;
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        return this.a.i(objArr, 1);
    }
}
