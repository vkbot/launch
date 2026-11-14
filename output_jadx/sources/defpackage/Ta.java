package defpackage;

import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class Ta implements Iterable {
    public final /* synthetic */ int a;
    public final Object b;

    public /* synthetic */ Ta(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        switch (this.a) {
            case 0:
                return new Ua(((List) ((S4) this.b).c).iterator());
            default:
                return new C0060c7((C0086d7) this.b);
        }
    }
}
