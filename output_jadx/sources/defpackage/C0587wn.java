package defpackage;

import android.view.View;
import java.lang.ref.WeakReference;

/* renamed from: wn, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0587wn {
    public final WeakReference a;

    public C0587wn(View view) {
        this.a = new WeakReference(view);
    }

    public final void a(float f) {
        View view = (View) this.a.get();
        if (view != null) {
            view.animate().alpha(f);
        }
    }

    public final void b() {
        View view = (View) this.a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public final void c(long j) {
        View view = (View) this.a.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
    }

    public final void d(InterfaceC0637yn interfaceC0637yn) {
        View view = (View) this.a.get();
        if (view != null) {
            if (interfaceC0637yn != null) {
                view.animate().setListener(new Ul(interfaceC0637yn, view, 1));
            } else {
                view.animate().setListener(null);
            }
        }
    }

    public final void e(float f) {
        View view = (View) this.a.get();
        if (view != null) {
            view.animate().translationY(f);
        }
    }
}
