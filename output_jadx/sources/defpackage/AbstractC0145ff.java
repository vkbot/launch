package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.util.WeakHashMap;

/* renamed from: ff, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0145ff {
    public static PorterDuff.Mode B(int i, PorterDuff.Mode mode) {
        if (i == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    public static void F(ImageView imageView) {
        if (imageView == null) {
            return;
        }
        float f = 8;
        int i = (int) (imageView.getContext().getResources().getDisplayMetrics().density * f);
        Context context = imageView.getContext();
        AbstractC0348nb.q(context, "getContext(...)");
        float f2 = context.getResources().getDisplayMetrics().density;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        Wj wj = T7.r;
        if (wj == null) {
            AbstractC0348nb.j0("color");
            throw null;
        }
        gradientDrawable.setColor(wj.p);
        int i2 = (int) (2 * f2);
        Wj wj2 = T7.r;
        if (wj2 == null) {
            AbstractC0348nb.j0("color");
            throw null;
        }
        gradientDrawable.setStroke(i2, wj2.o);
        gradientDrawable.setCornerRadius(f * f2);
        imageView.setBackground(new InsetDrawable((Drawable) gradientDrawable, i, i, i, i));
        Wj wj3 = T7.r;
        if (wj3 != null) {
            imageView.setImageTintList(ColorStateList.valueOf(wj3.r));
        } else {
            AbstractC0348nb.j0("color");
            throw null;
        }
    }

    public static void d(String str, boolean z) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void e(int i) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
    }

    public static void f(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    public static int g(Ag ag, Y7 y7, View view, View view2, AbstractC0353ng abstractC0353ng, boolean z) {
        if (abstractC0353ng.v() == 0 || ag.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(AbstractC0353ng.F(view) - AbstractC0353ng.F(view2)) + 1;
        }
        return Math.min(y7.l(), y7.b(view2) - y7.e(view));
    }

    public static int h(Ag ag, Y7 y7, View view, View view2, AbstractC0353ng abstractC0353ng, boolean z, boolean z2) {
        if (abstractC0353ng.v() == 0 || ag.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        int max = z2 ? Math.max(0, (ag.b() - Math.max(AbstractC0353ng.F(view), AbstractC0353ng.F(view2))) - 1) : Math.max(0, Math.min(AbstractC0353ng.F(view), AbstractC0353ng.F(view2)));
        if (z) {
            return Math.round((max * (Math.abs(y7.b(view2) - y7.e(view)) / (Math.abs(AbstractC0353ng.F(view) - AbstractC0353ng.F(view2)) + 1))) + (y7.k() - y7.e(view)));
        }
        return max;
    }

    public static int i(Ag ag, Y7 y7, View view, View view2, AbstractC0353ng abstractC0353ng, boolean z) {
        if (abstractC0353ng.v() == 0 || ag.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return ag.b();
        }
        return (int) (((y7.b(view2) - y7.e(view)) / (Math.abs(AbstractC0353ng.F(view) - AbstractC0353ng.F(view2)) + 1)) * ag.b());
    }

    public static float[] j(float[] fArr, int i) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        int length = fArr.length;
        if (length < 0) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int min = Math.min(i, length);
        float[] fArr2 = new float[i];
        System.arraycopy(fArr, 0, fArr2, 0, min);
        return fArr2;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:35:0x007f. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x009b A[Catch: NumberFormatException -> 0x00af, LOOP:3: B:29:0x006d->B:39:0x009b, LOOP_END, TryCatch #0 {NumberFormatException -> 0x00af, blocks: (B:26:0x0059, B:29:0x006d, B:31:0x0073, B:35:0x007f, B:39:0x009b, B:43:0x00a1, B:48:0x00b6, B:60:0x00b9), top: B:25:0x0059 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x009a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a1 A[Catch: NumberFormatException -> 0x00af, TryCatch #0 {NumberFormatException -> 0x00af, blocks: (B:26:0x0059, B:29:0x006d, B:31:0x0073, B:35:0x007f, B:39:0x009b, B:43:0x00a1, B:48:0x00b6, B:60:0x00b9), top: B:25:0x0059 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00b6 A[Catch: NumberFormatException -> 0x00af, TryCatch #0 {NumberFormatException -> 0x00af, blocks: (B:26:0x0059, B:29:0x006d, B:31:0x0073, B:35:0x007f, B:39:0x009b, B:43:0x00a1, B:48:0x00b6, B:60:0x00b9), top: B:25:0x0059 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00eb A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v7, types: [ef, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v2, types: [ef, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.C0119ef[] k(java.lang.String r17) {
        /*
            Method dump skipped, instructions count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.AbstractC0145ff.k(java.lang.String):ef[]");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [ef, java.lang.Object] */
    public static C0119ef[] l(C0119ef[] c0119efArr) {
        if (c0119efArr == null) {
            return null;
        }
        C0119ef[] c0119efArr2 = new C0119ef[c0119efArr.length];
        for (int i = 0; i < c0119efArr.length; i++) {
            C0119ef c0119ef = c0119efArr[i];
            ?? obj = new Object();
            obj.a = c0119ef.a;
            float[] fArr = c0119ef.b;
            obj.b = j(fArr, fArr.length);
            c0119efArr2[i] = obj;
        }
        return c0119efArr2;
    }

    public static View m(View view, int i) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View findViewById = viewGroup.getChildAt(i2).findViewById(i);
            if (findViewById != null) {
                return findViewById;
            }
        }
        return null;
    }

    public static boolean v(View view) {
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        return Sm.d(view) == 1;
    }

    public static Typeface y(Configuration configuration, Typeface typeface) {
        int i;
        int i2;
        int i3;
        if (Build.VERSION.SDK_INT < 31) {
            return null;
        }
        i = configuration.fontWeightAdjustment;
        if (i == Integer.MAX_VALUE) {
            return null;
        }
        i2 = configuration.fontWeightAdjustment;
        if (i2 == 0 || typeface == null) {
            return null;
        }
        int weight = typeface.getWeight();
        i3 = configuration.fontWeightAdjustment;
        return Typeface.create(typeface, AbstractC0348nb.v(i3 + weight, 1, 1000), typeface.isItalic());
    }

    public abstract void A(Typeface typeface);

    public abstract void C(boolean z);

    public abstract void D(boolean z);

    public abstract boolean E(View view, float f);

    public abstract void G(ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2);

    public abstract int a(ViewGroup.MarginLayoutParams marginLayoutParams);

    public abstract float b(int i);

    public void c(int i) {
        new Handler(Looper.getMainLooper()).post(new RunnableC0096dh(i, 0, this));
    }

    public abstract int n();

    public abstract int o();

    public abstract int p();

    public abstract int q();

    public abstract int r(View view);

    public abstract int s(CoordinatorLayout coordinatorLayout);

    public abstract int t();

    public abstract boolean u(float f);

    public abstract boolean w(View view);

    public abstract boolean x(float f, float f2);

    public abstract void z(int i);
}
