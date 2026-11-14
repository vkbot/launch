package defpackage;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class Ua implements Iterator {
    public final Iterator a;
    public int b;

    public Ua(Iterator it) {
        AbstractC0348nb.r(it, "iterator");
        this.a = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.a.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.b;
        this.b = i + 1;
        if (i >= 0) {
            return new Sa(i, this.a.next());
        }
        M4.q0();
        throw null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
