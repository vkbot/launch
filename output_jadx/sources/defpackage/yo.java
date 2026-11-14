package defpackage;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class yo {
    public static final yo b;
    public final wo a;

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            b = vo.q;
        } else {
            b = wo.b;
        }
    }

    public yo(WindowInsets windowInsets) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.a = new vo(this, windowInsets);
        } else {
            this.a = new uo(this, windowInsets);
        }
    }

    public static yo f(View view, WindowInsets windowInsets) {
        windowInsets.getClass();
        yo yoVar = new yo(windowInsets);
        if (view != null) {
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            if (Um.b(view)) {
                yo a = Ym.a(view);
                wo woVar = yoVar.a;
                woVar.p(a);
                woVar.d(view.getRootView());
            }
        }
        return yoVar;
    }

    public final int a() {
        return this.a.j().d;
    }

    public final int b() {
        return this.a.j().a;
    }

    public final int c() {
        return this.a.j().c;
    }

    public final int d() {
        return this.a.j().b;
    }

    public final WindowInsets e() {
        wo woVar = this.a;
        if (woVar instanceof ro) {
            return ((ro) woVar).c;
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yo)) {
            return false;
        }
        return He.a(this.a, ((yo) obj).a);
    }

    public final int hashCode() {
        wo woVar = this.a;
        if (woVar == null) {
            return 0;
        }
        return woVar.hashCode();
    }

    public yo() {
        this.a = new wo(this);
    }
}
