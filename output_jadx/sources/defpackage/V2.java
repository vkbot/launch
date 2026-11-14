package defpackage;

import java.lang.reflect.Array;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class V2 {
    public C0143fd a;
    public C0143fd b;
    public C0195hd c;
    public final /* synthetic */ int d;
    public final /* synthetic */ Object e;

    public /* synthetic */ V2(int i, Object obj) {
        this.d = i;
        this.e = obj;
    }

    public static boolean h(Set set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public final void a() {
        switch (this.d) {
            case 0:
                ((W2) this.e).clear();
                return;
            default:
                ((Y2) this.e).clear();
                return;
        }
    }

    public final Object b(int i, int i2) {
        switch (this.d) {
            case 0:
                return ((W2) this.e).b[(i << 1) + i2];
            default:
                return ((Y2) this.e).b[i];
        }
    }

    public final Map c() {
        switch (this.d) {
            case 0:
                return (W2) this.e;
            default:
                throw new UnsupportedOperationException("not a map");
        }
    }

    public final int d() {
        switch (this.d) {
            case 0:
                return ((W2) this.e).c;
            default:
                return ((Y2) this.e).c;
        }
    }

    public final int e(Object obj) {
        switch (this.d) {
            case 0:
                return ((W2) this.e).e(obj);
            default:
                return ((Y2) this.e).indexOf(obj);
        }
    }

    public final int f(Object obj) {
        switch (this.d) {
            case 0:
                return ((W2) this.e).g(obj);
            default:
                return ((Y2) this.e).indexOf(obj);
        }
    }

    public final void g(int i) {
        switch (this.d) {
            case 0:
                ((W2) this.e).i(i);
                return;
            default:
                ((Y2) this.e).e(i);
                return;
        }
    }

    public final Object[] i(Object[] objArr, int i) {
        int d = d();
        if (objArr.length < d) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), d);
        }
        for (int i2 = 0; i2 < d; i2++) {
            objArr[i2] = b(i2, i);
        }
        if (objArr.length > d) {
            objArr[d] = null;
        }
        return objArr;
    }
}
