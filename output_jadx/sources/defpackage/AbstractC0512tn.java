package defpackage;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.util.WeakHashMap;

/* renamed from: tn, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0512tn extends V5 {
    public Ad a;

    @Override // defpackage.V5
    public boolean g(CoordinatorLayout coordinatorLayout, View view, int i) {
        r(coordinatorLayout, view, i);
        if (this.a == null) {
            this.a = new Ad(view);
        }
        Ad ad = this.a;
        View view2 = (View) ad.a;
        ad.b = view2.getTop();
        ad.c = view2.getLeft();
        Ad ad2 = this.a;
        View view3 = (View) ad2.a;
        int top = 0 - (view3.getTop() - ad2.b);
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        view3.offsetTopAndBottom(top);
        view3.offsetLeftAndRight(0 - (view3.getLeft() - ad2.c));
        return true;
    }

    public void r(CoordinatorLayout coordinatorLayout, View view, int i) {
        coordinatorLayout.q(view, i);
    }
}
