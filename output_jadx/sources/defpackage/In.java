package defpackage;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import com.omoda.launcher.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class In extends Yl {
    public final /* synthetic */ ViewGroup a;
    public final /* synthetic */ View b;
    public final /* synthetic */ View c;
    public final /* synthetic */ S8 d;

    public In(S8 s8, ViewGroup viewGroup, View view, View view2) {
        this.d = s8;
        this.a = viewGroup;
        this.b = view;
        this.c = view2;
    }

    @Override // defpackage.Yl, defpackage.Wl
    public final void b() {
        this.a.getOverlay().remove(this.b);
    }

    @Override // defpackage.Yl, defpackage.Wl
    public final void d() {
        View view = this.b;
        if (view.getParent() == null) {
            this.a.getOverlay().add(view);
            return;
        }
        S8 s8 = this.d;
        ArrayList arrayList = s8.m;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((Animator) arrayList.get(size)).cancel();
        }
        ArrayList arrayList2 = s8.q;
        if (arrayList2 == null || arrayList2.size() <= 0) {
            return;
        }
        ArrayList arrayList3 = (ArrayList) s8.q.clone();
        int size2 = arrayList3.size();
        for (int i = 0; i < size2; i++) {
            ((Wl) arrayList3.get(i)).a();
        }
    }

    @Override // defpackage.Wl
    public final void e(Xl xl) {
        this.c.setTag(R.id.save_overlay_view, null);
        this.a.getOverlay().remove(this.b);
        xl.u(this);
    }
}
