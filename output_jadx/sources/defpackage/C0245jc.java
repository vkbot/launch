package defpackage;

import android.view.View;
import java.util.List;

/* renamed from: jc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0245jc {
    public boolean a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public List k;
    public boolean l;

    public final void a(View view) {
        int d;
        int size = this.k.size();
        View view2 = null;
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < size; i2++) {
            View view3 = ((Eg) this.k.get(i2)).a;
            C0379og c0379og = (C0379og) view3.getLayoutParams();
            if (view3 != view && !c0379og.a.k() && (d = (c0379og.a.d() - this.d) * this.e) >= 0 && d < i) {
                view2 = view3;
                if (d == 0) {
                    break;
                } else {
                    i = d;
                }
            }
        }
        if (view2 == null) {
            this.d = -1;
        } else {
            this.d = ((C0379og) view2.getLayoutParams()).a.d();
        }
    }

    public final View b(C0530ug c0530ug) {
        List list = this.k;
        if (list == null) {
            View view = c0530ug.k(this.d, Long.MAX_VALUE).a;
            this.d += this.e;
            return view;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            View view2 = ((Eg) this.k.get(i)).a;
            C0379og c0379og = (C0379og) view2.getLayoutParams();
            if (!c0379og.a.k() && this.d == c0379og.a.d()) {
                a(view2);
                return view2;
            }
        }
        return null;
    }
}
