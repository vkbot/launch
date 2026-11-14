package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.Log;

/* loaded from: classes.dex */
public final class B1 {
    public static final PorterDuff.Mode b = PorterDuff.Mode.SRC_IN;
    public static B1 c;
    public Yg a;

    public static synchronized B1 a() {
        B1 b1;
        synchronized (B1.class) {
            try {
                if (c == null) {
                    d();
                }
                b1 = c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return b1;
    }

    public static synchronized PorterDuffColorFilter c(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter e;
        synchronized (B1.class) {
            e = Yg.e(i, mode);
        }
        return e;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, B1] */
    public static synchronized void d() {
        synchronized (B1.class) {
            if (c == null) {
                ?? obj = new Object();
                c = obj;
                obj.a = Yg.b();
                Yg yg = c.a;
                A1 a1 = new A1();
                synchronized (yg) {
                    yg.e = a1;
                }
            }
        }
    }

    public static void e(Drawable drawable, C0484sk c0484sk, int[] iArr) {
        PorterDuff.Mode mode = Yg.f;
        int[] state = drawable.getState();
        int[] iArr2 = D7.a;
        if (drawable.mutate() != drawable) {
            Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
            return;
        }
        if ((drawable instanceof LayerDrawable) && drawable.isStateful()) {
            drawable.setState(new int[0]);
            drawable.setState(state);
        }
        boolean z = c0484sk.d;
        if (!z && !c0484sk.c) {
            drawable.clearColorFilter();
            return;
        }
        PorterDuffColorFilter porterDuffColorFilter = null;
        ColorStateList colorStateList = z ? c0484sk.a : null;
        PorterDuff.Mode mode2 = c0484sk.c ? c0484sk.b : Yg.f;
        if (colorStateList != null && mode2 != null) {
            porterDuffColorFilter = Yg.e(colorStateList.getColorForState(iArr, 0), mode2);
        }
        drawable.setColorFilter(porterDuffColorFilter);
    }

    public final synchronized Drawable b(Context context, int i) {
        return this.a.c(context, i);
    }
}
