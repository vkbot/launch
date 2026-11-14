package defpackage;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class Q6 extends AbstractC0249jg {
    public static TimeInterpolator s;
    public boolean g;
    public ArrayList h;
    public ArrayList i;
    public ArrayList j;
    public ArrayList k;
    public ArrayList l;
    public ArrayList m;
    public ArrayList n;
    public ArrayList o;
    public ArrayList p;
    public ArrayList q;
    public ArrayList r;

    public static void h(ArrayList arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((Eg) arrayList.get(size)).a.animate().cancel();
        }
    }

    /* JADX WARN: Type inference failed for: r11v8, types: [O6, java.lang.Object] */
    @Override // defpackage.AbstractC0249jg
    public final boolean a(Eg eg, Eg eg2, Be be, Be be2) {
        int i;
        int i2;
        int i3 = be.a;
        int i4 = be.b;
        if (eg2.r()) {
            int i5 = be.a;
            i2 = be.b;
            i = i5;
        } else {
            i = be2.a;
            i2 = be2.b;
        }
        if (eg == eg2) {
            return g(eg, i3, i4, i, i2);
        }
        View view = eg.a;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        float alpha = view.getAlpha();
        l(eg);
        view.setTranslationX(translationX);
        view.setTranslationY(translationY);
        view.setAlpha(alpha);
        l(eg2);
        float f = -((int) ((i - i3) - translationX));
        View view2 = eg2.a;
        view2.setTranslationX(f);
        view2.setTranslationY(-((int) ((i2 - i4) - translationY)));
        view2.setAlpha(0.0f);
        ArrayList arrayList = this.k;
        ?? obj = new Object();
        obj.a = eg;
        obj.b = eg2;
        obj.c = i3;
        obj.d = i4;
        obj.e = i;
        obj.f = i2;
        arrayList.add(obj);
        return true;
    }

    @Override // defpackage.AbstractC0249jg
    public final void d(Eg eg) {
        View view = eg.a;
        view.animate().cancel();
        ArrayList arrayList = this.j;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (((P6) arrayList.get(size)).a == eg) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                c(eg);
                arrayList.remove(size);
            }
        }
        j(this.k, eg);
        if (this.h.remove(eg)) {
            view.setAlpha(1.0f);
            c(eg);
        }
        if (this.i.remove(eg)) {
            view.setAlpha(1.0f);
            c(eg);
        }
        ArrayList arrayList2 = this.n;
        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
            ArrayList arrayList3 = (ArrayList) arrayList2.get(size2);
            j(arrayList3, eg);
            if (arrayList3.isEmpty()) {
                arrayList2.remove(size2);
            }
        }
        ArrayList arrayList4 = this.m;
        for (int size3 = arrayList4.size() - 1; size3 >= 0; size3--) {
            ArrayList arrayList5 = (ArrayList) arrayList4.get(size3);
            int size4 = arrayList5.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                }
                if (((P6) arrayList5.get(size4)).a == eg) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    c(eg);
                    arrayList5.remove(size4);
                    if (arrayList5.isEmpty()) {
                        arrayList4.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        ArrayList arrayList6 = this.l;
        for (int size5 = arrayList6.size() - 1; size5 >= 0; size5--) {
            ArrayList arrayList7 = (ArrayList) arrayList6.get(size5);
            if (arrayList7.remove(eg)) {
                view.setAlpha(1.0f);
                c(eg);
                if (arrayList7.isEmpty()) {
                    arrayList6.remove(size5);
                }
            }
        }
        this.q.remove(eg);
        this.o.remove(eg);
        this.r.remove(eg);
        this.p.remove(eg);
        i();
    }

    @Override // defpackage.AbstractC0249jg
    public final void e() {
        ArrayList arrayList = this.j;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            P6 p6 = (P6) arrayList.get(size);
            View view = p6.a.a;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            c(p6.a);
            arrayList.remove(size);
        }
        ArrayList arrayList2 = this.h;
        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
            c((Eg) arrayList2.get(size2));
            arrayList2.remove(size2);
        }
        ArrayList arrayList3 = this.i;
        int size3 = arrayList3.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            Eg eg = (Eg) arrayList3.get(size3);
            eg.a.setAlpha(1.0f);
            c(eg);
            arrayList3.remove(size3);
        }
        ArrayList arrayList4 = this.k;
        for (int size4 = arrayList4.size() - 1; size4 >= 0; size4--) {
            O6 o6 = (O6) arrayList4.get(size4);
            Eg eg2 = o6.a;
            if (eg2 != null) {
                k(o6, eg2);
            }
            Eg eg3 = o6.b;
            if (eg3 != null) {
                k(o6, eg3);
            }
        }
        arrayList4.clear();
        if (f()) {
            ArrayList arrayList5 = this.m;
            for (int size5 = arrayList5.size() - 1; size5 >= 0; size5--) {
                ArrayList arrayList6 = (ArrayList) arrayList5.get(size5);
                for (int size6 = arrayList6.size() - 1; size6 >= 0; size6--) {
                    P6 p62 = (P6) arrayList6.get(size6);
                    View view2 = p62.a.a;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    c(p62.a);
                    arrayList6.remove(size6);
                    if (arrayList6.isEmpty()) {
                        arrayList5.remove(arrayList6);
                    }
                }
            }
            ArrayList arrayList7 = this.l;
            for (int size7 = arrayList7.size() - 1; size7 >= 0; size7--) {
                ArrayList arrayList8 = (ArrayList) arrayList7.get(size7);
                for (int size8 = arrayList8.size() - 1; size8 >= 0; size8--) {
                    Eg eg4 = (Eg) arrayList8.get(size8);
                    eg4.a.setAlpha(1.0f);
                    c(eg4);
                    arrayList8.remove(size8);
                    if (arrayList8.isEmpty()) {
                        arrayList7.remove(arrayList8);
                    }
                }
            }
            ArrayList arrayList9 = this.n;
            for (int size9 = arrayList9.size() - 1; size9 >= 0; size9--) {
                ArrayList arrayList10 = (ArrayList) arrayList9.get(size9);
                for (int size10 = arrayList10.size() - 1; size10 >= 0; size10--) {
                    O6 o62 = (O6) arrayList10.get(size10);
                    Eg eg5 = o62.a;
                    if (eg5 != null) {
                        k(o62, eg5);
                    }
                    Eg eg6 = o62.b;
                    if (eg6 != null) {
                        k(o62, eg6);
                    }
                    if (arrayList10.isEmpty()) {
                        arrayList9.remove(arrayList10);
                    }
                }
            }
            h(this.q);
            h(this.p);
            h(this.o);
            h(this.r);
            ArrayList arrayList11 = this.b;
            if (arrayList11.size() > 0) {
                arrayList11.get(0).getClass();
                throw new ClassCastException();
            }
            arrayList11.clear();
        }
    }

    @Override // defpackage.AbstractC0249jg
    public final boolean f() {
        return (this.i.isEmpty() && this.k.isEmpty() && this.j.isEmpty() && this.h.isEmpty() && this.p.isEmpty() && this.q.isEmpty() && this.o.isEmpty() && this.r.isEmpty() && this.m.isEmpty() && this.l.isEmpty() && this.n.isEmpty()) ? false : true;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [P6, java.lang.Object] */
    public final boolean g(Eg eg, int i, int i2, int i3, int i4) {
        View view = eg.a;
        int translationX = i + ((int) view.getTranslationX());
        int translationY = i2 + ((int) eg.a.getTranslationY());
        l(eg);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        if (i5 == 0 && i6 == 0) {
            c(eg);
            return false;
        }
        if (i5 != 0) {
            view.setTranslationX(-i5);
        }
        if (i6 != 0) {
            view.setTranslationY(-i6);
        }
        ArrayList arrayList = this.j;
        ?? obj = new Object();
        obj.a = eg;
        obj.b = translationX;
        obj.c = translationY;
        obj.d = i3;
        obj.e = i4;
        arrayList.add(obj);
        return true;
    }

    public final void i() {
        if (f()) {
            return;
        }
        ArrayList arrayList = this.b;
        if (arrayList.size() <= 0) {
            arrayList.clear();
        } else {
            arrayList.get(0).getClass();
            throw new ClassCastException();
        }
    }

    public final void j(ArrayList arrayList, Eg eg) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            O6 o6 = (O6) arrayList.get(size);
            if (k(o6, eg) && o6.a == null && o6.b == null) {
                arrayList.remove(o6);
            }
        }
    }

    public final boolean k(O6 o6, Eg eg) {
        if (o6.b == eg) {
            o6.b = null;
        } else {
            if (o6.a != eg) {
                return false;
            }
            o6.a = null;
        }
        eg.a.setAlpha(1.0f);
        View view = eg.a;
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
        c(eg);
        return true;
    }

    public final void l(Eg eg) {
        if (s == null) {
            s = new ValueAnimator().getInterpolator();
        }
        eg.a.animate().setInterpolator(s);
        d(eg);
    }
}
