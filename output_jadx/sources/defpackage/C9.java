package defpackage;

import android.util.Log;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes.dex */
public final class C9 {
    public final /* synthetic */ int a;
    public final /* synthetic */ J9 b;

    public /* synthetic */ C9(J9 j9, int i) {
        this.a = i;
        this.b = j9;
    }

    public final void a(Object obj) {
        switch (this.a) {
            case 0:
                C0514u0 c0514u0 = (C0514u0) obj;
                J9 j9 = this.b;
                G9 g9 = (G9) j9.w.pollFirst();
                if (g9 == null) {
                    Log.w("FragmentManager", "No IntentSenders were started for " + this);
                    return;
                }
                C0491t2 c0491t2 = j9.c;
                String str = g9.a;
                AbstractComponentCallbacksC0598x9 e = c0491t2.e(str);
                if (e != null) {
                    e.k(g9.b, c0514u0.a, c0514u0.b);
                    return;
                }
                Log.w("FragmentManager", "Intent Sender result delivered for unknown Fragment " + str);
                return;
            case 1:
                Map map = (Map) obj;
                ArrayList arrayList = new ArrayList(map.values());
                int[] iArr = new int[arrayList.size()];
                for (int i = 0; i < arrayList.size(); i++) {
                    iArr[i] = ((Boolean) arrayList.get(i)).booleanValue() ? 0 : -1;
                }
                J9 j92 = this.b;
                G9 g92 = (G9) j92.w.pollFirst();
                if (g92 == null) {
                    Log.w("FragmentManager", "No permissions were requested for " + this);
                    return;
                }
                C0491t2 c0491t22 = j92.c;
                String str2 = g92.a;
                if (c0491t22.e(str2) == null) {
                    Log.w("FragmentManager", "Permission request result delivered for unknown Fragment " + str2);
                    return;
                }
                return;
            default:
                C0514u0 c0514u02 = (C0514u0) obj;
                J9 j93 = this.b;
                G9 g93 = (G9) j93.w.pollFirst();
                if (g93 == null) {
                    Log.w("FragmentManager", "No Activities were started for result for " + this);
                    return;
                }
                C0491t2 c0491t23 = j93.c;
                String str3 = g93.a;
                AbstractComponentCallbacksC0598x9 e2 = c0491t23.e(str3);
                if (e2 != null) {
                    e2.k(g93.b, c0514u02.a, c0514u02.b);
                    return;
                }
                Log.w("FragmentManager", "Activity result delivered for unknown Fragment " + str3);
                return;
        }
    }
}
