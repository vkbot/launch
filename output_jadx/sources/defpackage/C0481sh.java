package defpackage;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* renamed from: sh, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0481sh implements Iterable {
    public C0406ph a;
    public C0406ph b;
    public final WeakHashMap c = new WeakHashMap();
    public int d = 0;

    public C0406ph a(Object obj) {
        C0406ph c0406ph = this.a;
        while (c0406ph != null && !c0406ph.a.equals(obj)) {
            c0406ph = c0406ph.c;
        }
        return c0406ph;
    }

    public Object b(Object obj) {
        C0406ph a = a(obj);
        if (a == null) {
            return null;
        }
        this.d--;
        WeakHashMap weakHashMap = this.c;
        if (!weakHashMap.isEmpty()) {
            Iterator it = weakHashMap.keySet().iterator();
            while (it.hasNext()) {
                ((AbstractC0456rh) it.next()).a(a);
            }
        }
        C0406ph c0406ph = a.d;
        if (c0406ph != null) {
            c0406ph.c = a.c;
        } else {
            this.a = a.c;
        }
        C0406ph c0406ph2 = a.c;
        if (c0406ph2 != null) {
            c0406ph2.d = c0406ph;
        } else {
            this.b = c0406ph;
        }
        a.c = null;
        a.d = null;
        return a.b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0048, code lost:
    
        if (r1.hasNext() != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0050, code lost:
    
        if (((defpackage.C0380oh) r6).hasNext() != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:?, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0054, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = 1
            if (r6 != r5) goto L4
            return r0
        L4:
            boolean r1 = r6 instanceof defpackage.C0481sh
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            sh r6 = (defpackage.C0481sh) r6
            int r1 = r5.d
            int r3 = r6.d
            if (r1 == r3) goto L13
            return r2
        L13:
            java.util.Iterator r5 = r5.iterator()
            java.util.Iterator r6 = r6.iterator()
        L1b:
            r1 = r5
            oh r1 = (defpackage.C0380oh) r1
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto L44
            r3 = r6
            oh r3 = (defpackage.C0380oh) r3
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L44
            java.lang.Object r1 = r1.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r3 = r3.next()
            if (r1 != 0) goto L3b
            if (r3 != 0) goto L43
        L3b:
            if (r1 == 0) goto L1b
            boolean r1 = r1.equals(r3)
            if (r1 != 0) goto L1b
        L43:
            return r2
        L44:
            boolean r5 = r1.hasNext()
            if (r5 != 0) goto L53
            oh r6 = (defpackage.C0380oh) r6
            boolean r5 = r6.hasNext()
            if (r5 != 0) goto L53
            goto L54
        L53:
            r0 = r2
        L54:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0481sh.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        Iterator it = iterator();
        int i = 0;
        while (true) {
            C0380oh c0380oh = (C0380oh) it;
            if (!c0380oh.hasNext()) {
                return i;
            }
            i += ((Map.Entry) c0380oh.next()).hashCode();
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        C0380oh c0380oh = new C0380oh(this.a, this.b, 0);
        this.c.put(c0380oh, Boolean.FALSE);
        return c0380oh;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        Iterator it = iterator();
        while (true) {
            C0380oh c0380oh = (C0380oh) it;
            if (!c0380oh.hasNext()) {
                sb.append("]");
                return sb.toString();
            }
            sb.append(((Map.Entry) c0380oh.next()).toString());
            if (c0380oh.hasNext()) {
                sb.append(", ");
            }
        }
    }
}
