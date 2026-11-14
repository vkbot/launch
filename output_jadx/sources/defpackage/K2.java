package defpackage;

import android.animation.ValueAnimator;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import androidx.recyclerview.widget.RecyclerView;
import com.omoda.launcher.data.AppInfo;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class K2 implements InterfaceC0431qg {
    public final RecyclerView a;
    public final Y0 b;
    public boolean c;
    public final int e;
    public final float f;
    public String g;
    public float h;
    public float i;
    public float j;
    public float k;
    public String l;
    public BitmapDrawable m;
    public float n;
    public float o;
    public ValueAnimator r;
    public boolean s;
    public final Handler d = new Handler(Looper.getMainLooper());
    public final O p = new O(1, this);
    public final J2 q = new J2(0, this);

    public K2(RecyclerView recyclerView, Y0 y0) {
        this.a = recyclerView;
        this.b = y0;
        this.e = ViewConfiguration.get(recyclerView.getContext()).getScaledTouchSlop();
        this.f = recyclerView.getResources().getDisplayMetrics().density * 60.0f;
        recyclerView.q.add(this);
    }

    @Override // defpackage.InterfaceC0431qg
    public final void a(boolean z) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0022, code lost:
    
        if (r7 != 3) goto L47;
     */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.util.List, java.lang.Object] */
    @Override // defpackage.InterfaceC0431qg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean b(androidx.recyclerview.widget.RecyclerView r7, android.view.MotionEvent r8) {
        /*
            r6 = this;
            java.lang.String r0 = "rv"
            defpackage.AbstractC0348nb.r(r7, r0)
            java.lang.String r7 = "e"
            defpackage.AbstractC0348nb.r(r8, r7)
            boolean r7 = r6.c
            r0 = 0
            if (r7 != 0) goto L10
            return r0
        L10:
            int r7 = r8.getActionMasked()
            O r1 = r6.p
            android.os.Handler r2 = r6.d
            r3 = 0
            if (r7 == 0) goto L6e
            r4 = 1
            if (r7 == r4) goto L65
            r5 = 2
            if (r7 == r5) goto L26
            r8 = 3
            if (r7 == r8) goto L65
            goto Lcd
        L26:
            java.lang.String r7 = r6.l
            if (r7 == 0) goto L2e
            r6.f(r8)
            return r4
        L2e:
            float r7 = r8.getX()
            r6.j = r7
            float r7 = r8.getY()
            r6.k = r7
            java.lang.String r7 = r6.g
            if (r7 == 0) goto Lcd
            float r7 = r8.getX()
            float r4 = r6.h
            float r7 = r7 - r4
            float r7 = java.lang.Math.abs(r7)
            int r4 = r6.e
            float r4 = (float) r4
            int r7 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r7 > 0) goto L5f
            float r7 = r8.getY()
            float r8 = r6.i
            float r7 = r7 - r8
            float r7 = java.lang.Math.abs(r7)
            int r7 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r7 <= 0) goto Lcd
        L5f:
            r6.g = r3
            r2.removeCallbacks(r1)
            goto Lcd
        L65:
            java.lang.String r7 = r6.l
            if (r7 == 0) goto L6a
            r0 = r4
        L6a:
            r6.d()
            return r0
        L6e:
            float r7 = r8.getX()
            r6.h = r7
            float r7 = r8.getY()
            r6.i = r7
            float r7 = r8.getX()
            r6.j = r7
            float r7 = r8.getY()
            r6.k = r7
            float r7 = r8.getX()
            float r8 = r8.getY()
            Y0 r4 = r6.b
            androidx.recyclerview.widget.RecyclerView r5 = r6.a
            java.lang.Integer r7 = defpackage.Y0.g(r5, r7, r8)
            if (r7 == 0) goto Lc4
            int r7 = r7.intValue()
            java.lang.Object r8 = r4.h
            int r4 = r7 / 10
            java.lang.Object r8 = defpackage.L4.x0(r8, r4)
            java.util.List r8 = (java.util.List) r8
            if (r8 == 0) goto Lb1
            int r7 = r7 % 10
            java.lang.Object r7 = defpackage.L4.x0(r8, r7)
            w2 r7 = (defpackage.AbstractC0566w2) r7
            goto Lb2
        Lb1:
            r7 = r3
        Lb2:
            boolean r8 = r7 instanceof defpackage.C0516u2
            if (r8 == 0) goto Lb9
            u2 r7 = (defpackage.C0516u2) r7
            goto Lba
        Lb9:
            r7 = r3
        Lba:
            if (r7 == 0) goto Lc4
            com.omoda.launcher.data.AppInfo r7 = r7.a
            if (r7 == 0) goto Lc4
            java.lang.String r3 = r7.getKey()
        Lc4:
            r6.g = r3
            if (r3 == 0) goto Lcd
            r6 = 400(0x190, double:1.976E-321)
            r2.postDelayed(r1, r6)
        Lcd:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.K2.b(androidx.recyclerview.widget.RecyclerView, android.view.MotionEvent):boolean");
    }

    @Override // defpackage.InterfaceC0431qg
    public final void c(RecyclerView recyclerView, MotionEvent motionEvent) {
        AbstractC0348nb.r(recyclerView, "rv");
        AbstractC0348nb.r(motionEvent, "e");
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                f(motionEvent);
                return;
            } else if (actionMasked != 3) {
                return;
            }
        }
        d();
    }

    public final void d() {
        this.g = null;
        Handler handler = this.d;
        handler.removeCallbacks(this.p);
        this.s = false;
        handler.removeCallbacks(this.q);
        BitmapDrawable bitmapDrawable = this.m;
        if (bitmapDrawable != null) {
            this.a.getOverlay().remove(bitmapDrawable);
        }
        this.m = null;
        if (this.l != null) {
            this.l = null;
            this.b.j(null);
        }
    }

    public final void e() {
        BitmapDrawable bitmapDrawable = this.m;
        if (bitmapDrawable == null) {
            return;
        }
        float f = this.j - (this.n * 1.1f);
        float f2 = this.k - (this.o * 1.1f);
        bitmapDrawable.setBounds((int) f, (int) f2, (int) (f + (bitmapDrawable.getBitmap().getWidth() * 1.1f)), (int) (f2 + (bitmapDrawable.getBitmap().getHeight() * 1.1f)));
    }

    public final void f(MotionEvent motionEvent) {
        this.j = motionEvent.getX();
        this.k = motionEvent.getY();
        e();
        g();
        float f = this.j;
        float f2 = this.f;
        J2 j2 = this.q;
        Handler handler = this.d;
        if (f >= f2 && f <= this.a.getWidth() - f2) {
            this.s = false;
            handler.removeCallbacks(j2);
        } else {
            if (this.s) {
                return;
            }
            this.s = true;
            handler.postDelayed(j2, 600L);
        }
    }

    public final void g() {
        int f;
        String str = this.l;
        if (str == null) {
            return;
        }
        float f2 = this.j;
        float f3 = this.k;
        Y0 y0 = this.b;
        Integer g = Y0.g(this.a, f2, f3);
        if (g != null) {
            int intValue = g.intValue();
            Iterator it = y0.i.iterator();
            int i = 0;
            while (true) {
                if (!it.hasNext()) {
                    i = -1;
                    break;
                } else if (AbstractC0348nb.g(((AppInfo) it.next()).getKey(), str)) {
                    break;
                } else {
                    i++;
                }
            }
            if (i >= 0 && i != (f = AbstractC0554vf.f(intValue, 0, M4.o0(y0.i)))) {
                ArrayList D0 = L4.D0(y0.i);
                D0.add(f, D0.remove(i));
                y0.i = D0;
                Ia ia = y0.g;
                switch (ia.a) {
                    case 0:
                        ArrayList arrayList = new ArrayList(N4.r0(D0));
                        Iterator it2 = D0.iterator();
                        while (it2.hasNext()) {
                            arrayList.add(((AppInfo) it2.next()).getKey());
                        }
                        ia.b.save(arrayList);
                        break;
                    default:
                        ArrayList arrayList2 = new ArrayList(N4.r0(D0));
                        Iterator it3 = D0.iterator();
                        while (it3.hasNext()) {
                            arrayList2.add(((AppInfo) it3.next()).getKey());
                        }
                        ia.b.save(arrayList2);
                        break;
                }
                y0.i();
            }
        }
    }
}
