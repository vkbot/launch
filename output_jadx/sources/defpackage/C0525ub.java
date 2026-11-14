package defpackage;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.WeakHashMap;

/* renamed from: ub, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0525ub extends GestureDetector.SimpleOnGestureListener {
    public boolean a = true;
    public final /* synthetic */ C0550vb b;

    public C0525ub(C0550vb c0550vb) {
        this.b = c0550vb;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onDown(MotionEvent motionEvent) {
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final void onLongPress(MotionEvent motionEvent) {
        C0550vb c0550vb;
        View l;
        Eg M;
        if (!this.a || (l = (c0550vb = this.b).l(motionEvent)) == null || (M = c0550vb.r.M(l)) == null) {
            return;
        }
        C0558vj c0558vj = c0550vb.m;
        RecyclerView recyclerView = c0550vb.r;
        c0558vj.getClass();
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        if ((C0558vj.b(257, Sm.d(recyclerView)) & 16711680) != 0) {
            int pointerId = motionEvent.getPointerId(0);
            int i = c0550vb.l;
            if (pointerId == i) {
                int findPointerIndex = motionEvent.findPointerIndex(i);
                float x = motionEvent.getX(findPointerIndex);
                float y = motionEvent.getY(findPointerIndex);
                c0550vb.d = x;
                c0550vb.e = y;
                c0550vb.i = 0.0f;
                c0550vb.h = 0.0f;
                c0550vb.m.getClass();
                c0550vb.q(M, 2);
            }
        }
    }
}
