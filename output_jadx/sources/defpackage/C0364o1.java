package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import java.util.WeakHashMap;

/* renamed from: o1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0364o1 extends AbstractC0554vf {
    public final /* synthetic */ int c;
    public final /* synthetic */ Object d;

    public /* synthetic */ C0364o1(int i, Object obj) {
        this.c = i;
        this.d = obj;
    }

    @Override // defpackage.InterfaceC0637yn
    public final void a() {
        Object obj = this.d;
        switch (this.c) {
            case 0:
                RunnableC0312m1 runnableC0312m1 = (RunnableC0312m1) obj;
                runnableC0312m1.b.v.setAlpha(1.0f);
                LayoutInflaterFactory2C0615y1 layoutInflaterFactory2C0615y1 = runnableC0312m1.b;
                layoutInflaterFactory2C0615y1.y.d(null);
                layoutInflaterFactory2C0615y1.y = null;
                return;
            case 1:
                LayoutInflaterFactory2C0615y1 layoutInflaterFactory2C0615y12 = (LayoutInflaterFactory2C0615y1) obj;
                layoutInflaterFactory2C0615y12.v.setAlpha(1.0f);
                layoutInflaterFactory2C0615y12.y.d(null);
                layoutInflaterFactory2C0615y12.y = null;
                return;
            default:
                K1 k1 = (K1) obj;
                ((LayoutInflaterFactory2C0615y1) k1.c).v.setVisibility(8);
                LayoutInflaterFactory2C0615y1 layoutInflaterFactory2C0615y13 = (LayoutInflaterFactory2C0615y1) k1.c;
                PopupWindow popupWindow = layoutInflaterFactory2C0615y13.w;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (layoutInflaterFactory2C0615y13.v.getParent() instanceof View) {
                    View view = (View) layoutInflaterFactory2C0615y13.v.getParent();
                    WeakHashMap weakHashMap = AbstractC0205hn.a;
                    Vm.c(view);
                }
                layoutInflaterFactory2C0615y13.v.e();
                layoutInflaterFactory2C0615y13.y.d(null);
                layoutInflaterFactory2C0615y13.y = null;
                ViewGroup viewGroup = layoutInflaterFactory2C0615y13.A;
                WeakHashMap weakHashMap2 = AbstractC0205hn.a;
                Vm.c(viewGroup);
                return;
        }
    }

    @Override // defpackage.AbstractC0554vf, defpackage.InterfaceC0637yn
    public void c() {
        Object obj = this.d;
        switch (this.c) {
            case 0:
                ((RunnableC0312m1) obj).b.v.setVisibility(0);
                return;
            case 1:
                LayoutInflaterFactory2C0615y1 layoutInflaterFactory2C0615y1 = (LayoutInflaterFactory2C0615y1) obj;
                layoutInflaterFactory2C0615y1.v.setVisibility(0);
                if (layoutInflaterFactory2C0615y1.v.getParent() instanceof View) {
                    View view = (View) layoutInflaterFactory2C0615y1.v.getParent();
                    WeakHashMap weakHashMap = AbstractC0205hn.a;
                    Vm.c(view);
                    return;
                }
                return;
            default:
                return;
        }
    }
}
