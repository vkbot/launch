package defpackage;

import android.view.View;
import android.view.ViewConfiguration;

/* renamed from: u9, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractViewOnTouchListenerC0523u9 implements View.OnTouchListener, View.OnAttachStateChangeListener {
    public final float a;
    public final int b;
    public final int c;
    public final View d;
    public RunnableC0498t9 e;
    public RunnableC0498t9 f;
    public boolean g;
    public int h;
    public final int[] i = new int[2];

    public AbstractViewOnTouchListenerC0523u9(View view) {
        this.d = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.a = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.b = tapTimeout;
        this.c = (ViewConfiguration.getLongPressTimeout() + tapTimeout) / 2;
    }

    public final void a() {
        RunnableC0498t9 runnableC0498t9 = this.f;
        View view = this.d;
        if (runnableC0498t9 != null) {
            view.removeCallbacks(runnableC0498t9);
        }
        RunnableC0498t9 runnableC0498t92 = this.e;
        if (runnableC0498t92 != null) {
            view.removeCallbacks(runnableC0498t92);
        }
    }

    public abstract InterfaceC0200hi b();

    public abstract boolean c();

    public boolean d() {
        InterfaceC0200hi b = b();
        if (b == null || !b.a()) {
            return true;
        }
        b.dismiss();
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0059, code lost:
    
        if (r14 != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x007b, code lost:
    
        if (r4 != 3) goto L58;
     */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0100  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouch(android.view.View r13, android.view.MotionEvent r14) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.AbstractViewOnTouchListenerC0523u9.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.g = false;
        this.h = -1;
        RunnableC0498t9 runnableC0498t9 = this.e;
        if (runnableC0498t9 != null) {
            this.d.removeCallbacks(runnableC0498t9);
        }
    }
}
