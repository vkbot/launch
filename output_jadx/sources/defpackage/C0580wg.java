package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import java.util.WeakHashMap;

/* renamed from: wg, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0580wg {
    public final /* synthetic */ RecyclerView a;

    public C0580wg(RecyclerView recyclerView) {
        this.a = recyclerView;
    }

    public final void a() {
        boolean z = RecyclerView.F0;
        RecyclerView recyclerView = this.a;
        if (z && recyclerView.t && recyclerView.s) {
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            Rm.m(recyclerView, recyclerView.i);
        } else {
            recyclerView.A = true;
            recyclerView.requestLayout();
        }
    }
}
