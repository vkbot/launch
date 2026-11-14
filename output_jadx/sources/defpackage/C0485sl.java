package defpackage;

import com.omoda.launcher.data.RemoteApp;
import com.omoda.launcher.service.TopOverlayAccessibilityService;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;

/* renamed from: sl, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0485sl extends AbstractC0098dj implements InterfaceC0192ha {
    public final /* synthetic */ TopOverlayAccessibilityService e;
    public final /* synthetic */ List f;
    public final /* synthetic */ List g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0485sl(TopOverlayAccessibilityService topOverlayAccessibilityService, List list, List list2, S5 s5) {
        super(s5);
        this.e = topOverlayAccessibilityService;
        this.f = list;
        this.g = list2;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        return new C0485sl(this.e, this.f, this.g, s5);
    }

    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        AbstractC0171gf.v(obj);
        TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
        TopOverlayAccessibilityService topOverlayAccessibilityService2 = this.e;
        Ji z = topOverlayAccessibilityService2.z();
        z.getClass();
        List list = this.f;
        AbstractC0348nb.r(list, "apps");
        File file = z.b;
        JSONArray jSONArray = new JSONArray();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            jSONArray.put(((RemoteApp) it.next()).toJson());
        }
        String jSONArray2 = jSONArray.toString();
        AbstractC0348nb.q(jSONArray2, "toString(...)");
        byte[] bytes = jSONArray2.getBytes(AbstractC0186h4.a);
        AbstractC0348nb.q(bytes, "getBytes(...)");
        z.b(file, bytes);
        Ji z2 = topOverlayAccessibilityService2.z();
        z2.getClass();
        List list2 = this.g;
        AbstractC0348nb.r(list2, "urls");
        ArrayList arrayList = new ArrayList(N4.r0(list2));
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(z2.a((String) it2.next()).getName());
        }
        Set F0 = L4.F0(arrayList);
        File[] listFiles = z2.a.listFiles();
        if (listFiles != null) {
            ArrayList arrayList2 = new ArrayList();
            for (File file2 : listFiles) {
                String name = file2.getName();
                AbstractC0348nb.q(name, "getName(...)");
                if (Si.P(name, "icon_") && !F0.contains(file2.getName())) {
                    arrayList2.add(file2);
                }
            }
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                ((File) it3.next()).delete();
            }
        }
        return C0486sm.a;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        C0485sl c0485sl = (C0485sl) a((S5) obj2, (InterfaceC0265k6) obj);
        C0486sm c0486sm = C0486sm.a;
        c0485sl.b(c0486sm);
        return c0486sm;
    }
}
