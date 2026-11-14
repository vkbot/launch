package defpackage;

import android.view.KeyEvent;
import android.view.MotionEvent;
import androidx.appcompat.widget.ContentFrameLayout;

/* renamed from: w1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0565w1 extends ContentFrameLayout {
    public final /* synthetic */ LayoutInflaterFactory2C0615y1 i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0565w1(LayoutInflaterFactory2C0615y1 layoutInflaterFactory2C0615y1, R5 r5) {
        super(r5, null);
        this.i = layoutInflaterFactory2C0615y1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.i.u(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (x < -5 || y < -5 || x > getWidth() + 5 || y > getHeight() + 5) {
                LayoutInflaterFactory2C0615y1 layoutInflaterFactory2C0615y1 = this.i;
                layoutInflaterFactory2C0615y1.r(layoutInflaterFactory2C0615y1.z(0), true);
                return true;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i) {
        setBackgroundDrawable(C6.n(getContext(), i));
    }
}
