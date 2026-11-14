package defpackage;

import androidx.appcompat.widget.Toolbar;

/* renamed from: vk, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0559vk implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Toolbar b;

    public /* synthetic */ RunnableC0559vk(Toolbar toolbar, int i) {
        this.a = i;
        this.b = toolbar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.a) {
            case 0:
                C0634yk c0634yk = this.b.L;
                Pd pd = c0634yk == null ? null : c0634yk.b;
                if (pd != null) {
                    pd.collapseActionView();
                    return;
                }
                return;
            default:
                this.b.o();
                return;
        }
    }
}
