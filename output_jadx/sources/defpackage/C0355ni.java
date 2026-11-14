package defpackage;

import androidx.recyclerview.widget.RecyclerView;

/* renamed from: ni, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0355ni extends AbstractC0455rg {
    public boolean a = false;
    public final /* synthetic */ C0323mc b;

    public C0355ni(C0323mc c0323mc) {
        this.b = c0323mc;
    }

    @Override // defpackage.AbstractC0455rg
    public final void a(RecyclerView recyclerView, int i) {
        if (i == 0 && this.a) {
            this.a = false;
            this.b.l();
        }
    }

    @Override // defpackage.AbstractC0455rg
    public final void b(RecyclerView recyclerView, int i, int i2) {
        if (i == 0 && i2 == 0) {
            return;
        }
        this.a = true;
    }
}
