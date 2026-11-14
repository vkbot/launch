package defpackage;

import androidx.appcompat.widget.SearchView;

/* loaded from: classes.dex */
public final class Dh implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ SearchView b;

    public /* synthetic */ Dh(SearchView searchView, int i) {
        this.a = i;
        this.b = searchView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.a) {
            case 0:
                this.b.t();
                return;
            default:
                AbstractC0495t6 abstractC0495t6 = this.b.O;
                if (abstractC0495t6 instanceof Vi) {
                    abstractC0495t6.b(null);
                    return;
                }
                return;
        }
    }
}
