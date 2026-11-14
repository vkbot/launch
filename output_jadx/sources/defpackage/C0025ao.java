package defpackage;

import android.view.View;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import java.util.WeakHashMap;

/* renamed from: ao, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0025ao extends AbstractC0554vf {
    public final /* synthetic */ int c;
    public final /* synthetic */ C0128eo d;

    public /* synthetic */ C0025ao(C0128eo c0128eo, int i) {
        this.c = i;
        this.d = c0128eo;
    }

    @Override // defpackage.InterfaceC0637yn
    public final void a() {
        View view;
        C0128eo c0128eo = this.d;
        switch (this.c) {
            case 0:
                if (c0128eo.E && (view = c0128eo.w) != null) {
                    view.setTranslationY(0.0f);
                    c0128eo.t.setTranslationY(0.0f);
                }
                c0128eo.t.setVisibility(8);
                c0128eo.t.setTransitioning(false);
                c0128eo.I = null;
                K1 k1 = c0128eo.A;
                if (k1 != null) {
                    k1.G(c0128eo.z);
                    c0128eo.z = null;
                    c0128eo.A = null;
                }
                ActionBarOverlayLayout actionBarOverlayLayout = c0128eo.s;
                if (actionBarOverlayLayout != null) {
                    WeakHashMap weakHashMap = AbstractC0205hn.a;
                    Vm.c(actionBarOverlayLayout);
                    return;
                }
                return;
            default:
                c0128eo.I = null;
                c0128eo.t.requestLayout();
                return;
        }
    }
}
