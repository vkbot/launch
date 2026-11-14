package defpackage;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.recyclerview.widget.RecyclerView;
import com.omoda.launcher.R;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* renamed from: vb, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0550vb extends AbstractC0275kg {
    public Rect A;
    public long B;
    public float d;
    public float e;
    public float f;
    public float g;
    public float h;
    public float i;
    public float j;
    public float k;
    public final C0558vj m;
    public int o;
    public int q;
    public RecyclerView r;
    public VelocityTracker t;
    public ArrayList u;
    public ArrayList v;
    public L x;
    public C0525ub y;
    public final ArrayList a = new ArrayList();
    public final float[] b = new float[2];
    public Eg c = null;
    public int l = -1;
    public int n = 0;
    public final ArrayList p = new ArrayList();
    public final J2 s = new J2(9, this);
    public View w = null;
    public final C0450rb z = new C0450rb(this);

    public C0550vb(C0558vj c0558vj) {
        this.m = c0558vj;
    }

    public static boolean n(View view, float f, float f2, float f3, float f4) {
        return f >= f3 && f <= f3 + ((float) view.getWidth()) && f2 >= f4 && f2 <= f4 + ((float) view.getHeight());
    }

    @Override // defpackage.AbstractC0275kg
    public final void d(Rect rect, View view, RecyclerView recyclerView, Ag ag) {
        rect.setEmpty();
    }

    @Override // defpackage.AbstractC0275kg
    public final void e(Canvas canvas, RecyclerView recyclerView) {
        float f;
        float f2;
        if (this.c != null) {
            float[] fArr = this.b;
            m(fArr);
            float f3 = fArr[0];
            f2 = fArr[1];
            f = f3;
        } else {
            f = 0.0f;
            f2 = 0.0f;
        }
        Eg eg = this.c;
        ArrayList arrayList = this.p;
        C0558vj c0558vj = this.m;
        c0558vj.getClass();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            C0475sb c0475sb = (C0475sb) arrayList.get(i);
            float f4 = c0475sb.a;
            float f5 = c0475sb.c;
            Eg eg2 = c0475sb.e;
            if (f4 == f5) {
                c0475sb.i = eg2.a.getTranslationX();
            } else {
                c0475sb.i = ((f5 - f4) * c0475sb.m) + f4;
            }
            float f6 = c0475sb.b;
            float f7 = c0475sb.d;
            if (f6 == f7) {
                c0475sb.j = eg2.a.getTranslationY();
            } else {
                c0475sb.j = ((f7 - f6) * c0475sb.m) + f6;
            }
            int save = canvas.save();
            c0558vj.f(canvas, recyclerView, c0475sb.e, c0475sb.i, c0475sb.j, false);
            canvas.restoreToCount(save);
        }
        if (eg != null) {
            int save2 = canvas.save();
            c0558vj.f(canvas, recyclerView, eg, f, f2, true);
            canvas.restoreToCount(save2);
        }
    }

    @Override // defpackage.AbstractC0275kg
    public final void f(Canvas canvas, RecyclerView recyclerView) {
        boolean z = false;
        if (this.c != null) {
            float[] fArr = this.b;
            m(fArr);
            float f = fArr[0];
            float f2 = fArr[1];
        }
        Eg eg = this.c;
        ArrayList arrayList = this.p;
        this.m.getClass();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            C0475sb c0475sb = (C0475sb) arrayList.get(i);
            int save = canvas.save();
            View view = c0475sb.e.a;
            canvas.restoreToCount(save);
        }
        if (eg != null) {
            canvas.restoreToCount(canvas.save());
        }
        for (int i2 = size - 1; i2 >= 0; i2--) {
            C0475sb c0475sb2 = (C0475sb) arrayList.get(i2);
            boolean z2 = c0475sb2.l;
            if (z2 && !c0475sb2.h) {
                arrayList.remove(i2);
            } else if (!z2) {
                z = true;
            }
        }
        if (z) {
            recyclerView.invalidate();
        }
    }

    public final void g(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.r;
        if (recyclerView2 == recyclerView) {
            return;
        }
        C0450rb c0450rb = this.z;
        if (recyclerView2 != null) {
            recyclerView2.d0(this);
            RecyclerView recyclerView3 = this.r;
            recyclerView3.q.remove(c0450rb);
            if (recyclerView3.r == c0450rb) {
                recyclerView3.r = null;
            }
            ArrayList arrayList = this.r.C;
            if (arrayList != null) {
                arrayList.remove(this);
            }
            ArrayList arrayList2 = this.p;
            int size = arrayList2.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                C0475sb c0475sb = (C0475sb) arrayList2.get(0);
                c0475sb.g.cancel();
                this.m.a(this.r, c0475sb.e);
            }
            arrayList2.clear();
            this.w = null;
            VelocityTracker velocityTracker = this.t;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.t = null;
            }
            C0525ub c0525ub = this.y;
            if (c0525ub != null) {
                c0525ub.a = false;
                this.y = null;
            }
            if (this.x != null) {
                this.x = null;
            }
        }
        this.r = recyclerView;
        Resources resources = recyclerView.getResources();
        this.f = resources.getDimension(R.dimen.item_touch_helper_swipe_escape_velocity);
        this.g = resources.getDimension(R.dimen.item_touch_helper_swipe_escape_max_velocity);
        this.q = ViewConfiguration.get(this.r.getContext()).getScaledTouchSlop();
        this.r.i(this);
        this.r.q.add(c0450rb);
        RecyclerView recyclerView4 = this.r;
        if (recyclerView4.C == null) {
            recyclerView4.C = new ArrayList();
        }
        recyclerView4.C.add(this);
        this.y = new C0525ub(this);
        this.x = new L(this.r.getContext(), this.y, 15);
    }

    public final int h(Eg eg, int i) {
        if ((i & 12) == 0) {
            return 0;
        }
        int i2 = this.h > 0.0f ? 8 : 4;
        VelocityTracker velocityTracker = this.t;
        C0558vj c0558vj = this.m;
        if (velocityTracker != null && this.l > -1) {
            float f = this.g;
            c0558vj.getClass();
            velocityTracker.computeCurrentVelocity(1000, f);
            float xVelocity = this.t.getXVelocity(this.l);
            float yVelocity = this.t.getYVelocity(this.l);
            int i3 = xVelocity > 0.0f ? 8 : 4;
            float abs = Math.abs(xVelocity);
            if ((i3 & i) != 0 && i2 == i3 && abs >= this.f && abs > Math.abs(yVelocity)) {
                return i3;
            }
        }
        float width = this.r.getWidth();
        c0558vj.getClass();
        AbstractC0348nb.r(eg, "vh");
        float f2 = width * 0.3f;
        if ((i & i2) == 0 || Math.abs(this.h) <= f2) {
            return 0;
        }
        return i2;
    }

    public final void i(int i, int i2, MotionEvent motionEvent) {
        View l;
        if (this.c == null && i == 2 && this.n != 2) {
            this.m.getClass();
            if (this.r.getScrollState() == 1) {
                return;
            }
            AbstractC0353ng layoutManager = this.r.getLayoutManager();
            int i3 = this.l;
            Eg eg = null;
            if (i3 != -1) {
                int findPointerIndex = motionEvent.findPointerIndex(i3);
                float x = motionEvent.getX(findPointerIndex) - this.d;
                float y = motionEvent.getY(findPointerIndex) - this.e;
                float abs = Math.abs(x);
                float abs2 = Math.abs(y);
                float f = this.q;
                if ((abs >= f || abs2 >= f) && ((abs <= abs2 || !layoutManager.d()) && ((abs2 <= abs || !layoutManager.e()) && (l = l(motionEvent)) != null))) {
                    eg = this.r.M(l);
                }
            }
            if (eg == null) {
                return;
            }
            RecyclerView recyclerView = this.r;
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            int b = (C0558vj.b(257, Sm.d(recyclerView)) & 65280) >> 8;
            if (b == 0) {
                return;
            }
            float x2 = motionEvent.getX(i2);
            float y2 = motionEvent.getY(i2);
            float f2 = x2 - this.d;
            float f3 = y2 - this.e;
            float abs3 = Math.abs(f2);
            float abs4 = Math.abs(f3);
            float f4 = this.q;
            if (abs3 >= f4 || abs4 >= f4) {
                if (abs3 > abs4) {
                    if (f2 < 0.0f && (b & 4) == 0) {
                        return;
                    }
                    if (f2 > 0.0f && (b & 8) == 0) {
                        return;
                    }
                } else {
                    if (f3 < 0.0f && (b & 1) == 0) {
                        return;
                    }
                    if (f3 > 0.0f && (b & 2) == 0) {
                        return;
                    }
                }
                this.i = 0.0f;
                this.h = 0.0f;
                this.l = motionEvent.getPointerId(0);
                q(eg, 1);
            }
        }
    }

    public final int j(Eg eg, int i) {
        if ((i & 3) == 0) {
            return 0;
        }
        int i2 = this.i > 0.0f ? 2 : 1;
        VelocityTracker velocityTracker = this.t;
        C0558vj c0558vj = this.m;
        if (velocityTracker != null && this.l > -1) {
            float f = this.g;
            c0558vj.getClass();
            velocityTracker.computeCurrentVelocity(1000, f);
            float xVelocity = this.t.getXVelocity(this.l);
            float yVelocity = this.t.getYVelocity(this.l);
            int i3 = yVelocity > 0.0f ? 2 : 1;
            float abs = Math.abs(yVelocity);
            if ((i3 & i) != 0 && i3 == i2 && abs >= this.f && abs > Math.abs(xVelocity)) {
                return i3;
            }
        }
        float height = this.r.getHeight();
        c0558vj.getClass();
        AbstractC0348nb.r(eg, "vh");
        float f2 = height * 0.3f;
        if ((i & i2) == 0 || Math.abs(this.i) <= f2) {
            return 0;
        }
        return i2;
    }

    public final void k(Eg eg, boolean z) {
        ArrayList arrayList = this.p;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            C0475sb c0475sb = (C0475sb) arrayList.get(size);
            if (c0475sb.e == eg) {
                c0475sb.k |= z;
                if (!c0475sb.l) {
                    c0475sb.g.cancel();
                }
                arrayList.remove(size);
                return;
            }
        }
    }

    public final View l(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        Eg eg = this.c;
        if (eg != null) {
            float f = this.j + this.h;
            float f2 = this.k + this.i;
            View view = eg.a;
            if (n(view, x, y, f, f2)) {
                return view;
            }
        }
        ArrayList arrayList = this.p;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            C0475sb c0475sb = (C0475sb) arrayList.get(size);
            View view2 = c0475sb.e.a;
            if (n(view2, x, y, c0475sb.i, c0475sb.j)) {
                return view2;
            }
        }
        return this.r.E(x, y);
    }

    public final void m(float[] fArr) {
        if ((this.o & 12) != 0) {
            fArr[0] = (this.j + this.h) - this.c.a.getLeft();
        } else {
            fArr[0] = this.c.a.getTranslationX();
        }
        if ((this.o & 3) != 0) {
            fArr[1] = (this.k + this.i) - this.c.a.getTop();
        } else {
            fArr[1] = this.c.a.getTranslationY();
        }
    }

    public final void o(Eg eg) {
        ArrayList arrayList;
        int bottom;
        int abs;
        int top;
        int abs2;
        int left;
        int abs3;
        int right;
        int abs4;
        int i;
        int i2;
        char c;
        if (this.r.isLayoutRequested()) {
            return;
        }
        char c2 = 2;
        if (this.n != 2) {
            return;
        }
        this.m.getClass();
        int i3 = (int) (this.j + this.h);
        int i4 = (int) (this.k + this.i);
        float abs5 = Math.abs(i4 - eg.a.getTop());
        View view = eg.a;
        if (abs5 >= view.getHeight() * 0.5f || Math.abs(i3 - view.getLeft()) >= view.getWidth() * 0.5f) {
            ArrayList arrayList2 = this.u;
            if (arrayList2 == null) {
                this.u = new ArrayList();
                this.v = new ArrayList();
            } else {
                arrayList2.clear();
                this.v.clear();
            }
            int round = Math.round(this.j + this.h);
            int round2 = Math.round(this.k + this.i);
            int width = view.getWidth() + round;
            int height = view.getHeight() + round2;
            int i5 = (round + width) / 2;
            int i6 = (round2 + height) / 2;
            AbstractC0353ng layoutManager = this.r.getLayoutManager();
            int v = layoutManager.v();
            int i7 = 0;
            while (i7 < v) {
                View u = layoutManager.u(i7);
                if (u == view) {
                    c = c2;
                    i = round;
                    i2 = round2;
                } else if (u.getBottom() < round2 || u.getTop() > height || u.getRight() < round || u.getLeft() > width) {
                    i = round;
                    i2 = round2;
                    c = 2;
                } else {
                    Eg M = this.r.M(u);
                    c = 2;
                    int abs6 = Math.abs(i5 - ((u.getRight() + u.getLeft()) / 2));
                    int abs7 = Math.abs(i6 - ((u.getBottom() + u.getTop()) / 2));
                    int i8 = (abs7 * abs7) + (abs6 * abs6);
                    int size = this.u.size();
                    i = round;
                    i2 = round2;
                    int i9 = 0;
                    int i10 = 0;
                    while (i9 < size) {
                        int i11 = size;
                        if (i8 <= ((Integer) this.v.get(i9)).intValue()) {
                            break;
                        }
                        i10++;
                        i9++;
                        size = i11;
                    }
                    this.u.add(i10, M);
                    this.v.add(i10, Integer.valueOf(i8));
                }
                i7++;
                c2 = c;
                round = i;
                round2 = i2;
            }
            ArrayList arrayList3 = this.u;
            if (arrayList3.size() == 0) {
                return;
            }
            int width2 = view.getWidth() + i3;
            int height2 = view.getHeight() + i4;
            int left2 = i3 - view.getLeft();
            int top2 = i4 - view.getTop();
            int size2 = arrayList3.size();
            Eg eg2 = null;
            int i12 = -1;
            int i13 = 0;
            while (i13 < size2) {
                Eg eg3 = (Eg) arrayList3.get(i13);
                if (left2 <= 0 || (right = eg3.a.getRight() - width2) >= 0) {
                    arrayList = arrayList3;
                } else {
                    arrayList = arrayList3;
                    if (eg3.a.getRight() > view.getRight() && (abs4 = Math.abs(right)) > i12) {
                        i12 = abs4;
                        eg2 = eg3;
                    }
                }
                if (left2 < 0 && (left = eg3.a.getLeft() - i3) > 0 && eg3.a.getLeft() < view.getLeft() && (abs3 = Math.abs(left)) > i12) {
                    i12 = abs3;
                    eg2 = eg3;
                }
                if (top2 < 0 && (top = eg3.a.getTop() - i4) > 0 && eg3.a.getTop() < view.getTop() && (abs2 = Math.abs(top)) > i12) {
                    i12 = abs2;
                    eg2 = eg3;
                }
                if (top2 > 0 && (bottom = eg3.a.getBottom() - height2) < 0 && eg3.a.getBottom() > view.getBottom() && (abs = Math.abs(bottom)) > i12) {
                    i12 = abs;
                    eg2 = eg3;
                }
                i13++;
                arrayList3 = arrayList;
            }
            if (eg2 == null) {
                this.u.clear();
                this.v.clear();
            } else {
                eg2.b();
                eg.b();
                AbstractC0348nb.r(this.r, "rv");
            }
        }
    }

    public final void p(View view) {
        if (view == this.w) {
            this.w = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:77:0x0092, code lost:
    
        if (r1 > 0) goto L43;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void q(defpackage.Eg r23, int r24) {
        /*
            Method dump skipped, instructions count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0550vb.q(Eg, int):void");
    }

    public final void r(int i, int i2, MotionEvent motionEvent) {
        float x = motionEvent.getX(i2);
        float y = motionEvent.getY(i2);
        float f = x - this.d;
        this.h = f;
        this.i = y - this.e;
        if ((i & 4) == 0) {
            this.h = Math.max(0.0f, f);
        }
        if ((i & 8) == 0) {
            this.h = Math.min(0.0f, this.h);
        }
        if ((i & 1) == 0) {
            this.i = Math.max(0.0f, this.i);
        }
        if ((i & 2) == 0) {
            this.i = Math.min(0.0f, this.i);
        }
    }
}
