package defpackage;

import android.widget.LinearLayout;
import android.widget.TextView;
import com.omoda.launcher.data.RemoteApp;
import com.omoda.launcher.service.TopOverlayAccessibilityService;
import java.io.File;

/* loaded from: classes.dex */
public final class Ol extends Nb implements InterfaceC0192ha {
    public final /* synthetic */ int b = 0;
    public final /* synthetic */ TopOverlayAccessibilityService c;
    public final /* synthetic */ RemoteApp d;
    public final /* synthetic */ Object e;
    public final /* synthetic */ Object f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Ol(LinearLayout linearLayout, TextView textView, TextView textView2, RemoteApp remoteApp, TopOverlayAccessibilityService topOverlayAccessibilityService) {
        super(2);
        this.c = topOverlayAccessibilityService;
        this.d = remoteApp;
        this.e = textView;
        this.f = textView2;
        this.g = linearLayout;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        C0486sm c0486sm = C0486sm.a;
        Object obj3 = this.g;
        TopOverlayAccessibilityService topOverlayAccessibilityService = this.c;
        Object obj4 = this.e;
        Object obj5 = this.f;
        switch (this.b) {
            case 0:
                boolean booleanValue = ((Boolean) obj).booleanValue();
                String str = (String) obj2;
                AbstractC0348nb.r(str, "msg");
                TextView textView = (TextView) obj4;
                if (booleanValue) {
                    AbstractC0152fm.G(topOverlayAccessibilityService, this.d);
                    Ki ki = Ki.a;
                    textView.setText(Ki.e().f);
                    topOverlayAccessibilityService.w.postDelayed(new Kl(topOverlayAccessibilityService, (LinearLayout) obj3, 1), 2000L);
                } else {
                    Ki ki2 = Ki.a;
                    textView.setText(Ki.e().g.concat(str));
                    ((TextView) obj5).setVisibility(0);
                }
                return c0486sm;
            default:
                boolean booleanValue2 = ((Boolean) obj).booleanValue();
                String str2 = (String) obj2;
                AbstractC0348nb.r(str2, "msg");
                C0203hl c0203hl = (C0203hl) obj5;
                File file = (File) obj4;
                if (booleanValue2) {
                    AbstractC0348nb.M(topOverlayAccessibilityService.x, AbstractC0546v7.b, new Sl((TopOverlayAccessibilityService) obj3, file, this.d, c0203hl, null), 2);
                } else {
                    file.delete();
                    c0203hl.e(Boolean.FALSE, str2);
                }
                return c0486sm;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Ol(File file, C0203hl c0203hl, TopOverlayAccessibilityService topOverlayAccessibilityService, TopOverlayAccessibilityService topOverlayAccessibilityService2, RemoteApp remoteApp) {
        super(2);
        this.e = file;
        this.f = c0203hl;
        this.c = topOverlayAccessibilityService;
        this.g = topOverlayAccessibilityService2;
        this.d = remoteApp;
    }
}
