package defpackage;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class On {
    public static int f;
    public ArrayList a;
    public int b;
    public int c;
    public ArrayList d;
    public int e;

    public final void a(ArrayList arrayList) {
        int size = this.a.size();
        if (this.e != -1 && size > 0) {
            for (int i = 0; i < arrayList.size(); i++) {
                On on = (On) arrayList.get(i);
                if (this.e == on.b) {
                    c(this.c, on);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    public final int b(C0349nc c0349nc, int i) {
        int n;
        int n2;
        ArrayList arrayList = this.a;
        if (arrayList.size() == 0) {
            return 0;
        }
        E5 e5 = (E5) ((D5) arrayList.get(0)).T;
        c0349nc.t();
        e5.b(c0349nc, false);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            ((D5) arrayList.get(i2)).b(c0349nc, false);
        }
        if (i == 0 && e5.z0 > 0) {
            AbstractC0348nb.e(e5, c0349nc, arrayList, 0);
        }
        if (i == 1 && e5.A0 > 0) {
            AbstractC0348nb.e(e5, c0349nc, arrayList, 1);
        }
        try {
            c0349nc.p();
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.d = new ArrayList();
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            D5 d5 = (D5) arrayList.get(i3);
            Object obj = new Object();
            new WeakReference(d5);
            C0349nc.n(d5.I);
            C0349nc.n(d5.J);
            C0349nc.n(d5.K);
            C0349nc.n(d5.L);
            C0349nc.n(d5.M);
            this.d.add(obj);
        }
        if (i == 0) {
            n = C0349nc.n(e5.I);
            n2 = C0349nc.n(e5.K);
            c0349nc.t();
        } else {
            n = C0349nc.n(e5.J);
            n2 = C0349nc.n(e5.L);
            c0349nc.t();
        }
        return n2 - n;
    }

    public final void c(int i, On on) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            D5 d5 = (D5) it.next();
            ArrayList arrayList = on.a;
            if (!arrayList.contains(d5)) {
                arrayList.add(d5);
            }
            int i2 = on.b;
            if (i == 0) {
                d5.n0 = i2;
            } else {
                d5.o0 = i2;
            }
        }
        this.e = on.b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int i = this.c;
        sb.append(i == 0 ? "Horizontal" : i == 1 ? "Vertical" : i == 2 ? "Both" : "Unknown");
        sb.append(" [");
        sb.append(this.b);
        sb.append("] <");
        String sb2 = sb.toString();
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            sb2 = sb2 + " " + ((D5) it.next()).h0;
        }
        return AbstractC0407pi.i(sb2, " >");
    }
}
