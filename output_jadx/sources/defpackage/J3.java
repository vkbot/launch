package defpackage;

import android.util.Log;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class J3 implements Runnable {
    public final /* synthetic */ int a;
    public final int b;
    public final Object c;

    public /* synthetic */ J3(int i, int i2, Object obj) {
        this.a = i2;
        this.c = obj;
        this.b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.a) {
            case 0:
                AbstractC0145ff abstractC0145ff = (AbstractC0145ff) ((L) this.c).b;
                if (abstractC0145ff != null) {
                    abstractC0145ff.z(this.b);
                    return;
                }
                return;
            case 1:
                ArrayList arrayList = (ArrayList) this.c;
                int size = arrayList.size();
                int i = 0;
                if (this.b != 1) {
                    while (i < size) {
                        ((Z7) arrayList.get(i)).getClass();
                        i++;
                    }
                    return;
                } else {
                    while (i < size) {
                        ((Z7) arrayList.get(i)).a();
                        i++;
                    }
                    return;
                }
            default:
                RecyclerView recyclerView = ((C0552vd) this.c).Y;
                if (recyclerView.x) {
                    return;
                }
                AbstractC0353ng abstractC0353ng = recyclerView.n;
                if (abstractC0353ng == null) {
                    Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
                    return;
                } else {
                    abstractC0353ng.x0(recyclerView, this.b);
                    return;
                }
        }
    }

    public J3(List list, int i, Throwable th) {
        this.a = 1;
        AbstractC0145ff.f(list, "initCallbacks cannot be null");
        this.c = new ArrayList(list);
        this.b = i;
    }
}
