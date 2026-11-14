package defpackage;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import com.omoda.launcher.R;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class Xd {
    public final Context a;
    public final Ld b;
    public final boolean c;
    public final int d;
    public View e;
    public boolean g;
    public InterfaceC0093de h;
    public Ud i;
    public Vd j;
    public int f = 8388611;
    public final Vd k = new Vd(this);

    public Xd(int i, Ld ld, Context context, View view, boolean z) {
        this.a = context;
        this.b = ld;
        this.e = view;
        this.c = z;
        this.d = i;
    }

    public final Ud a() {
        Ud di;
        if (this.i == null) {
            Context context = this.a;
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            Wd.a(defaultDisplay, point);
            if (Math.min(point.x, point.y) >= context.getResources().getDimensionPixelSize(R.dimen.abc_cascading_menus_min_smallest_width)) {
                di = new Y3(context, this.e, this.d, this.c);
            } else {
                View view = this.e;
                Context context2 = this.a;
                boolean z = this.c;
                di = new Di(this.d, this.b, context2, view, z);
            }
            di.l(this.b);
            di.r(this.k);
            di.n(this.e);
            di.i(this.h);
            di.o(this.g);
            di.p(this.f);
            this.i = di;
        }
        return this.i;
    }

    public final boolean b() {
        Ud ud = this.i;
        return ud != null && ud.a();
    }

    public void c() {
        this.i = null;
        Vd vd = this.j;
        if (vd != null) {
            vd.onDismiss();
        }
    }

    public final void d(int i, int i2, boolean z, boolean z2) {
        Ud a = a();
        a.s(z2);
        if (z) {
            int i3 = this.f;
            View view = this.e;
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            if ((Gravity.getAbsoluteGravity(i3, Sm.d(view)) & 7) == 5) {
                i -= this.e.getWidth();
            }
            a.q(i);
            a.t(i2);
            int i4 = (int) ((this.a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            a.a = new Rect(i - i4, i2 - i4, i + i4, i2 + i4);
        }
        a.h();
    }
}
