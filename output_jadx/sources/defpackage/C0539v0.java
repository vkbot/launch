package defpackage;

import android.content.Intent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: v0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0539v0 extends C6 {
    public final /* synthetic */ int A;

    public /* synthetic */ C0539v0(int i) {
        this.A = i;
    }

    @Override // defpackage.C6
    public final Object C(int i, Intent intent) {
        switch (this.A) {
            case 0:
                C0572w8 c0572w8 = C0572w8.a;
                if (i != -1 || intent == null) {
                    return c0572w8;
                }
                String[] stringArrayExtra = intent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
                int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
                if (intArrayExtra == null || stringArrayExtra == null) {
                    return c0572w8;
                }
                ArrayList arrayList = new ArrayList(intArrayExtra.length);
                for (int i2 : intArrayExtra) {
                    arrayList.add(Boolean.valueOf(i2 == 0));
                }
                List W = Z2.W(stringArrayExtra);
                Iterator it = ((ArrayList) W).iterator();
                Iterator it2 = arrayList.iterator();
                ArrayList arrayList2 = new ArrayList(Math.min(N4.r0(W), N4.r0(arrayList)));
                while (it.hasNext() && it2.hasNext()) {
                    arrayList2.add(new C0016af(it.next(), it2.next()));
                }
                return AbstractC0221id.s0(arrayList2);
            case 1:
                return new C0514u0(i, intent);
            default:
                return new C0514u0(i, intent);
        }
    }
}
