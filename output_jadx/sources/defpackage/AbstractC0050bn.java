package defpackage;

import android.view.View;
import android.view.autofill.AutofillId;
import com.omoda.launcher.R;
import java.util.Objects;

/* renamed from: bn, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0050bn {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.view.View$OnUnhandledKeyEventListener, java.lang.Object] */
    public static void a(View view, InterfaceC0179gn interfaceC0179gn) {
        C0277ki c0277ki = (C0277ki) view.getTag(R.id.tag_unhandled_key_listeners);
        C0277ki c0277ki2 = c0277ki;
        if (c0277ki == null) {
            C0277ki c0277ki3 = new C0277ki();
            view.setTag(R.id.tag_unhandled_key_listeners, c0277ki3);
            c0277ki2 = c0277ki3;
        }
        Objects.requireNonNull(interfaceC0179gn);
        ?? obj = new Object();
        c0277ki2.put(interfaceC0179gn, obj);
        view.addOnUnhandledKeyEventListener(obj);
    }

    public static CharSequence b(View view) {
        return view.getAccessibilityPaneTitle();
    }

    public static boolean c(View view) {
        return view.isAccessibilityHeading();
    }

    public static boolean d(View view) {
        return view.isScreenReaderFocusable();
    }

    public static void e(View view, InterfaceC0179gn interfaceC0179gn) {
        View.OnUnhandledKeyEventListener onUnhandledKeyEventListener;
        C0277ki c0277ki = (C0277ki) view.getTag(R.id.tag_unhandled_key_listeners);
        if (c0277ki == null || (onUnhandledKeyEventListener = (View.OnUnhandledKeyEventListener) c0277ki.getOrDefault(interfaceC0179gn, null)) == null) {
            return;
        }
        view.removeOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
    }

    public static <T> T f(View view, int i) {
        return (T) view.requireViewById(i);
    }

    public static void g(View view, boolean z) {
        view.setAccessibilityHeading(z);
    }

    public static void h(View view, CharSequence charSequence) {
        view.setAccessibilityPaneTitle(charSequence);
    }

    public static void i(View view, AutofillId autofillId) {
        view.setAutofillId(autofillId);
    }

    public static void j(View view, boolean z) {
        view.setScreenReaderFocusable(z);
    }
}
