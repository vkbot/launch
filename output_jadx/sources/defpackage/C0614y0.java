package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* renamed from: y0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0614y0 {
    public int a;
    public final Object b;
    public final Object c;
    public Object d;
    public Object e;
    public Object f;

    public C0614y0(View view) {
        this.a = -1;
        this.b = view;
        this.c = B1.a();
    }

    public void a() {
        View view = (View) this.b;
        Drawable background = view.getBackground();
        if (background != null) {
            if (((C0484sk) this.d) != null) {
                if (((C0484sk) this.f) == null) {
                    this.f = new Object();
                }
                C0484sk c0484sk = (C0484sk) this.f;
                c0484sk.a = null;
                c0484sk.d = false;
                c0484sk.b = null;
                c0484sk.c = false;
                WeakHashMap weakHashMap = AbstractC0205hn.a;
                ColorStateList g = Xm.g(view);
                if (g != null) {
                    c0484sk.d = true;
                    c0484sk.a = g;
                }
                PorterDuff.Mode h = Xm.h(view);
                if (h != null) {
                    c0484sk.c = true;
                    c0484sk.b = h;
                }
                if (c0484sk.d || c0484sk.c) {
                    B1.e(background, c0484sk, view.getDrawableState());
                    return;
                }
            }
            C0484sk c0484sk2 = (C0484sk) this.e;
            if (c0484sk2 != null) {
                B1.e(background, c0484sk2, view.getDrawableState());
                return;
            }
            C0484sk c0484sk3 = (C0484sk) this.d;
            if (c0484sk3 != null) {
                B1.e(background, c0484sk3, view.getDrawableState());
            }
        }
    }

    public boolean b(int i) {
        ArrayList arrayList = (ArrayList) this.d;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0589x0 c0589x0 = (C0589x0) arrayList.get(i2);
            int i3 = c0589x0.a;
            if (i3 == 8) {
                if (g(c0589x0.d, i2 + 1) == i) {
                    return true;
                }
            } else if (i3 == 1) {
                int i4 = c0589x0.b;
                int i5 = c0589x0.d + i4;
                while (i4 < i5) {
                    if (g(i4, i2 + 1) == i) {
                        return true;
                    }
                    i4++;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    public void c() {
        ArrayList arrayList = (ArrayList) this.d;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((C0120eg) this.e).a((C0589x0) arrayList.get(i));
        }
        q(arrayList);
        this.a = 0;
    }

    public void d() {
        c();
        ArrayList arrayList = (ArrayList) this.c;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            C0589x0 c0589x0 = (C0589x0) arrayList.get(i);
            int i2 = c0589x0.a;
            C0120eg c0120eg = (C0120eg) this.e;
            if (i2 == 1) {
                c0120eg.a(c0589x0);
                c0120eg.d(c0589x0.b, c0589x0.d);
            } else if (i2 == 2) {
                c0120eg.a(c0589x0);
                int i3 = c0589x0.b;
                int i4 = c0589x0.d;
                RecyclerView recyclerView = c0120eg.a;
                recyclerView.T(i3, i4, true);
                recyclerView.k0 = true;
                recyclerView.h0.c += i4;
            } else if (i2 == 4) {
                c0120eg.a(c0589x0);
                c0120eg.c(c0589x0.b, c0589x0.d, c0589x0.c);
            } else if (i2 == 8) {
                c0120eg.a(c0589x0);
                c0120eg.e(c0589x0.b, c0589x0.d);
            }
        }
        q(arrayList);
        this.a = 0;
    }

    public void e(C0589x0 c0589x0) {
        int i;
        C0604xf c0604xf;
        int i2 = c0589x0.a;
        if (i2 == 1 || i2 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int u = u(c0589x0.b, i2);
        int i3 = c0589x0.b;
        int i4 = c0589x0.a;
        if (i4 == 2) {
            i = 0;
        } else {
            if (i4 != 4) {
                throw new IllegalArgumentException("op should be remove or update." + c0589x0);
            }
            i = 1;
        }
        int i5 = 1;
        int i6 = 1;
        while (true) {
            int i7 = c0589x0.d;
            c0604xf = (C0604xf) this.b;
            if (i5 >= i7) {
                break;
            }
            int u2 = u((i * i5) + c0589x0.b, c0589x0.a);
            int i8 = c0589x0.a;
            if (i8 == 2 ? u2 != u : !(i8 == 4 && u2 == u + 1)) {
                C0589x0 l = l(c0589x0.c, i8, u, i6);
                f(l, i3);
                l.c = null;
                c0604xf.c(l);
                if (c0589x0.a == 4) {
                    i3 += i6;
                }
                i6 = 1;
                u = u2;
            } else {
                i6++;
            }
            i5++;
        }
        Object obj = c0589x0.c;
        c0589x0.c = null;
        c0604xf.c(c0589x0);
        if (i6 > 0) {
            C0589x0 l2 = l(obj, c0589x0.a, u, i6);
            f(l2, i3);
            l2.c = null;
            c0604xf.c(l2);
        }
    }

    public void f(C0589x0 c0589x0, int i) {
        C0120eg c0120eg = (C0120eg) this.e;
        c0120eg.a(c0589x0);
        int i2 = c0589x0.a;
        if (i2 != 2) {
            if (i2 != 4) {
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            }
            c0120eg.c(i, c0589x0.d, c0589x0.c);
        } else {
            int i3 = c0589x0.d;
            RecyclerView recyclerView = c0120eg.a;
            recyclerView.T(i, i3, true);
            recyclerView.k0 = true;
            recyclerView.h0.c += i3;
        }
    }

    public int g(int i, int i2) {
        ArrayList arrayList = (ArrayList) this.d;
        int size = arrayList.size();
        while (i2 < size) {
            C0589x0 c0589x0 = (C0589x0) arrayList.get(i2);
            int i3 = c0589x0.a;
            if (i3 == 8) {
                int i4 = c0589x0.b;
                if (i4 == i) {
                    i = c0589x0.d;
                } else {
                    if (i4 < i) {
                        i--;
                    }
                    if (c0589x0.d <= i) {
                        i++;
                    }
                }
            } else {
                int i5 = c0589x0.b;
                if (i5 > i) {
                    continue;
                } else if (i3 == 2) {
                    int i6 = c0589x0.d;
                    if (i < i5 + i6) {
                        return -1;
                    }
                    i -= i6;
                } else if (i3 == 1) {
                    i += c0589x0.d;
                }
            }
            i2++;
        }
        return i;
    }

    public ColorStateList h() {
        C0484sk c0484sk = (C0484sk) this.e;
        if (c0484sk != null) {
            return c0484sk.a;
        }
        return null;
    }

    public PorterDuff.Mode i() {
        C0484sk c0484sk = (C0484sk) this.e;
        if (c0484sk != null) {
            return c0484sk.b;
        }
        return null;
    }

    public boolean j() {
        return ((ArrayList) this.c).size() > 0;
    }

    public void k(AttributeSet attributeSet, int i) {
        ColorStateList f;
        View view = (View) this.b;
        Context context = view.getContext();
        int[] iArr = Zf.z;
        C0491t2 q = C0491t2.q(context, attributeSet, iArr, i);
        TypedArray typedArray = (TypedArray) q.a;
        View view2 = (View) this.b;
        Context context2 = view2.getContext();
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        AbstractC0076cn.d(view2, context2, iArr, attributeSet, (TypedArray) q.a, i, 0);
        try {
            if (typedArray.hasValue(0)) {
                this.a = typedArray.getResourceId(0, -1);
                B1 b1 = (B1) this.c;
                Context context3 = view.getContext();
                int i2 = this.a;
                synchronized (b1) {
                    f = b1.a.f(context3, i2);
                }
                if (f != null) {
                    r(f);
                }
            }
            if (typedArray.hasValue(1)) {
                Xm.q(view, q.g(1));
            }
            if (typedArray.hasValue(2)) {
                Xm.r(view, D7.b(typedArray.getInt(2, -1), null));
            }
        } finally {
            q.r();
        }
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [x0, java.lang.Object] */
    public C0589x0 l(Object obj, int i, int i2, int i3) {
        C0589x0 c0589x0 = (C0589x0) ((C0604xf) this.b).a();
        if (c0589x0 != null) {
            c0589x0.a = i;
            c0589x0.b = i2;
            c0589x0.d = i3;
            c0589x0.c = obj;
            return c0589x0;
        }
        ?? obj2 = new Object();
        obj2.a = i;
        obj2.b = i2;
        obj2.d = i3;
        obj2.c = obj;
        return obj2;
    }

    public void m() {
        this.a = -1;
        r(null);
        a();
    }

    public void n(int i) {
        ColorStateList colorStateList;
        this.a = i;
        B1 b1 = (B1) this.c;
        if (b1 != null) {
            Context context = ((View) this.b).getContext();
            synchronized (b1) {
                colorStateList = b1.a.f(context, i);
            }
        } else {
            colorStateList = null;
        }
        r(colorStateList);
        a();
    }

    public void o(C0589x0 c0589x0) {
        ((ArrayList) this.d).add(c0589x0);
        int i = c0589x0.a;
        C0120eg c0120eg = (C0120eg) this.e;
        if (i == 1) {
            c0120eg.d(c0589x0.b, c0589x0.d);
            return;
        }
        if (i == 2) {
            int i2 = c0589x0.b;
            int i3 = c0589x0.d;
            RecyclerView recyclerView = c0120eg.a;
            recyclerView.T(i2, i3, false);
            recyclerView.k0 = true;
            return;
        }
        if (i == 4) {
            c0120eg.c(c0589x0.b, c0589x0.d, c0589x0.c);
        } else if (i == 8) {
            c0120eg.e(c0589x0.b, c0589x0.d);
        } else {
            throw new IllegalArgumentException("Unknown update op type for " + c0589x0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:119:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x00aa A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x000d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0135 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0121 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void p() {
        /*
            Method dump skipped, instructions count: 690
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0614y0.p():void");
    }

    public void q(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            C0589x0 c0589x0 = (C0589x0) arrayList.get(i);
            c0589x0.c = null;
            ((C0604xf) this.b).c(c0589x0);
        }
        arrayList.clear();
    }

    public void r(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (((C0484sk) this.d) == null) {
                this.d = new Object();
            }
            C0484sk c0484sk = (C0484sk) this.d;
            c0484sk.a = colorStateList;
            c0484sk.d = true;
        } else {
            this.d = null;
        }
        a();
    }

    public void s(ColorStateList colorStateList) {
        if (((C0484sk) this.e) == null) {
            this.e = new Object();
        }
        C0484sk c0484sk = (C0484sk) this.e;
        c0484sk.a = colorStateList;
        c0484sk.d = true;
        a();
    }

    public void t(PorterDuff.Mode mode) {
        if (((C0484sk) this.e) == null) {
            this.e = new Object();
        }
        C0484sk c0484sk = (C0484sk) this.e;
        c0484sk.b = mode;
        c0484sk.c = true;
        a();
    }

    public int u(int i, int i2) {
        int i3;
        int i4;
        ArrayList arrayList = (ArrayList) this.d;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            C0589x0 c0589x0 = (C0589x0) arrayList.get(size);
            int i5 = c0589x0.a;
            if (i5 == 8) {
                int i6 = c0589x0.b;
                int i7 = c0589x0.d;
                if (i6 < i7) {
                    i4 = i6;
                    i3 = i7;
                } else {
                    i3 = i6;
                    i4 = i7;
                }
                if (i < i4 || i > i3) {
                    if (i < i6) {
                        if (i2 == 1) {
                            c0589x0.b = i6 + 1;
                            c0589x0.d = i7 + 1;
                        } else if (i2 == 2) {
                            c0589x0.b = i6 - 1;
                            c0589x0.d = i7 - 1;
                        }
                    }
                } else if (i4 == i6) {
                    if (i2 == 1) {
                        c0589x0.d = i7 + 1;
                    } else if (i2 == 2) {
                        c0589x0.d = i7 - 1;
                    }
                    i++;
                } else {
                    if (i2 == 1) {
                        c0589x0.b = i6 + 1;
                    } else if (i2 == 2) {
                        c0589x0.b = i6 - 1;
                    }
                    i--;
                }
            } else {
                int i8 = c0589x0.b;
                if (i8 <= i) {
                    if (i5 == 1) {
                        i -= c0589x0.d;
                    } else if (i5 == 2) {
                        i += c0589x0.d;
                    }
                } else if (i2 == 1) {
                    c0589x0.b = i8 + 1;
                } else if (i2 == 2) {
                    c0589x0.b = i8 - 1;
                }
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            C0589x0 c0589x02 = (C0589x0) arrayList.get(size2);
            int i9 = c0589x02.a;
            C0604xf c0604xf = (C0604xf) this.b;
            if (i9 == 8) {
                int i10 = c0589x02.d;
                if (i10 == c0589x02.b || i10 < 0) {
                    arrayList.remove(size2);
                    c0589x02.c = null;
                    c0604xf.c(c0589x02);
                }
            } else if (c0589x02.d <= 0) {
                arrayList.remove(size2);
                c0589x02.c = null;
                c0604xf.c(c0589x02);
            }
        }
        return i;
    }

    public C0614y0(C0120eg c0120eg) {
        this.b = new C0604xf(30);
        this.c = new ArrayList();
        this.d = new ArrayList();
        this.a = 0;
        this.e = c0120eg;
        this.f = new L(22, this);
    }
}
