package defpackage;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;

/* renamed from: zc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewOnTouchListenerC0651zc implements View.OnTouchListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ ViewOnTouchListenerC0651zc(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        J1 j1;
        switch (this.a) {
            case 0:
                int action = motionEvent.getAction();
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                Ac ac = (Ac) this.b;
                if (action == 0 && (j1 = ac.z) != null && j1.isShowing() && x >= 0 && x < ac.z.getWidth() && y >= 0 && y < ac.z.getHeight()) {
                    ac.v.postDelayed(ac.r, 250L);
                    return false;
                }
                if (action != 1) {
                    return false;
                }
                ac.v.removeCallbacks(ac.r);
                return false;
            default:
                if (((Checkable) view).isChecked()) {
                    return ((GestureDetector) this.b).onTouchEvent(motionEvent);
                }
                return false;
        }
    }
}
