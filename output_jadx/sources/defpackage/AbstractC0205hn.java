package defpackage;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import com.omoda.launcher.R;
import java.util.ArrayList;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: hn, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0205hn {
    public static WeakHashMap a;
    public static final int[] b;
    public static final Nm c;
    public static final Pm d;

    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, Nm] */
    static {
        new AtomicInteger(1);
        a = null;
        b = new int[]{R.id.accessibility_custom_action_0, R.id.accessibility_custom_action_1, R.id.accessibility_custom_action_2, R.id.accessibility_custom_action_3, R.id.accessibility_custom_action_4, R.id.accessibility_custom_action_5, R.id.accessibility_custom_action_6, R.id.accessibility_custom_action_7, R.id.accessibility_custom_action_8, R.id.accessibility_custom_action_9, R.id.accessibility_custom_action_10, R.id.accessibility_custom_action_11, R.id.accessibility_custom_action_12, R.id.accessibility_custom_action_13, R.id.accessibility_custom_action_14, R.id.accessibility_custom_action_15, R.id.accessibility_custom_action_16, R.id.accessibility_custom_action_17, R.id.accessibility_custom_action_18, R.id.accessibility_custom_action_19, R.id.accessibility_custom_action_20, R.id.accessibility_custom_action_21, R.id.accessibility_custom_action_22, R.id.accessibility_custom_action_23, R.id.accessibility_custom_action_24, R.id.accessibility_custom_action_25, R.id.accessibility_custom_action_26, R.id.accessibility_custom_action_27, R.id.accessibility_custom_action_28, R.id.accessibility_custom_action_29, R.id.accessibility_custom_action_30, R.id.accessibility_custom_action_31};
        c = new Object();
        d = new Pm();
    }

    public static C0587wn a(View view) {
        if (a == null) {
            a = new WeakHashMap();
        }
        C0587wn c0587wn = (C0587wn) a.get(view);
        if (c0587wn != null) {
            return c0587wn;
        }
        C0587wn c0587wn2 = new C0587wn(view);
        a.put(view, c0587wn2);
        return c0587wn2;
    }

    public static ArrayList b(View view) {
        ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_accessibility_actions);
        if (arrayList != null) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        view.setTag(R.id.tag_accessibility_actions, arrayList2);
        return arrayList2;
    }

    public static String[] c(D1 d1) {
        return Build.VERSION.SDK_INT >= 31 ? AbstractC0127en.a(d1) : (String[]) d1.getTag(R.id.tag_on_receive_content_mime_types);
    }

    public static void d(View view, int i) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            boolean z = AbstractC0050bn.b(view) != null && view.isShown() && view.getWindowVisibility() == 0;
            if (Um.a(view) != 0 || z) {
                AccessibilityEvent obtain = AccessibilityEvent.obtain();
                obtain.setEventType(z ? 32 : 2048);
                Um.g(obtain, i);
                if (z) {
                    obtain.getText().add(AbstractC0050bn.b(view));
                    if (Rm.c(view) == 0) {
                        Rm.s(view, 1);
                    }
                }
                view.sendAccessibilityEventUnchecked(obtain);
                return;
            }
            if (i != 32) {
                if (view.getParent() != null) {
                    try {
                        Um.e(view.getParent(), view, view, i);
                        return;
                    } catch (AbstractMethodError e) {
                        Log.e("ViewCompat", view.getParent().getClass().getSimpleName().concat(" does not fully implement ViewParent"), e);
                        return;
                    }
                }
                return;
            }
            AccessibilityEvent obtain2 = AccessibilityEvent.obtain();
            view.onInitializeAccessibilityEvent(obtain2);
            obtain2.setEventType(32);
            Um.g(obtain2, i);
            obtain2.setSource(view);
            view.onPopulateAccessibilityEvent(obtain2);
            obtain2.getText().add(AbstractC0050bn.b(view));
            accessibilityManager.sendAccessibilityEvent(obtain2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static K5 e(View view, K5 k5) {
        if (Log.isLoggable("ViewCompat", 3)) {
            Log.d("ViewCompat", "performReceiveContent: " + k5 + ", view=" + view.getClass().getSimpleName() + "[" + view.getId() + "]");
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return AbstractC0127en.b(view, k5);
        }
        Se se = (Se) view.getTag(R.id.tag_on_receive_content_listener);
        Te te = c;
        if (se == null) {
            if (view instanceof Te) {
                te = (Te) view;
            }
            return te.a(k5);
        }
        K5 a2 = ((Tj) se).a(view, k5);
        if (a2 == null) {
            return null;
        }
        if (view instanceof Te) {
            te = (Te) view;
        }
        return te.a(a2);
    }

    public static void f(View view, int i) {
        ArrayList b2 = b(view);
        for (int i2 = 0; i2 < b2.size(); i2++) {
            if (((D) b2.get(i2)).a() == i) {
                b2.remove(i2);
                return;
            }
        }
    }

    public static void g(View view, D d2, X x) {
        D d3 = new D(null, d2.b, null, x, d2.c);
        View.AccessibilityDelegate a2 = AbstractC0076cn.a(view);
        C0488t c0488t = a2 == null ? null : a2 instanceof r ? ((r) a2).a : new C0488t(a2);
        if (c0488t == null) {
            c0488t = new C0488t();
        }
        h(view, c0488t);
        f(view, d3.a());
        b(view).add(d3);
        d(view, 0);
    }

    public static void h(View view, C0488t c0488t) {
        if (c0488t == null && (AbstractC0076cn.a(view) instanceof r)) {
            c0488t = new C0488t();
        }
        if (Rm.c(view) == 0) {
            Rm.s(view, 1);
        }
        view.setAccessibilityDelegate(c0488t == null ? null : c0488t.b);
    }

    public static void i(View view, CharSequence charSequence) {
        new Om(R.id.tag_accessibility_pane_title, CharSequence.class, 8, 28, 0).d(view, charSequence);
        Pm pm = d;
        if (charSequence == null) {
            pm.a.remove(view);
            view.removeOnAttachStateChangeListener(pm);
            Rm.o(view.getViewTreeObserver(), pm);
        } else {
            pm.a.put(view, Boolean.valueOf(view.isShown() && view.getWindowVisibility() == 0));
            view.addOnAttachStateChangeListener(pm);
            if (Um.b(view)) {
                view.getViewTreeObserver().addOnGlobalLayoutListener(pm);
            }
        }
    }
}
