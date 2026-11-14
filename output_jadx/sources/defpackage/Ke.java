package defpackage;

import androidx.activity.b;
import java.util.ListIterator;

/* loaded from: classes.dex */
public final class Ke extends Nb implements S9 {
    public final /* synthetic */ int b;
    public final /* synthetic */ b c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Ke(b bVar, int i) {
        super(0);
        this.b = i;
        this.c = bVar;
    }

    @Override // defpackage.S9
    public final Object d() {
        Object obj;
        switch (this.b) {
            case 0:
                this.c.b();
                return C0486sm.a;
            case 1:
                b bVar = this.c;
                T2 t2 = bVar.b;
                ListIterator listIterator = t2.listIterator(t2.a());
                while (true) {
                    if (listIterator.hasPrevious()) {
                        obj = listIterator.previous();
                        if (((D9) obj).a) {
                        }
                    } else {
                        obj = null;
                    }
                }
                bVar.c = null;
                return C0486sm.a;
            default:
                this.c.b();
                return C0486sm.a;
        }
    }
}
