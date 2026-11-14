package defpackage;

import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.sidesheet.SideSheetBehavior;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes.dex */
public final class A3 extends AbstractC0171gf {
    public final /* synthetic */ int a;
    public final /* synthetic */ V5 b;

    public /* synthetic */ A3(V5 v5, int i) {
        this.a = i;
        this.b = v5;
    }

    @Override // defpackage.AbstractC0171gf
    public final int c(View view, int i) {
        switch (this.a) {
            case 0:
                return view.getLeft();
            default:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.b;
                return AbstractC0348nb.v(i, sideSheetBehavior.a.q(), sideSheetBehavior.a.p());
        }
    }

    @Override // defpackage.AbstractC0171gf
    public final int d(View view, int i) {
        switch (this.a) {
            case 0:
                return AbstractC0348nb.v(i, ((BottomSheetBehavior) this.b).x(), h());
            default:
                return view.getTop();
        }
    }

    @Override // defpackage.AbstractC0171gf
    public int g(View view) {
        switch (this.a) {
            case 1:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.b;
                return sideSheetBehavior.l + sideSheetBehavior.o;
            default:
                return super.g(view);
        }
    }

    @Override // defpackage.AbstractC0171gf
    public int h() {
        switch (this.a) {
            case 0:
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.b;
                return bottomSheetBehavior.I ? bottomSheetBehavior.T : bottomSheetBehavior.G;
            default:
                return super.h();
        }
    }

    @Override // defpackage.AbstractC0171gf
    public final void p(int i) {
        switch (this.a) {
            case 0:
                if (i == 1) {
                    BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.b;
                    if (bottomSheetBehavior.K) {
                        bottomSheetBehavior.C(1);
                        return;
                    }
                    return;
                }
                return;
            default:
                if (i == 1) {
                    SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.b;
                    if (sideSheetBehavior.g) {
                        sideSheetBehavior.r(1);
                        return;
                    }
                    return;
                }
                return;
        }
    }

    @Override // defpackage.AbstractC0171gf
    public final void q(View view, int i, int i2) {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        switch (this.a) {
            case 0:
                ((BottomSheetBehavior) this.b).u(i2);
                return;
            default:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.b;
                WeakReference weakReference = sideSheetBehavior.q;
                View view2 = weakReference != null ? (View) weakReference.get() : null;
                if (view2 != null && (marginLayoutParams = (ViewGroup.MarginLayoutParams) view2.getLayoutParams()) != null) {
                    sideSheetBehavior.a.G(marginLayoutParams, view.getLeft(), view.getRight());
                    view2.setLayoutParams(marginLayoutParams);
                }
                LinkedHashSet linkedHashSet = sideSheetBehavior.u;
                if (linkedHashSet.isEmpty()) {
                    return;
                }
                sideSheetBehavior.a.b(i);
                Iterator it = linkedHashSet.iterator();
                if (it.hasNext()) {
                    throw AbstractC0407pi.f(it);
                }
                return;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002a, code lost:
    
        if (r4.a.w(r5) == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005b, code lost:
    
        if (java.lang.Math.abs(r6 - r4.a.n()) < java.lang.Math.abs(r6 - r4.a.o())) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0080, code lost:
    
        if (r6 > r4.E) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d0, code lost:
    
        if (java.lang.Math.abs(r5.getTop() - r4.x()) < java.lang.Math.abs(r5.getTop() - r4.E)) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x011b, code lost:
    
        if (java.lang.Math.abs(r6 - r4.D) < java.lang.Math.abs(r6 - r4.G)) goto L27;
     */
    @Override // defpackage.AbstractC0171gf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void r(android.view.View r5, float r6, float r7) {
        /*
            Method dump skipped, instructions count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.A3.r(android.view.View, float, float):void");
    }

    @Override // defpackage.AbstractC0171gf
    public final boolean w(View view, int i) {
        WeakReference weakReference;
        switch (this.a) {
            case 0:
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.b;
                int i2 = bottomSheetBehavior.L;
                if (i2 == 1 || bottomSheetBehavior.a0) {
                    return false;
                }
                if (i2 == 3 && bottomSheetBehavior.Y == i) {
                    WeakReference weakReference2 = bottomSheetBehavior.V;
                    View view2 = weakReference2 != null ? (View) weakReference2.get() : null;
                    if (view2 != null && view2.canScrollVertically(-1)) {
                        return false;
                    }
                }
                System.currentTimeMillis();
                WeakReference weakReference3 = bottomSheetBehavior.U;
                return weakReference3 != null && weakReference3.get() == view;
            default:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.b;
                return (sideSheetBehavior.h == 1 || (weakReference = sideSheetBehavior.p) == null || weakReference.get() != view) ? false : true;
        }
    }
}
