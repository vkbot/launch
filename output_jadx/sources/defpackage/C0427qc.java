package defpackage;

import java.util.AbstractList;
import java.util.ConcurrentModificationException;
import java.util.ListIterator;
import java.util.NoSuchElementException;

/* renamed from: qc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0427qc implements ListIterator {
    public final C0451rc a;
    public int b;
    public int c;
    public int d;

    public C0427qc(C0451rc c0451rc, int i) {
        int i2;
        AbstractC0348nb.r(c0451rc, "list");
        this.a = c0451rc;
        this.b = i;
        this.c = -1;
        i2 = ((AbstractList) c0451rc).modCount;
        this.d = i2;
    }

    public final void a() {
        int i;
        i = ((AbstractList) this.a).modCount;
        if (i != this.d) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        int i;
        a();
        int i2 = this.b;
        this.b = i2 + 1;
        C0451rc c0451rc = this.a;
        c0451rc.add(i2, obj);
        this.c = -1;
        i = ((AbstractList) c0451rc).modCount;
        this.d = i;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.b < this.a.c;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.b > 0;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        a();
        int i = this.b;
        C0451rc c0451rc = this.a;
        if (i >= c0451rc.c) {
            throw new NoSuchElementException();
        }
        this.b = i + 1;
        this.c = i;
        return c0451rc.a[c0451rc.b + i];
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.b;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        a();
        int i = this.b;
        if (i <= 0) {
            throw new NoSuchElementException();
        }
        int i2 = i - 1;
        this.b = i2;
        this.c = i2;
        C0451rc c0451rc = this.a;
        return c0451rc.a[c0451rc.b + i2];
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.b - 1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        int i;
        a();
        int i2 = this.c;
        if (i2 == -1) {
            throw new IllegalStateException("Call next() or previous() before removing element from the iterator.");
        }
        C0451rc c0451rc = this.a;
        c0451rc.b(i2);
        this.b = this.c;
        this.c = -1;
        i = ((AbstractList) c0451rc).modCount;
        this.d = i;
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        a();
        int i = this.c;
        if (i == -1) {
            throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.");
        }
        this.a.set(i, obj);
    }
}
