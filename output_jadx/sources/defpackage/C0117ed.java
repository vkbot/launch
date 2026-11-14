package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* renamed from: ed, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0117ed implements Iterator {
    public final int a;
    public int b;
    public int c;
    public boolean d = false;
    public final /* synthetic */ V2 e;

    public C0117ed(V2 v2, int i) {
        this.e = v2;
        this.a = i;
        this.b = v2.d();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.c < this.b;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        Object b = this.e.b(this.c, this.a);
        this.c++;
        this.d = true;
        return b;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.d) {
            throw new IllegalStateException();
        }
        int i = this.c - 1;
        this.c = i;
        this.b--;
        this.d = false;
        this.e.g(i);
    }
}
