package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityManager;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class V3 implements View.OnAttachStateChangeListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ V3(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    private final void a(View view) {
    }

    private final void b(View view) {
    }

    private final void c(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        AccessibilityManager accessibilityManager;
        Object obj = this.b;
        switch (this.a) {
            case 0:
                return;
            case 1:
                B8 b8 = (B8) obj;
                if (b8.u == null || (accessibilityManager = b8.t) == null) {
                    return;
                }
                WeakHashMap weakHashMap = AbstractC0205hn.a;
                if (Um.b(b8)) {
                    AbstractC0563w.a(accessibilityManager, b8.u);
                    return;
                }
                return;
            case 2:
                View view2 = (View) obj;
                view2.removeOnAttachStateChangeListener(this);
                WeakHashMap weakHashMap2 = AbstractC0205hn.a;
                Vm.c(view2);
                return;
            default:
                return;
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        AccessibilityManager accessibilityManager;
        switch (this.a) {
            case 0:
                Y3 y3 = (Y3) this.b;
                ViewTreeObserver viewTreeObserver = y3.x;
                if (viewTreeObserver != null) {
                    if (!viewTreeObserver.isAlive()) {
                        y3.x = view.getViewTreeObserver();
                    }
                    y3.x.removeGlobalOnLayoutListener(y3.i);
                }
                view.removeOnAttachStateChangeListener(this);
                return;
            case 1:
                B8 b8 = (B8) this.b;
                InterfaceC0588x interfaceC0588x = b8.u;
                if (interfaceC0588x == null || (accessibilityManager = b8.t) == null) {
                    return;
                }
                AbstractC0563w.b(accessibilityManager, interfaceC0588x);
                return;
            case 2:
                return;
            default:
                Di di = (Di) this.b;
                ViewTreeObserver viewTreeObserver2 = di.o;
                if (viewTreeObserver2 != null) {
                    if (!viewTreeObserver2.isAlive()) {
                        di.o = view.getViewTreeObserver();
                    }
                    di.o.removeGlobalOnLayoutListener(di.i);
                }
                view.removeOnAttachStateChangeListener(this);
                return;
        }
    }
}
