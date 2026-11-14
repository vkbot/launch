package defpackage;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class W2 extends C0277ki implements Map {
    public V2 h;

    public W2(C0277ki c0277ki) {
        int i = c0277ki.c;
        b(i);
        if (this.c != 0) {
            for (int i2 = 0; i2 < i; i2++) {
                put(c0277ki.h(i2), c0277ki.j(i2));
            }
        } else if (i > 0) {
            System.arraycopy(c0277ki.a, 0, this.a, 0, i);
            System.arraycopy(c0277ki.b, 0, this.b, 0, i << 1);
            this.c = i;
        }
    }

    @Override // java.util.Map
    public final Set entrySet() {
        if (this.h == null) {
            this.h = new V2(0, this);
        }
        V2 v2 = this.h;
        if (v2.a == null) {
            v2.a = new C0143fd(v2, 0);
        }
        return v2.a;
    }

    @Override // java.util.Map
    public final Set keySet() {
        if (this.h == null) {
            this.h = new V2(0, this);
        }
        V2 v2 = this.h;
        if (v2.b == null) {
            v2.b = new C0143fd(v2, 1);
        }
        return v2.b;
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        b(map.size() + this.c);
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public final Collection values() {
        if (this.h == null) {
            this.h = new V2(0, this);
        }
        V2 v2 = this.h;
        if (v2.c == null) {
            v2.c = new C0195hd(v2);
        }
        return v2.c;
    }
}
