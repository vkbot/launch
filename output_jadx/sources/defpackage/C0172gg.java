package defpackage;

import android.database.Observable;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* renamed from: gg, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0172gg extends Observable {
    public final boolean a() {
        return !((Observable) this).mObservers.isEmpty();
    }

    public final void b() {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            RecyclerView recyclerView = ((C0580wg) ((Observable) this).mObservers.get(size)).a;
            recyclerView.k(null);
            recyclerView.h0.f = true;
            recyclerView.Z(true);
            if (!recyclerView.e.j()) {
                recyclerView.requestLayout();
            }
        }
    }

    public final void c(int i, int i2, Object obj) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            C0580wg c0580wg = (C0580wg) ((Observable) this).mObservers.get(size);
            RecyclerView recyclerView = c0580wg.a;
            recyclerView.k(null);
            C0614y0 c0614y0 = recyclerView.e;
            if (i2 < 1) {
                c0614y0.getClass();
            } else {
                ArrayList arrayList = (ArrayList) c0614y0.c;
                arrayList.add(c0614y0.l(obj, 4, i, i2));
                c0614y0.a = 4 | c0614y0.a;
                if (arrayList.size() == 1) {
                    c0580wg.a();
                }
            }
        }
    }

    public final void d(int i, int i2) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            C0580wg c0580wg = (C0580wg) ((Observable) this).mObservers.get(size);
            RecyclerView recyclerView = c0580wg.a;
            recyclerView.k(null);
            C0614y0 c0614y0 = recyclerView.e;
            if (i2 < 1) {
                c0614y0.getClass();
            } else {
                ArrayList arrayList = (ArrayList) c0614y0.c;
                arrayList.add(c0614y0.l(null, 1, i, i2));
                c0614y0.a |= 1;
                if (arrayList.size() == 1) {
                    c0580wg.a();
                }
            }
        }
    }

    public final void e(int i, int i2) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            C0580wg c0580wg = (C0580wg) ((Observable) this).mObservers.get(size);
            RecyclerView recyclerView = c0580wg.a;
            recyclerView.k(null);
            C0614y0 c0614y0 = recyclerView.e;
            if (i2 < 1) {
                c0614y0.getClass();
            } else {
                ArrayList arrayList = (ArrayList) c0614y0.c;
                arrayList.add(c0614y0.l(null, 2, i, i2));
                c0614y0.a |= 2;
                if (arrayList.size() == 1) {
                    c0580wg.a();
                }
            }
        }
    }
}
