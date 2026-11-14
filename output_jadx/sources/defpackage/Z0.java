package defpackage;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.LinkedHashSet;

/* loaded from: classes.dex */
public final class Z0 implements InterfaceC0606xh {
    public final /* synthetic */ int a;
    public final Object b;

    public /* synthetic */ Z0(AbstractActivityC0028b1 abstractActivityC0028b1, int i) {
        this.a = i;
        this.b = abstractActivityC0028b1;
    }

    @Override // defpackage.InterfaceC0606xh
    public final Bundle a() {
        L l;
        switch (this.a) {
            case 0:
                Bundle bundle = new Bundle();
                ((AbstractActivityC0028b1) this.b).j().getClass();
                return bundle;
            case 1:
                Bundle bundle2 = new Bundle();
                AbstractActivityC0028b1 abstractActivityC0028b1 = (AbstractActivityC0028b1) this.b;
                do {
                    l = abstractActivityC0028b1.p;
                } while (AbstractActivityC0028b1.l(((C0623y9) l.b).u));
                abstractActivityC0028b1.q.d(Vb.ON_STOP);
                K9 O = ((C0623y9) l.b).u.O();
                if (O != null) {
                    bundle2.putParcelable("android:support:fragments", O);
                }
                return bundle2;
            default:
                Bundle bundle3 = new Bundle();
                bundle3.putStringArrayList("classes_to_restore", new ArrayList<>((LinkedHashSet) this.b));
                return bundle3;
        }
    }

    public Z0(C0183h1 c0183h1) {
        this.a = 2;
        AbstractC0348nb.r(c0183h1, "registry");
        this.b = new LinkedHashSet();
        c0183h1.e("androidx.savedstate.Restarter", this);
    }
}
