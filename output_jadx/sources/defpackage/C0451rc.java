package defpackage;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* renamed from: rc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0451rc extends AbstractC0181h implements RandomAccess, Serializable {
    public static final C0451rc g;
    public Object[] a;
    public final int b;
    public int c;
    public boolean d;
    public final C0451rc e;
    public final C0451rc f;

    static {
        C0451rc c0451rc = new C0451rc(0);
        c0451rc.d = true;
        g = c0451rc;
    }

    public C0451rc(Object[] objArr, int i, int i2, boolean z, C0451rc c0451rc, C0451rc c0451rc2) {
        this.a = objArr;
        this.b = i;
        this.c = i2;
        this.d = z;
        this.e = c0451rc;
        this.f = c0451rc2;
        if (c0451rc != null) {
            ((AbstractList) this).modCount = ((AbstractList) c0451rc).modCount;
        }
    }

    @Override // defpackage.AbstractC0181h
    public final int a() {
        f();
        return this.c;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        g();
        f();
        e(this.b + this.c, obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        AbstractC0348nb.r(collection, "elements");
        g();
        f();
        int size = collection.size();
        d(this.b + this.c, collection, size);
        return size > 0;
    }

    @Override // defpackage.AbstractC0181h
    public final Object b(int i) {
        g();
        f();
        int i2 = this.c;
        if (i >= 0 && i < i2) {
            return i(this.b + i);
        }
        throw new IndexOutOfBoundsException("index: " + i + ", size: " + i2);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        g();
        f();
        j(this.b, this.c);
    }

    public final void d(int i, Collection collection, int i2) {
        ((AbstractList) this).modCount++;
        C0451rc c0451rc = this.e;
        if (c0451rc != null) {
            c0451rc.d(i, collection, i2);
            this.a = c0451rc.a;
            this.c += i2;
        } else {
            h(i, i2);
            Iterator it = collection.iterator();
            for (int i3 = 0; i3 < i2; i3++) {
                this.a[i + i3] = it.next();
            }
        }
    }

    public final void e(int i, Object obj) {
        ((AbstractList) this).modCount++;
        C0451rc c0451rc = this.e;
        if (c0451rc == null) {
            h(i, 1);
            this.a[i] = obj;
        } else {
            c0451rc.e(i, obj);
            this.a = c0451rc.a;
            this.c++;
        }
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        f();
        if (obj != this) {
            if (!(obj instanceof List)) {
                return false;
            }
            List list = (List) obj;
            Object[] objArr = this.a;
            int i = this.c;
            if (i != list.size()) {
                return false;
            }
            for (int i2 = 0; i2 < i; i2++) {
                if (!AbstractC0348nb.g(objArr[this.b + i2], list.get(i2))) {
                    return false;
                }
            }
        }
        return true;
    }

    public final void f() {
        C0451rc c0451rc = this.f;
        if (c0451rc != null && ((AbstractList) c0451rc).modCount != ((AbstractList) this).modCount) {
            throw new ConcurrentModificationException();
        }
    }

    public final void g() {
        C0451rc c0451rc;
        if (this.d || ((c0451rc = this.f) != null && c0451rc.d)) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        f();
        int i2 = this.c;
        if (i >= 0 && i < i2) {
            return this.a[this.b + i];
        }
        throw new IndexOutOfBoundsException("index: " + i + ", size: " + i2);
    }

    public final void h(int i, int i2) {
        int i3 = this.c + i2;
        if (i3 < 0) {
            throw new OutOfMemoryError();
        }
        Object[] objArr = this.a;
        if (i3 > objArr.length) {
            int length = objArr.length;
            int i4 = length + (length >> 1);
            if (i4 - i3 < 0) {
                i4 = i3;
            }
            if (i4 - 2147483639 > 0) {
                i4 = i3 > 2147483639 ? Integer.MAX_VALUE : 2147483639;
            }
            Object[] copyOf = Arrays.copyOf(objArr, i4);
            AbstractC0348nb.q(copyOf, "copyOf(...)");
            this.a = copyOf;
        }
        Object[] objArr2 = this.a;
        Z2.U(objArr2, objArr2, i + i2, i, this.b + this.c);
        this.c += i2;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        f();
        Object[] objArr = this.a;
        int i = this.c;
        int i2 = 1;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[this.b + i3];
            i2 = (i2 * 31) + (obj != null ? obj.hashCode() : 0);
        }
        return i2;
    }

    public final Object i(int i) {
        ((AbstractList) this).modCount++;
        C0451rc c0451rc = this.e;
        if (c0451rc != null) {
            this.c--;
            return c0451rc.i(i);
        }
        Object[] objArr = this.a;
        Object obj = objArr[i];
        int i2 = this.c;
        int i3 = this.b;
        Z2.U(objArr, objArr, i, i + 1, i2 + i3);
        Object[] objArr2 = this.a;
        int i4 = (i3 + this.c) - 1;
        AbstractC0348nb.r(objArr2, "<this>");
        objArr2[i4] = null;
        this.c--;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        f();
        for (int i = 0; i < this.c; i++) {
            if (AbstractC0348nb.g(this.a[this.b + i], obj)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        f();
        return this.c == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator(0);
    }

    public final void j(int i, int i2) {
        if (i2 > 0) {
            ((AbstractList) this).modCount++;
        }
        C0451rc c0451rc = this.e;
        if (c0451rc != null) {
            c0451rc.j(i, i2);
        } else {
            Object[] objArr = this.a;
            Z2.U(objArr, objArr, i, i + i2, this.c);
            Object[] objArr2 = this.a;
            int i3 = this.c;
            AbstractC0348nb.r(objArr2, "<this>");
            for (int i4 = i3 - i2; i4 < i3; i4++) {
                objArr2[i4] = null;
            }
        }
        this.c -= i2;
    }

    public final int k(int i, int i2, Collection collection, boolean z) {
        int i3;
        C0451rc c0451rc = this.e;
        if (c0451rc != null) {
            i3 = c0451rc.k(i, i2, collection, z);
        } else {
            int i4 = 0;
            int i5 = 0;
            while (i4 < i2) {
                int i6 = i + i4;
                if (collection.contains(this.a[i6]) == z) {
                    Object[] objArr = this.a;
                    i4++;
                    objArr[i5 + i] = objArr[i6];
                    i5++;
                } else {
                    i4++;
                }
            }
            int i7 = i2 - i5;
            Object[] objArr2 = this.a;
            Z2.U(objArr2, objArr2, i + i5, i2 + i, this.c);
            Object[] objArr3 = this.a;
            int i8 = this.c;
            AbstractC0348nb.r(objArr3, "<this>");
            for (int i9 = i8 - i7; i9 < i8; i9++) {
                objArr3[i9] = null;
            }
            i3 = i7;
        }
        if (i3 > 0) {
            ((AbstractList) this).modCount++;
        }
        this.c -= i3;
        return i3;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        f();
        for (int i = this.c - 1; i >= 0; i--) {
            if (AbstractC0348nb.g(this.a[this.b + i], obj)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        g();
        f();
        int indexOf = indexOf(obj);
        if (indexOf >= 0) {
            b(indexOf);
        }
        return indexOf >= 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        AbstractC0348nb.r(collection, "elements");
        g();
        f();
        return k(this.b, this.c, collection, false) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        AbstractC0348nb.r(collection, "elements");
        g();
        f();
        return k(this.b, this.c, collection, true) > 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        g();
        f();
        int i2 = this.c;
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException("index: " + i + ", size: " + i2);
        }
        Object[] objArr = this.a;
        int i3 = this.b;
        Object obj2 = objArr[i3 + i];
        objArr[i3 + i] = obj;
        return obj2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i, int i2) {
        AbstractC0348nb.s(i, i2, this.c);
        Object[] objArr = this.a;
        int i3 = this.b + i;
        int i4 = i2 - i;
        boolean z = this.d;
        C0451rc c0451rc = this.f;
        return new C0451rc(objArr, i3, i4, z, this, c0451rc == null ? this : c0451rc);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        AbstractC0348nb.r(objArr, "destination");
        f();
        int length = objArr.length;
        int i = this.c;
        int i2 = this.b;
        if (length < i) {
            Object[] copyOfRange = Arrays.copyOfRange(this.a, i2, i + i2, objArr.getClass());
            AbstractC0348nb.q(copyOfRange, "copyOfRange(...)");
            return copyOfRange;
        }
        Z2.U(this.a, objArr, 0, i2, i + i2);
        int i3 = this.c;
        if (i3 < objArr.length) {
            objArr[i3] = null;
        }
        return objArr;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        f();
        Object[] objArr = this.a;
        int i = this.c;
        StringBuilder sb = new StringBuilder((i * 3) + 2);
        sb.append("[");
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            Object obj = objArr[this.b + i2];
            if (obj == this) {
                sb.append("(this Collection)");
            } else {
                sb.append(obj);
            }
        }
        sb.append("]");
        String sb2 = sb.toString();
        AbstractC0348nb.q(sb2, "toString(...)");
        return sb2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        f();
        int i2 = this.c;
        if (i >= 0 && i <= i2) {
            return new C0427qc(this, i);
        }
        throw new IndexOutOfBoundsException("index: " + i + ", size: " + i2);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        g();
        f();
        int i2 = this.c;
        if (i >= 0 && i <= i2) {
            e(this.b + i, obj);
            return;
        }
        throw new IndexOutOfBoundsException("index: " + i + ", size: " + i2);
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        AbstractC0348nb.r(collection, "elements");
        g();
        f();
        int i2 = this.c;
        if (i >= 0 && i <= i2) {
            int size = collection.size();
            d(this.b + i, collection, size);
            return size > 0;
        }
        throw new IndexOutOfBoundsException("index: " + i + ", size: " + i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        f();
        Object[] objArr = this.a;
        int i = this.c;
        int i2 = this.b;
        int i3 = i + i2;
        AbstractC0348nb.r(objArr, "<this>");
        int length = objArr.length;
        if (i3 <= length) {
            Object[] copyOfRange = Arrays.copyOfRange(objArr, i2, i3);
            AbstractC0348nb.q(copyOfRange, "copyOfRange(...)");
            return copyOfRange;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i3 + ") is greater than size (" + length + ").");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C0451rc(int i) {
        this(new Object[i], 0, 0, false, null, null);
        if (i >= 0) {
            return;
        }
        throw new IllegalArgumentException("capacity must be non-negative.");
    }
}
