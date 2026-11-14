package defpackage;

import android.animation.TimeInterpolator;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: c3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0056c3 extends Xl {
    public int A;
    public ArrayList w;
    public boolean x;
    public int y;
    public boolean z;

    @Override // defpackage.Xl
    public final void A(Of of) {
        super.A(of);
        this.A |= 4;
        if (this.w != null) {
            for (int i = 0; i < this.w.size(); i++) {
                ((Xl) this.w.get(i)).A(of);
            }
        }
    }

    @Override // defpackage.Xl
    public final void B() {
        this.A |= 2;
        int size = this.w.size();
        for (int i = 0; i < size; i++) {
            ((Xl) this.w.get(i)).B();
        }
    }

    @Override // defpackage.Xl
    public final void C(long j) {
        this.b = j;
    }

    @Override // defpackage.Xl
    public final String E(String str) {
        String E = super.E(str);
        for (int i = 0; i < this.w.size(); i++) {
            StringBuilder sb = new StringBuilder();
            sb.append(E);
            sb.append("\n");
            sb.append(((Xl) this.w.get(i)).E(str + "  "));
            E = sb.toString();
        }
        return E;
    }

    public final void F(Xl xl) {
        this.w.add(xl);
        xl.i = this;
        long j = this.c;
        if (j >= 0) {
            xl.x(j);
        }
        if ((this.A & 1) != 0) {
            xl.z(this.d);
        }
        if ((this.A & 2) != 0) {
            xl.B();
        }
        if ((this.A & 4) != 0) {
            xl.A(this.s);
        }
        if ((this.A & 8) != 0) {
            xl.y(null);
        }
    }

    @Override // defpackage.Xl
    public final void c(C0075cm c0075cm) {
        if (r(c0075cm.b)) {
            Iterator it = this.w.iterator();
            while (it.hasNext()) {
                Xl xl = (Xl) it.next();
                if (xl.r(c0075cm.b)) {
                    xl.c(c0075cm);
                    c0075cm.c.add(xl);
                }
            }
        }
    }

    @Override // defpackage.Xl
    public final void e(C0075cm c0075cm) {
        int size = this.w.size();
        for (int i = 0; i < size; i++) {
            ((Xl) this.w.get(i)).e(c0075cm);
        }
    }

    @Override // defpackage.Xl
    public final void f(C0075cm c0075cm) {
        if (r(c0075cm.b)) {
            Iterator it = this.w.iterator();
            while (it.hasNext()) {
                Xl xl = (Xl) it.next();
                if (xl.r(c0075cm.b)) {
                    xl.f(c0075cm);
                    c0075cm.c.add(xl);
                }
            }
        }
    }

    @Override // defpackage.Xl
    /* renamed from: i */
    public final Xl clone() {
        C0056c3 c0056c3 = (C0056c3) super.clone();
        c0056c3.w = new ArrayList();
        int size = this.w.size();
        for (int i = 0; i < size; i++) {
            Xl clone = ((Xl) this.w.get(i)).clone();
            c0056c3.w.add(clone);
            clone.i = c0056c3;
        }
        return c0056c3;
    }

    @Override // defpackage.Xl
    public final void k(ViewGroup viewGroup, C0446r7 c0446r7, C0446r7 c0446r72, ArrayList arrayList, ArrayList arrayList2) {
        long j = this.b;
        int size = this.w.size();
        for (int i = 0; i < size; i++) {
            Xl xl = (Xl) this.w.get(i);
            if (j > 0 && (this.x || i == 0)) {
                long j2 = xl.b;
                if (j2 > 0) {
                    xl.C(j2 + j);
                } else {
                    xl.C(j);
                }
            }
            xl.k(viewGroup, c0446r7, c0446r72, arrayList, arrayList2);
        }
    }

    @Override // defpackage.Xl
    public final void t(ViewGroup viewGroup) {
        super.t(viewGroup);
        int size = this.w.size();
        for (int i = 0; i < size; i++) {
            ((Xl) this.w.get(i)).t(viewGroup);
        }
    }

    @Override // defpackage.Xl
    public final void v(View view) {
        super.v(view);
        int size = this.w.size();
        for (int i = 0; i < size; i++) {
            ((Xl) this.w.get(i)).v(view);
        }
    }

    @Override // defpackage.Xl
    public final void w() {
        if (this.w.isEmpty()) {
            D();
            l();
            return;
        }
        Q8 q8 = new Q8();
        q8.b = this;
        Iterator it = this.w.iterator();
        while (it.hasNext()) {
            ((Xl) it.next()).a(q8);
        }
        this.y = this.w.size();
        if (this.x) {
            Iterator it2 = this.w.iterator();
            while (it2.hasNext()) {
                ((Xl) it2.next()).w();
            }
            return;
        }
        for (int i = 1; i < this.w.size(); i++) {
            ((Xl) this.w.get(i - 1)).a(new Q8(1, (Xl) this.w.get(i)));
        }
        Xl xl = (Xl) this.w.get(0);
        if (xl != null) {
            xl.w();
        }
    }

    @Override // defpackage.Xl
    public final void x(long j) {
        ArrayList arrayList;
        this.c = j;
        if (j < 0 || (arrayList = this.w) == null) {
            return;
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((Xl) this.w.get(i)).x(j);
        }
    }

    @Override // defpackage.Xl
    public final void y(AbstractC0145ff abstractC0145ff) {
        this.A |= 8;
        int size = this.w.size();
        for (int i = 0; i < size; i++) {
            ((Xl) this.w.get(i)).y(abstractC0145ff);
        }
    }

    @Override // defpackage.Xl
    public final void z(TimeInterpolator timeInterpolator) {
        this.A |= 1;
        ArrayList arrayList = this.w;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((Xl) this.w.get(i)).z(timeInterpolator);
            }
        }
        this.d = timeInterpolator;
    }
}
