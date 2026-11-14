package defpackage;

import java.util.Iterator;

/* renamed from: pc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0401pc implements Lh {
    public final /* synthetic */ int a;
    public final Object b;

    public /* synthetic */ C0401pc(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.Lh
    public final Iterator iterator() {
        switch (this.a) {
            case 0:
                return new C0375oc(this);
            default:
                return (Iterator) this.b;
        }
    }
}
