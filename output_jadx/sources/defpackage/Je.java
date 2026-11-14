package defpackage;

import androidx.activity.b;
import java.util.ListIterator;

/* loaded from: classes.dex */
public final class Je extends Nb implements InterfaceC0089da {
    public final /* synthetic */ int b;
    public final /* synthetic */ b c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Je(b bVar, int i) {
        super(1);
        this.b = i;
        this.c = bVar;
    }

    @Override // defpackage.InterfaceC0089da
    public final Object h(Object obj) {
        Object obj2;
        Object obj3;
        switch (this.b) {
            case 0:
                AbstractC0348nb.r((C0107e3) obj, "backEvent");
                b bVar = this.c;
                T2 t2 = bVar.b;
                ListIterator listIterator = t2.listIterator(t2.a());
                while (true) {
                    if (listIterator.hasPrevious()) {
                        obj2 = listIterator.previous();
                        if (((D9) obj2).a) {
                        }
                    } else {
                        obj2 = null;
                    }
                }
                bVar.c = (D9) obj2;
                return C0486sm.a;
            default:
                AbstractC0348nb.r((C0107e3) obj, "backEvent");
                T2 t22 = this.c.b;
                ListIterator listIterator2 = t22.listIterator(t22.a());
                while (true) {
                    if (listIterator2.hasPrevious()) {
                        obj3 = listIterator2.previous();
                        if (((D9) obj3).a) {
                        }
                    } else {
                        obj3 = null;
                    }
                }
                return C0486sm.a;
        }
    }
}
