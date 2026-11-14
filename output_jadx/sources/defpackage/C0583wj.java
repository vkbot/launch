package defpackage;

import android.app.ActivityManager;
import android.util.Log;
import com.omoda.launcher.service.TopOverlayAccessibilityService;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

/* renamed from: wj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0583wj extends AbstractC0098dj implements InterfaceC0192ha {
    public final /* synthetic */ C0658zj e;
    public final /* synthetic */ ArrayList f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0583wj(C0658zj c0658zj, ArrayList arrayList, S5 s5) {
        super(s5);
        this.e = c0658zj;
        this.f = arrayList;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        return new C0583wj(this.e, this.f, s5);
    }

    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        String message;
        int i;
        AbstractC0171gf.v(obj);
        TopOverlayAccessibilityService topOverlayAccessibilityService = this.e.a;
        ArrayList arrayList = this.f;
        try {
            Object systemService = topOverlayAccessibilityService.getSystemService("activity");
            AbstractC0348nb.p(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) systemService).getRunningAppProcesses();
            if (runningAppProcesses == null) {
                runningAppProcesses = C0547v8.a;
            }
            Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
            while (true) {
                i = 0;
                if (!it.hasNext()) {
                    break;
                }
                ActivityManager.RunningAppProcessInfo next = it.next();
                String[] strArr = next.pkgList;
                if (strArr == null) {
                    strArr = new String[0];
                }
                ArrayList arrayList4 = new ArrayList();
                int length = strArr.length;
                while (i < length) {
                    String str = strArr[i];
                    if (arrayList.contains(str)) {
                        arrayList4.add(str);
                    }
                    i++;
                }
                if (!arrayList4.isEmpty()) {
                    arrayList2.add(Integer.valueOf(next.pid));
                    arrayList3.add(arrayList4);
                }
            }
            if (arrayList2.isEmpty()) {
                return C0572w8.a;
            }
            Object invoke = ActivityManager.class.getMethod("getService", null).invoke(null, null);
            Method method = invoke.getClass().getMethod("getProcessPss", int[].class);
            int[] iArr = new int[arrayList2.size()];
            Iterator it2 = arrayList2.iterator();
            int i2 = 0;
            while (it2.hasNext()) {
                iArr[i2] = ((Number) it2.next()).intValue();
                i2++;
            }
            Object invoke2 = method.invoke(invoke, iArr);
            AbstractC0348nb.p(invoke2, "null cannot be cast to non-null type kotlin.LongArray");
            long[] jArr = (long[]) invoke2;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            int size = arrayList2.size();
            while (i < size) {
                for (String str2 : (List) arrayList3.get(i)) {
                    Long l = (Long) linkedHashMap.get(str2);
                    linkedHashMap.put(str2, Long.valueOf((jArr[i] * 1024) + (l != null ? l.longValue() : 0L)));
                }
                i++;
            }
            return linkedHashMap;
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder("appPss failed: ");
            Throwable cause = e.getCause();
            if (cause == null || (message = cause.getMessage()) == null) {
                message = e.getMessage();
            }
            sb.append(message);
            Log.w("MemoryStats", sb.toString());
            return null;
        }
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        return ((C0583wj) a((S5) obj2, (InterfaceC0265k6) obj)).b(C0486sm.a);
    }
}
