package defpackage;

import com.omoda.launcher.data.AppInfo;
import java.util.Comparator;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public final class Ha implements Comparator {
    public final /* synthetic */ int a;
    public final /* synthetic */ LinkedHashMap b;

    public /* synthetic */ Ha(LinkedHashMap linkedHashMap, int i) {
        this.a = i;
        this.b = linkedHashMap;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                String key = ((AppInfo) obj).getKey();
                LinkedHashMap linkedHashMap = this.b;
                return AbstractC0152fm.g((Integer) AbstractC0221id.o0(linkedHashMap, key), (Integer) AbstractC0221id.o0(linkedHashMap, ((AppInfo) obj2).getKey()));
            default:
                String key2 = ((AppInfo) obj).getKey();
                LinkedHashMap linkedHashMap2 = this.b;
                return AbstractC0152fm.g((Integer) AbstractC0221id.o0(linkedHashMap2, key2), (Integer) AbstractC0221id.o0(linkedHashMap2, ((AppInfo) obj2).getKey()));
        }
    }
}
