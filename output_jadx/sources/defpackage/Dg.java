package defpackage;

import android.view.animation.BaseInterpolator;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class Dg implements Runnable {
    public int a;
    public int b;
    public OverScroller c;
    public Interpolator d;
    public boolean e;
    public boolean f;
    public final /* synthetic */ RecyclerView g;

    public Dg(RecyclerView recyclerView) {
        this.g = recyclerView;
        InterpolatorC0500tb interpolatorC0500tb = RecyclerView.I0;
        this.d = interpolatorC0500tb;
        this.e = false;
        this.f = false;
        this.c = new OverScroller(recyclerView.getContext(), interpolatorC0500tb);
    }

    public final void a(int i, int i2) {
        RecyclerView recyclerView = this.g;
        recyclerView.setScrollState(2);
        this.b = 0;
        this.a = 0;
        Interpolator interpolator = this.d;
        InterpolatorC0500tb interpolatorC0500tb = RecyclerView.I0;
        if (interpolator != interpolatorC0500tb) {
            this.d = interpolatorC0500tb;
            this.c = new OverScroller(recyclerView.getContext(), interpolatorC0500tb);
        }
        this.c.fling(0, 0, i, i2, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
        b();
    }

    public final void b() {
        if (this.e) {
            this.f = true;
            return;
        }
        RecyclerView recyclerView = this.g;
        recyclerView.removeCallbacks(this);
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        Rm.m(recyclerView, this);
    }

    public final void c(int i, int i2, int i3, BaseInterpolator baseInterpolator) {
        RecyclerView recyclerView = this.g;
        if (i3 == Integer.MIN_VALUE) {
            int abs = Math.abs(i);
            int abs2 = Math.abs(i2);
            boolean z = abs > abs2;
            int width = z ? recyclerView.getWidth() : recyclerView.getHeight();
            if (!z) {
                abs = abs2;
            }
            i3 = Math.min((int) (((abs / width) + 1.0f) * 300.0f), 2000);
        }
        int i4 = i3;
        Interpolator interpolator = baseInterpolator;
        if (baseInterpolator == null) {
            interpolator = RecyclerView.I0;
        }
        if (this.d != interpolator) {
            this.d = interpolator;
            this.c = new OverScroller(recyclerView.getContext(), interpolator);
        }
        this.b = 0;
        this.a = 0;
        recyclerView.setScrollState(2);
        this.c.startScroll(0, 0, i, i2, i4);
        b();
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        int i2;
        int i3;
        int i4;
        boolean awakenScrollBars;
        RecyclerView recyclerView = this.g;
        if (recyclerView.n == null) {
            recyclerView.removeCallbacks(this);
            this.c.abortAnimation();
            return;
        }
        this.f = false;
        this.e = true;
        recyclerView.p();
        OverScroller overScroller = this.c;
        if (overScroller.computeScrollOffset()) {
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int i5 = currX - this.a;
            int i6 = currY - this.b;
            this.a = currX;
            this.b = currY;
            int o = RecyclerView.o(i5, recyclerView.I, recyclerView.K, recyclerView.getWidth());
            int o2 = RecyclerView.o(i6, recyclerView.J, recyclerView.L, recyclerView.getHeight());
            int[] iArr = recyclerView.t0;
            iArr[0] = 0;
            iArr[1] = 0;
            boolean v = recyclerView.v(o, o2, iArr, null, 1);
            int[] iArr2 = recyclerView.t0;
            if (v) {
                o -= iArr2[0];
                o2 -= iArr2[1];
            }
            if (recyclerView.getOverScrollMode() != 2) {
                recyclerView.n(o, o2);
            }
            if (recyclerView.m != null) {
                iArr2[0] = 0;
                iArr2[1] = 0;
                recyclerView.h0(o, o2, iArr2);
                int i7 = iArr2[0];
                int i8 = iArr2[1];
                int i9 = o - i7;
                int i10 = o2 - i8;
                C0297lc c0297lc = recyclerView.n.e;
                if (c0297lc != null && !c0297lc.d && c0297lc.e) {
                    int b = recyclerView.h0.b();
                    if (b == 0) {
                        c0297lc.i();
                    } else if (c0297lc.a >= b) {
                        c0297lc.a = b - 1;
                        c0297lc.g(i7, i8);
                    } else {
                        c0297lc.g(i7, i8);
                    }
                }
                i4 = i7;
                i = i9;
                i2 = i10;
                i3 = i8;
            } else {
                i = o;
                i2 = o2;
                i3 = 0;
                i4 = 0;
            }
            if (!recyclerView.p.isEmpty()) {
                recyclerView.invalidate();
            }
            int[] iArr3 = recyclerView.t0;
            iArr3[0] = 0;
            iArr3[1] = 0;
            int i11 = i3;
            recyclerView.w(i4, i3, i, i2, null, 1, iArr3);
            int i12 = i - iArr2[0];
            int i13 = i2 - iArr2[1];
            if (i4 != 0 || i11 != 0) {
                recyclerView.x(i4, i11);
            }
            awakenScrollBars = recyclerView.awakenScrollBars();
            if (!awakenScrollBars) {
                recyclerView.invalidate();
            }
            boolean z = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i12 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i13 != 0));
            C0297lc c0297lc2 = recyclerView.n.e;
            if ((c0297lc2 == null || !c0297lc2.d) && z) {
                if (recyclerView.getOverScrollMode() != 2) {
                    int currVelocity = (int) overScroller.getCurrVelocity();
                    int i14 = i12 < 0 ? -currVelocity : i12 > 0 ? currVelocity : 0;
                    if (i13 < 0) {
                        currVelocity = -currVelocity;
                    } else if (i13 <= 0) {
                        currVelocity = 0;
                    }
                    if (i14 < 0) {
                        recyclerView.z();
                        if (recyclerView.I.isFinished()) {
                            recyclerView.I.onAbsorb(-i14);
                        }
                    } else if (i14 > 0) {
                        recyclerView.A();
                        if (recyclerView.K.isFinished()) {
                            recyclerView.K.onAbsorb(i14);
                        }
                    }
                    if (currVelocity < 0) {
                        recyclerView.B();
                        if (recyclerView.J.isFinished()) {
                            recyclerView.J.onAbsorb(-currVelocity);
                        }
                    } else if (currVelocity > 0) {
                        recyclerView.y();
                        if (recyclerView.L.isFinished()) {
                            recyclerView.L.onAbsorb(currVelocity);
                        }
                    }
                    if (i14 != 0 || currVelocity != 0) {
                        WeakHashMap weakHashMap = AbstractC0205hn.a;
                        Rm.k(recyclerView);
                    }
                }
                if (RecyclerView.G0) {
                    C0474sa c0474sa = recyclerView.g0;
                    int[] iArr4 = c0474sa.c;
                    if (iArr4 != null) {
                        Arrays.fill(iArr4, -1);
                    }
                    c0474sa.d = 0;
                }
            } else {
                b();
                RunnableC0524ua runnableC0524ua = recyclerView.f0;
                if (runnableC0524ua != null) {
                    runnableC0524ua.a(recyclerView, i4, i11);
                }
            }
        }
        C0297lc c0297lc3 = recyclerView.n.e;
        if (c0297lc3 != null && c0297lc3.d) {
            c0297lc3.g(0, 0);
        }
        this.e = false;
        if (!this.f) {
            recyclerView.setScrollState(0);
            recyclerView.n0(1);
        } else {
            recyclerView.removeCallbacks(this);
            WeakHashMap weakHashMap2 = AbstractC0205hn.a;
            Rm.m(recyclerView, this);
        }
    }
}
