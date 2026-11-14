package defpackage;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;

/* renamed from: t9, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0498t9 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ AbstractViewOnTouchListenerC0523u9 b;

    public /* synthetic */ RunnableC0498t9(AbstractViewOnTouchListenerC0523u9 abstractViewOnTouchListenerC0523u9, int i) {
        this.a = i;
        this.b = abstractViewOnTouchListenerC0523u9;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.a) {
            case 0:
                ViewParent parent = this.b.d.getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                    return;
                }
                return;
            default:
                AbstractViewOnTouchListenerC0523u9 abstractViewOnTouchListenerC0523u9 = this.b;
                abstractViewOnTouchListenerC0523u9.a();
                View view = abstractViewOnTouchListenerC0523u9.d;
                if (view.isEnabled() && !view.isLongClickable() && abstractViewOnTouchListenerC0523u9.c()) {
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                    long uptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                    view.onTouchEvent(obtain);
                    obtain.recycle();
                    abstractViewOnTouchListenerC0523u9.g = true;
                    return;
                }
                return;
        }
    }
}
