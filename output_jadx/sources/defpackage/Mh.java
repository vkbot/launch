package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class Mh implements Iterator, S5 {
    public int a;
    public Object b;
    public Iterator c;
    public S5 d;

    public final RuntimeException a() {
        int i = this.a;
        if (i == 4) {
            return new NoSuchElementException();
        }
        if (i == 5) {
            return new IllegalStateException("Iterator has failed.");
        }
        return new IllegalStateException("Unexpected state of the iterator: " + this.a);
    }

    public final void b(Object obj, AbstractC0224ih abstractC0224ih) {
        this.b = obj;
        this.a = 3;
        this.d = abstractC0224ih;
    }

    @Override // defpackage.S5
    public final void c(Object obj) {
        AbstractC0171gf.v(obj);
        this.a = 4;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        while (true) {
            int i = this.a;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2 || i == 3) {
                        return true;
                    }
                    if (i == 4) {
                        return false;
                    }
                    throw a();
                }
                Iterator it = this.c;
                AbstractC0348nb.o(it);
                if (it.hasNext()) {
                    this.a = 2;
                    return true;
                }
                this.c = null;
            }
            this.a = 5;
            S5 s5 = this.d;
            AbstractC0348nb.o(s5);
            this.d = null;
            s5.c(C0486sm.a);
        }
    }

    @Override // defpackage.S5
    public final InterfaceC0110e6 i() {
        return C0497t8.a;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.a;
        if (i == 0 || i == 1) {
            if (hasNext()) {
                return next();
            }
            throw new NoSuchElementException();
        }
        if (i == 2) {
            this.a = 1;
            Iterator it = this.c;
            AbstractC0348nb.o(it);
            return it.next();
        }
        if (i != 3) {
            throw a();
        }
        this.a = 0;
        Object obj = this.b;
        this.b = null;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
