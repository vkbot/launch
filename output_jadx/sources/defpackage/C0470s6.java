package defpackage;

import android.database.DataSetObserver;

/* renamed from: s6, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0470s6 extends DataSetObserver {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ C0470s6(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.database.DataSetObserver
    public final void onChanged() {
        switch (this.a) {
            case 0:
                Vi vi = (Vi) this.b;
                vi.a = true;
                vi.notifyDataSetChanged();
                return;
            default:
                Ac ac = (Ac) this.b;
                if (ac.z.isShowing()) {
                    ac.h();
                    return;
                }
                return;
        }
    }

    @Override // android.database.DataSetObserver
    public final void onInvalidated() {
        switch (this.a) {
            case 0:
                Vi vi = (Vi) this.b;
                vi.a = false;
                vi.notifyDataSetInvalidated();
                return;
            default:
                ((Ac) this.b).dismiss();
                return;
        }
    }
}
