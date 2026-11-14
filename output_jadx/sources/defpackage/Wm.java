package defpackage;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class Wm implements View.OnApplyWindowInsetsListener {
    public yo a = null;
    public final /* synthetic */ View b;
    public final /* synthetic */ Ie c;

    public Wm(View view, Ie ie) {
        this.b = view;
        this.c = ie;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        yo f = yo.f(view, windowInsets);
        int i = Build.VERSION.SDK_INT;
        Ie ie = this.c;
        if (i < 30) {
            Xm.a(windowInsets, this.b);
            if (f.equals(this.a)) {
                return ie.k(view, f).e();
            }
        }
        this.a = f;
        yo k = ie.k(view, f);
        if (i >= 30) {
            return k.e();
        }
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        Vm.c(view);
        return k.e();
    }
}
