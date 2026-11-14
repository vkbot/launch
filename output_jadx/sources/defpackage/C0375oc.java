package defpackage;

import java.io.BufferedReader;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* renamed from: oc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0375oc implements Iterator {
    public String a;
    public boolean b;
    public final /* synthetic */ C0401pc c;

    public C0375oc(C0401pc c0401pc) {
        this.c = c0401pc;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.a == null && !this.b) {
            String readLine = ((BufferedReader) this.c.b).readLine();
            this.a = readLine;
            if (readLine == null) {
                this.b = true;
            }
        }
        return this.a != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        String str = this.a;
        this.a = null;
        AbstractC0348nb.o(str);
        return str;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
