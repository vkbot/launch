package defpackage;

import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* renamed from: wk, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0584wk implements InterfaceC0363o0, Jd {
    public final /* synthetic */ Toolbar a;

    public /* synthetic */ C0584wk(Toolbar toolbar) {
        this.a = toolbar;
    }

    @Override // defpackage.Jd
    public boolean d(Ld ld, MenuItem menuItem) {
        this.a.getClass();
        return false;
    }

    @Override // defpackage.Jd
    public void t(Ld ld) {
        Toolbar toolbar = this.a;
        C0285l0 c0285l0 = toolbar.a.t;
        if (c0285l0 == null || !c0285l0.h()) {
            Iterator it = ((CopyOnWriteArrayList) toolbar.G.c).iterator();
            if (it.hasNext()) {
                throw AbstractC0407pi.f(it);
            }
        }
    }
}
