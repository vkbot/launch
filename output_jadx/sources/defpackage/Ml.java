package defpackage;

import android.app.usage.StorageStats;
import android.app.usage.StorageStatsManager;
import android.os.Handler;
import android.os.Process;
import android.os.storage.StorageManager;
import android.util.Log;
import android.widget.TextView;
import com.omoda.launcher.data.AppInfo;
import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* loaded from: classes.dex */
public final class Ml extends AbstractC0098dj implements InterfaceC0192ha {
    public int e;
    public final /* synthetic */ TopOverlayAccessibilityService f;
    public final /* synthetic */ AppInfo g;
    public final /* synthetic */ TextView h;
    public final /* synthetic */ R2 i;
    public final /* synthetic */ TextView j;
    public final /* synthetic */ TextView k;
    public final /* synthetic */ TextView l;
    public final /* synthetic */ TextView m;
    public final /* synthetic */ TopOverlayAccessibilityService n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Ml(TopOverlayAccessibilityService topOverlayAccessibilityService, AppInfo appInfo, TextView textView, R2 r2, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TopOverlayAccessibilityService topOverlayAccessibilityService2, S5 s5) {
        super(s5);
        this.f = topOverlayAccessibilityService;
        this.g = appInfo;
        this.h = textView;
        this.i = r2;
        this.j = textView2;
        this.k = textView3;
        this.l = textView4;
        this.m = textView5;
        this.n = topOverlayAccessibilityService2;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        return new Ml(this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, s5);
    }

    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        M2 m2;
        EnumC0291l6 enumC0291l6 = EnumC0291l6.a;
        int i = this.e;
        if (i == 0) {
            AbstractC0171gf.v(obj);
            Handler handler = Q2.a;
            String packageName = this.g.getPackageName();
            TopOverlayAccessibilityService topOverlayAccessibilityService = this.f;
            AbstractC0348nb.r(topOverlayAccessibilityService, "context");
            AbstractC0348nb.r(packageName, "packageName");
            try {
                Object systemService = topOverlayAccessibilityService.getSystemService("storagestats");
                AbstractC0348nb.p(systemService, "null cannot be cast to non-null type android.app.usage.StorageStatsManager");
                StorageStats queryStatsForPackage = ((StorageStatsManager) systemService).queryStatsForPackage(StorageManager.UUID_DEFAULT, packageName, Process.myUserHandle());
                AbstractC0348nb.q(queryStatsForPackage, "queryStatsForPackage(...)");
                long appBytes = queryStatsForPackage.getAppBytes();
                long dataBytes = queryStatsForPackage.getDataBytes() - queryStatsForPackage.getCacheBytes();
                if (dataBytes < 0) {
                    dataBytes = 0;
                }
                m2 = new M2(appBytes, dataBytes, queryStatsForPackage.getCacheBytes());
            } catch (Exception e) {
                Log.w("AppStorage", "query(" + packageName + ") failed: " + e);
                m2 = null;
            }
            M2 m22 = m2;
            T6 t6 = AbstractC0546v7.a;
            Ca ca = AbstractC0066cd.a;
            Ll ll = new Ll(this.h, this.i, m22, this.j, this.k, this.l, this.m, this.f, this.n, null);
            this.e = 1;
            if (AbstractC0348nb.l0(ca, ll, this) == enumC0291l6) {
                return enumC0291l6;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            AbstractC0171gf.v(obj);
        }
        return C0486sm.a;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        return ((Ml) a((S5) obj2, (InterfaceC0265k6) obj)).b(C0486sm.a);
    }
}
