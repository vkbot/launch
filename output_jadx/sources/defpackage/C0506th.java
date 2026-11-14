package defpackage;

import android.os.Bundle;
import androidx.activity.a;
import java.util.Iterator;
import java.util.Map;

/* renamed from: th, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0506th implements InterfaceC0606xh {
    public final C0183h1 a;
    public boolean b;
    public Bundle c;
    public final C0149fj d;

    public C0506th(C0183h1 c0183h1, a aVar) {
        AbstractC0348nb.r(c0183h1, "savedStateRegistry");
        this.a = c0183h1;
        this.d = new C0149fj(new S4(4, aVar));
    }

    @Override // defpackage.InterfaceC0606xh
    public final Bundle a() {
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        Iterator it = ((C0531uh) this.d.a()).c.entrySet().iterator();
        if (!it.hasNext()) {
            this.b = false;
            return bundle;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getValue().getClass();
        throw new ClassCastException();
    }
}
