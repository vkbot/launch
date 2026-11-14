package defpackage;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* renamed from: rb, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0450rb implements InterfaceC0431qg {
    public final /* synthetic */ C0550vb a;

    public C0450rb(C0550vb c0550vb) {
        this.a = c0550vb;
    }

    @Override // defpackage.InterfaceC0431qg
    public final void a(boolean z) {
        if (z) {
            this.a.q(null, 0);
        }
    }

    @Override // defpackage.InterfaceC0431qg
    public final boolean b(RecyclerView recyclerView, MotionEvent motionEvent) {
        int findPointerIndex;
        C0550vb c0550vb = this.a;
        ((GestureDetector) ((L) c0550vb.x.b).b).onTouchEvent(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        C0475sb c0475sb = null;
        if (actionMasked == 0) {
            c0550vb.l = motionEvent.getPointerId(0);
            c0550vb.d = motionEvent.getX();
            c0550vb.e = motionEvent.getY();
            VelocityTracker velocityTracker = c0550vb.t;
            if (velocityTracker != null) {
                velocityTracker.recycle();
            }
            c0550vb.t = VelocityTracker.obtain();
            if (c0550vb.c == null) {
                ArrayList arrayList = c0550vb.p;
                if (!arrayList.isEmpty()) {
                    View l = c0550vb.l(motionEvent);
                    int size = arrayList.size() - 1;
                    while (true) {
                        if (size < 0) {
                            break;
                        }
                        C0475sb c0475sb2 = (C0475sb) arrayList.get(size);
                        if (c0475sb2.e.a == l) {
                            c0475sb = c0475sb2;
                            break;
                        }
                        size--;
                    }
                }
                if (c0475sb != null) {
                    c0550vb.d -= c0475sb.i;
                    c0550vb.e -= c0475sb.j;
                    Eg eg = c0475sb.e;
                    c0550vb.k(eg, true);
                    if (c0550vb.a.remove(eg.a)) {
                        c0550vb.m.a(c0550vb.r, eg);
                    }
                    c0550vb.q(eg, c0475sb.f);
                    c0550vb.r(c0550vb.o, 0, motionEvent);
                }
            }
        } else if (actionMasked == 3 || actionMasked == 1) {
            c0550vb.l = -1;
            c0550vb.q(null, 0);
        } else {
            int i = c0550vb.l;
            if (i != -1 && (findPointerIndex = motionEvent.findPointerIndex(i)) >= 0) {
                c0550vb.i(actionMasked, findPointerIndex, motionEvent);
            }
        }
        VelocityTracker velocityTracker2 = c0550vb.t;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
        }
        return c0550vb.c != null;
    }

    @Override // defpackage.InterfaceC0431qg
    public final void c(RecyclerView recyclerView, MotionEvent motionEvent) {
        C0550vb c0550vb = this.a;
        ((GestureDetector) ((L) c0550vb.x.b).b).onTouchEvent(motionEvent);
        VelocityTracker velocityTracker = c0550vb.t;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
        }
        if (c0550vb.l == -1) {
            return;
        }
        int actionMasked = motionEvent.getActionMasked();
        int findPointerIndex = motionEvent.findPointerIndex(c0550vb.l);
        if (findPointerIndex >= 0) {
            c0550vb.i(actionMasked, findPointerIndex, motionEvent);
        }
        Eg eg = c0550vb.c;
        if (eg == null) {
            return;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                if (findPointerIndex >= 0) {
                    c0550vb.r(c0550vb.o, findPointerIndex, motionEvent);
                    c0550vb.o(eg);
                    RecyclerView recyclerView2 = c0550vb.r;
                    J2 j2 = c0550vb.s;
                    recyclerView2.removeCallbacks(j2);
                    j2.run();
                    c0550vb.r.invalidate();
                    return;
                }
                return;
            }
            if (actionMasked != 3) {
                if (actionMasked != 6) {
                    return;
                }
                int actionIndex = motionEvent.getActionIndex();
                if (motionEvent.getPointerId(actionIndex) == c0550vb.l) {
                    c0550vb.l = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
                    c0550vb.r(c0550vb.o, actionIndex, motionEvent);
                    return;
                }
                return;
            }
            VelocityTracker velocityTracker2 = c0550vb.t;
            if (velocityTracker2 != null) {
                velocityTracker2.clear();
            }
        }
        c0550vb.q(null, 0);
        c0550vb.l = -1;
    }
}
