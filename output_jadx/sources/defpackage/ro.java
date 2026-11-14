package defpackage;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.DisplayCutout;
import android.view.View;
import android.view.WindowInsets;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public abstract class ro extends wo {
    public static boolean h = false;
    public static Method i;
    public static Class j;
    public static Field k;
    public static Field l;
    public final WindowInsets c;
    public C0090db[] d;
    public C0090db e;
    public yo f;
    public C0090db g;

    public ro(yo yoVar, WindowInsets windowInsets) {
        super(yoVar);
        this.e = null;
        this.c = windowInsets;
    }

    @SuppressLint({"WrongConstant"})
    private C0090db q(int i2, boolean z) {
        C0090db c0090db = C0090db.e;
        for (int i3 = 1; i3 <= 256; i3 <<= 1) {
            if ((i2 & i3) != 0) {
                c0090db = C0090db.a(c0090db, r(i3, z));
            }
        }
        return c0090db;
    }

    private C0090db s() {
        yo yoVar = this.f;
        return yoVar != null ? yoVar.a.h() : C0090db.e;
    }

    private C0090db t(View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
        }
        if (!h) {
            u();
        }
        Method method = i;
        if (method != null && j != null && k != null) {
            try {
                Object invoke = method.invoke(view, null);
                if (invoke == null) {
                    Log.w("WindowInsetsCompat", "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden", new NullPointerException());
                    return null;
                }
                Rect rect = (Rect) k.get(l.get(invoke));
                if (rect != null) {
                    return C0090db.b(rect.left, rect.top, rect.right, rect.bottom);
                }
                return null;
            } catch (ReflectiveOperationException e) {
                Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e.getMessage(), e);
            }
        }
        return null;
    }

    @SuppressLint({"PrivateApi"})
    private static void u() {
        try {
            i = View.class.getDeclaredMethod("getViewRootImpl", null);
            Class<?> cls = Class.forName("android.view.View$AttachInfo");
            j = cls;
            k = cls.getDeclaredField("mVisibleInsets");
            l = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
            k.setAccessible(true);
            l.setAccessible(true);
        } catch (ReflectiveOperationException e) {
            Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e.getMessage(), e);
        }
        h = true;
    }

    @Override // defpackage.wo
    public void d(View view) {
        C0090db t = t(view);
        if (t == null) {
            t = C0090db.e;
        }
        v(t);
    }

    @Override // defpackage.wo
    public C0090db f(int i2) {
        return q(i2, false);
    }

    @Override // defpackage.wo
    public final C0090db j() {
        if (this.e == null) {
            WindowInsets windowInsets = this.c;
            this.e = C0090db.b(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
        }
        return this.e;
    }

    @Override // defpackage.wo
    public boolean n() {
        return this.c.isRound();
    }

    @Override // defpackage.wo
    public void o(C0090db[] c0090dbArr) {
        this.d = c0090dbArr;
    }

    @Override // defpackage.wo
    public void p(yo yoVar) {
        this.f = yoVar;
    }

    public C0090db r(int i2, boolean z) {
        C0090db h2;
        int i3;
        if (i2 == 1) {
            return z ? C0090db.b(0, Math.max(s().b, j().b), 0, 0) : C0090db.b(0, j().b, 0, 0);
        }
        if (i2 == 2) {
            if (z) {
                C0090db s = s();
                C0090db h3 = h();
                return C0090db.b(Math.max(s.a, h3.a), 0, Math.max(s.c, h3.c), Math.max(s.d, h3.d));
            }
            C0090db j2 = j();
            yo yoVar = this.f;
            h2 = yoVar != null ? yoVar.a.h() : null;
            int i4 = j2.d;
            if (h2 != null) {
                i4 = Math.min(i4, h2.d);
            }
            return C0090db.b(j2.a, 0, j2.c, i4);
        }
        C0090db c0090db = C0090db.e;
        if (i2 == 8) {
            C0090db[] c0090dbArr = this.d;
            h2 = c0090dbArr != null ? c0090dbArr[AbstractC0554vf.i(8)] : null;
            if (h2 != null) {
                return h2;
            }
            C0090db j3 = j();
            C0090db s2 = s();
            int i5 = j3.d;
            if (i5 > s2.d) {
                return C0090db.b(0, 0, 0, i5);
            }
            C0090db c0090db2 = this.g;
            return (c0090db2 == null || c0090db2.equals(c0090db) || (i3 = this.g.d) <= s2.d) ? c0090db : C0090db.b(0, 0, 0, i3);
        }
        if (i2 == 16) {
            return i();
        }
        if (i2 == 32) {
            return g();
        }
        if (i2 == 64) {
            return k();
        }
        if (i2 != 128) {
            return c0090db;
        }
        yo yoVar2 = this.f;
        C0596x7 e = yoVar2 != null ? yoVar2.a.e() : e();
        if (e == null) {
            return c0090db;
        }
        DisplayCutout displayCutout = e.a;
        return C0090db.b(AbstractC0571w7.d(displayCutout), AbstractC0571w7.f(displayCutout), AbstractC0571w7.e(displayCutout), AbstractC0571w7.c(displayCutout));
    }

    public void v(C0090db c0090db) {
        this.g = c0090db;
    }
}
