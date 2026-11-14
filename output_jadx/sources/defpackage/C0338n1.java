package defpackage;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import androidx.appcompat.widget.ActionBarContextView;
import com.omoda.launcher.R;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* renamed from: n1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0338n1 implements Ie, G5, InterfaceC0093de {
    public final /* synthetic */ int a;
    public final /* synthetic */ LayoutInflaterFactory2C0615y1 b;

    public /* synthetic */ C0338n1(LayoutInflaterFactory2C0615y1 layoutInflaterFactory2C0615y1, int i) {
        this.a = i;
        this.b = layoutInflaterFactory2C0615y1;
    }

    @Override // defpackage.InterfaceC0093de
    public void b(Ld ld, boolean z) {
        C0590x1 c0590x1;
        switch (this.a) {
            case 2:
                this.b.q(ld);
                return;
            default:
                Ld k = ld.k();
                int i = 0;
                boolean z2 = k != ld;
                if (z2) {
                    ld = k;
                }
                LayoutInflaterFactory2C0615y1 layoutInflaterFactory2C0615y1 = this.b;
                C0590x1[] c0590x1Arr = layoutInflaterFactory2C0615y1.L;
                int length = c0590x1Arr != null ? c0590x1Arr.length : 0;
                while (true) {
                    if (i >= length) {
                        c0590x1 = null;
                    } else {
                        c0590x1 = c0590x1Arr[i];
                        if (c0590x1 == null || c0590x1.h != ld) {
                            i++;
                        }
                    }
                }
                if (c0590x1 != null) {
                    if (!z2) {
                        layoutInflaterFactory2C0615y1.r(c0590x1, z);
                        return;
                    } else {
                        layoutInflaterFactory2C0615y1.p(c0590x1.a, c0590x1, k);
                        layoutInflaterFactory2C0615y1.r(c0590x1, true);
                        return;
                    }
                }
                return;
        }
    }

    @Override // defpackage.Ie
    public yo k(View view, yo yoVar) {
        boolean z;
        yo yoVar2;
        boolean z2;
        int d = yoVar.d();
        LayoutInflaterFactory2C0615y1 layoutInflaterFactory2C0615y1 = this.b;
        layoutInflaterFactory2C0615y1.getClass();
        int d2 = yoVar.d();
        ActionBarContextView actionBarContextView = layoutInflaterFactory2C0615y1.v;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutInflaterFactory2C0615y1.v.getLayoutParams();
            if (layoutInflaterFactory2C0615y1.v.isShown()) {
                if (layoutInflaterFactory2C0615y1.c0 == null) {
                    layoutInflaterFactory2C0615y1.c0 = new Rect();
                    layoutInflaterFactory2C0615y1.d0 = new Rect();
                }
                Rect rect = layoutInflaterFactory2C0615y1.c0;
                Rect rect2 = layoutInflaterFactory2C0615y1.d0;
                rect.set(yoVar.b(), yoVar.d(), yoVar.c(), yoVar.a());
                ViewGroup viewGroup = layoutInflaterFactory2C0615y1.A;
                Method method = Dn.a;
                if (method != null) {
                    try {
                        method.invoke(viewGroup, rect, rect2);
                    } catch (Exception e) {
                        Log.d("ViewUtils", "Could not invoke computeFitSystemWindows", e);
                    }
                }
                int i = rect.top;
                int i2 = rect.left;
                int i3 = rect.right;
                ViewGroup viewGroup2 = layoutInflaterFactory2C0615y1.A;
                WeakHashMap weakHashMap = AbstractC0205hn.a;
                yo a = Ym.a(viewGroup2);
                int b = a == null ? 0 : a.b();
                int c = a == null ? 0 : a.c();
                if (marginLayoutParams.topMargin == i && marginLayoutParams.leftMargin == i2 && marginLayoutParams.rightMargin == i3) {
                    z2 = false;
                } else {
                    marginLayoutParams.topMargin = i;
                    marginLayoutParams.leftMargin = i2;
                    marginLayoutParams.rightMargin = i3;
                    z2 = true;
                }
                Context context = layoutInflaterFactory2C0615y1.k;
                if (i <= 0 || layoutInflaterFactory2C0615y1.C != null) {
                    View view2 = layoutInflaterFactory2C0615y1.C;
                    if (view2 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view2.getLayoutParams();
                        int i4 = marginLayoutParams2.height;
                        int i5 = marginLayoutParams.topMargin;
                        if (i4 != i5 || marginLayoutParams2.leftMargin != b || marginLayoutParams2.rightMargin != c) {
                            marginLayoutParams2.height = i5;
                            marginLayoutParams2.leftMargin = b;
                            marginLayoutParams2.rightMargin = c;
                            layoutInflaterFactory2C0615y1.C.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    View view3 = new View(context);
                    layoutInflaterFactory2C0615y1.C = view3;
                    view3.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = b;
                    layoutParams.rightMargin = c;
                    layoutInflaterFactory2C0615y1.A.addView(layoutInflaterFactory2C0615y1.C, -1, layoutParams);
                }
                View view4 = layoutInflaterFactory2C0615y1.C;
                r9 = view4 != null;
                if (r9 && view4.getVisibility() != 0) {
                    View view5 = layoutInflaterFactory2C0615y1.C;
                    view5.setBackgroundColor((Rm.g(view5) & 8192) != 0 ? O5.a(context, R.color.abc_decor_view_status_guard_light) : O5.a(context, R.color.abc_decor_view_status_guard));
                }
                if (!layoutInflaterFactory2C0615y1.H && r9) {
                    d2 = 0;
                }
                z = r9;
                r9 = z2;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z = false;
            } else {
                z = false;
                r9 = false;
            }
            if (r9) {
                layoutInflaterFactory2C0615y1.v.setLayoutParams(marginLayoutParams);
            }
        }
        View view6 = layoutInflaterFactory2C0615y1.C;
        if (view6 != null) {
            view6.setVisibility(z ? 0 : 8);
        }
        if (d != d2) {
            int b2 = yoVar.b();
            int c2 = yoVar.c();
            int a2 = yoVar.a();
            qo c0413po = Build.VERSION.SDK_INT >= 30 ? new C0413po(yoVar) : new C0387oo(yoVar);
            c0413po.f(C0090db.b(b2, d2, c2, a2));
            yoVar2 = c0413po.b();
        } else {
            yoVar2 = yoVar;
        }
        WeakHashMap weakHashMap2 = AbstractC0205hn.a;
        WindowInsets e2 = yoVar2.e();
        if (e2 == null) {
            return yoVar2;
        }
        WindowInsets b3 = Vm.b(view, e2);
        return !b3.equals(e2) ? yo.f(view, b3) : yoVar2;
    }

    @Override // defpackage.InterfaceC0093de
    public boolean p(Ld ld) {
        Window.Callback callback;
        switch (this.a) {
            case 2:
                Window.Callback callback2 = this.b.l.getCallback();
                if (callback2 == null) {
                    return true;
                }
                callback2.onMenuOpened(108, ld);
                return true;
            default:
                if (ld != ld.k()) {
                    return true;
                }
                LayoutInflaterFactory2C0615y1 layoutInflaterFactory2C0615y1 = this.b;
                if (!layoutInflaterFactory2C0615y1.F || (callback = layoutInflaterFactory2C0615y1.l.getCallback()) == null || layoutInflaterFactory2C0615y1.Q) {
                    return true;
                }
                callback.onMenuOpened(108, ld);
                return true;
        }
    }
}
