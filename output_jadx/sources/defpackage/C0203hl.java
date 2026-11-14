package defpackage;

import android.util.Log;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.omoda.launcher.data.AppInfo;
import com.omoda.launcher.data.RemoteApp;
import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* renamed from: hl, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0203hl extends Nb implements InterfaceC0192ha {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0203hl(TextView textView, TextView textView2, TextView textView3) {
        super(2);
        this.b = 0;
        Ki ki = Ki.a;
        this.c = textView;
        this.d = textView2;
        this.e = textView3;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        String concat;
        int i = 0;
        C0486sm c0486sm = C0486sm.a;
        Object obj3 = this.e;
        Object obj4 = this.d;
        Object obj5 = this.c;
        switch (this.b) {
            case 0:
                boolean booleanValue = ((Boolean) obj).booleanValue();
                String str = (String) obj2;
                AbstractC0348nb.r(str, "msg");
                Ki ki = Ki.a;
                TextView textView = (TextView) obj5;
                if (booleanValue) {
                    textView.setText(Ki.d().h);
                } else {
                    textView.setText(Ki.e().g.concat(str));
                    ((TextView) obj4).setVisibility(0);
                    ((TextView) obj3).setVisibility(0);
                }
                return c0486sm;
            case 1:
                boolean booleanValue2 = ((Boolean) obj).booleanValue();
                String str2 = (String) obj2;
                AbstractC0348nb.r(str2, "msg");
                LinearLayout linearLayout = (LinearLayout) obj4;
                TopOverlayAccessibilityService topOverlayAccessibilityService = (TopOverlayAccessibilityService) obj5;
                if (booleanValue2) {
                    try {
                        WindowManager windowManager = topOverlayAccessibilityService.a;
                        if (windowManager != null) {
                            windowManager.removeView(linearLayout);
                        }
                    } catch (Exception unused) {
                    }
                    TopOverlayAccessibilityService topOverlayAccessibilityService2 = TopOverlayAccessibilityService.n1;
                    topOverlayAccessibilityService.m();
                } else {
                    Log.w("TopOverlayA11y", "PackageInstaller uninstall failed (" + str2 + ") — fallback ACTION_DELETE");
                    try {
                        WindowManager windowManager2 = topOverlayAccessibilityService.a;
                        if (windowManager2 != null) {
                            windowManager2.removeView(linearLayout);
                        }
                    } catch (Exception unused2) {
                    }
                    TopOverlayAccessibilityService topOverlayAccessibilityService3 = TopOverlayAccessibilityService.n1;
                    topOverlayAccessibilityService.F();
                    topOverlayAccessibilityService.E();
                    topOverlayAccessibilityService.Q(((AppInfo) obj3).getPackageName());
                }
                return c0486sm;
            case 2:
                boolean booleanValue3 = ((Boolean) obj).booleanValue();
                String str3 = (String) obj2;
                AbstractC0348nb.r(str3, "msg");
                if (booleanValue3) {
                    Ki ki2 = Ki.a;
                    concat = Ki.e().f;
                } else {
                    Ki ki3 = Ki.a;
                    concat = Ki.e().g.concat(str3);
                }
                ((TextView) obj5).setText(concat);
                TopOverlayAccessibilityService topOverlayAccessibilityService4 = (TopOverlayAccessibilityService) obj4;
                topOverlayAccessibilityService4.w.postDelayed(new Kl(topOverlayAccessibilityService4, (LinearLayout) obj3, i), 1800L);
                return c0486sm;
            default:
                Boolean bool = (Boolean) obj;
                boolean booleanValue4 = bool.booleanValue();
                String str4 = (String) obj2;
                AbstractC0348nb.r(str4, "installMsg");
                if (booleanValue4) {
                    AbstractC0152fm.G((TopOverlayAccessibilityService) obj5, (RemoteApp) obj4);
                }
                ((C0203hl) obj3).e(bool, str4);
                return c0486sm;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0203hl(Object obj, Object obj2, Object obj3, int i) {
        super(2);
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
    }
}
