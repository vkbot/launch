package androidx.lifecycle;

import defpackage.C0568w4;
import defpackage.C0618y4;
import defpackage.InterfaceC0013ac;
import defpackage.InterfaceC0039bc;
import defpackage.Vb;
import defpackage.Zb;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
@Deprecated
/* loaded from: classes.dex */
public class ReflectiveGenericLifecycleObserver implements Zb {
    public final InterfaceC0013ac a;
    public final C0568w4 b;

    public ReflectiveGenericLifecycleObserver(InterfaceC0013ac interfaceC0013ac) {
        this.a = interfaceC0013ac;
        C0618y4 c0618y4 = C0618y4.c;
        Class<?> cls = interfaceC0013ac.getClass();
        C0568w4 c0568w4 = (C0568w4) c0618y4.a.get(cls);
        this.b = c0568w4 == null ? c0618y4.a(cls, null) : c0568w4;
    }

    @Override // defpackage.Zb
    public final void b(InterfaceC0039bc interfaceC0039bc, Vb vb) {
        HashMap hashMap = this.b.a;
        List list = (List) hashMap.get(vb);
        InterfaceC0013ac interfaceC0013ac = this.a;
        C0568w4.a(list, interfaceC0039bc, vb, interfaceC0013ac);
        C0568w4.a((List) hashMap.get(Vb.ON_ANY), interfaceC0039bc, vb, interfaceC0013ac);
    }
}
