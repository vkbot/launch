package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.PathInterpolator;
import com.omoda.launcher.R;
import java.util.List;

/* renamed from: io, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0231io extends AbstractC0309lo {
    public static final PathInterpolator e = new PathInterpolator(0.0f, 1.1f, 0.0f, 1.0f);
    public static final V8 f = new V8();
    public static final DecelerateInterpolator g = new DecelerateInterpolator();

    public static void e(View view) {
        I5 j = j(view);
        if (j != null) {
            ((View) j.e).setTranslationY(0.0f);
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                e(viewGroup.getChildAt(i));
            }
        }
    }

    public static void f(View view, WindowInsets windowInsets, boolean z) {
        I5 j = j(view);
        if (j != null) {
            j.b = windowInsets;
            if (!z) {
                View view2 = (View) j.e;
                int[] iArr = (int[]) j.f;
                view2.getLocationOnScreen(iArr);
                z = true;
                j.c = iArr[1];
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                f(viewGroup.getChildAt(i), windowInsets, z);
            }
        }
    }

    public static void g(View view, yo yoVar, List list) {
        I5 j = j(view);
        if (j != null) {
            j.b(yoVar, list);
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                g(viewGroup.getChildAt(i), yoVar, list);
            }
        }
    }

    public static void h(View view, K1 k1) {
        I5 j = j(view);
        if (j != null) {
            View view2 = (View) j.e;
            int[] iArr = (int[]) j.f;
            view2.getLocationOnScreen(iArr);
            int i = j.c - iArr[1];
            j.d = i;
            view2.setTranslationY(i);
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                h(viewGroup.getChildAt(i2), k1);
            }
        }
    }

    public static WindowInsets i(View view, WindowInsets windowInsets) {
        return view.getTag(R.id.tag_on_apply_window_listener) != null ? windowInsets : view.onApplyWindowInsets(windowInsets);
    }

    public static I5 j(View view) {
        Object tag = view.getTag(R.id.tag_window_insets_animation_callback);
        if (tag instanceof ViewOnApplyWindowInsetsListenerC0206ho) {
            return ((ViewOnApplyWindowInsetsListenerC0206ho) tag).a;
        }
        return null;
    }
}
