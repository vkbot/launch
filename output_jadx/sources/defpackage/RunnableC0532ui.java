package defpackage;

import java.util.ArrayList;

/* renamed from: ui, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0532ui implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ C0557vi b;
    public final /* synthetic */ Z6 c;

    public /* synthetic */ RunnableC0532ui(Z6 z6, C0557vi c0557vi, int i) {
        this.a = i;
        this.c = z6;
        this.b = c0557vi;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.a) {
            case 0:
                ArrayList arrayList = this.c.b;
                C0557vi c0557vi = this.b;
                if (arrayList.contains(c0557vi)) {
                    AbstractC0407pi.a(c0557vi.c.E, c0557vi.a);
                    return;
                }
                return;
            default:
                Z6 z6 = this.c;
                ArrayList arrayList2 = z6.b;
                C0557vi c0557vi2 = this.b;
                arrayList2.remove(c0557vi2);
                z6.c.remove(c0557vi2);
                return;
        }
    }
}
