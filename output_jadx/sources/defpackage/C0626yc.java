package defpackage;

import android.os.Handler;
import android.widget.AbsListView;

/* renamed from: yc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0626yc implements AbsListView.OnScrollListener {
    public final /* synthetic */ Ac a;

    public C0626yc(Ac ac) {
        this.a = ac;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i) {
        if (i == 1) {
            Ac ac = this.a;
            if (ac.z.getInputMethodMode() == 2 || ac.z.getContentView() == null) {
                return;
            }
            Handler handler = ac.v;
            RunnableC0601xc runnableC0601xc = ac.r;
            handler.removeCallbacks(runnableC0601xc);
            runnableC0601xc.run();
        }
    }
}
