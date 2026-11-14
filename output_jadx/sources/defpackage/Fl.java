package defpackage;

import android.widget.TextView;
import com.omoda.launcher.data.AppInfo;
import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* loaded from: classes.dex */
public final class Fl extends Nb implements InterfaceC0089da {
    public final /* synthetic */ TextView b;
    public final /* synthetic */ R2 c;
    public final /* synthetic */ TextView d;
    public final /* synthetic */ TextView e;
    public final /* synthetic */ TextView f;
    public final /* synthetic */ TextView g;
    public final /* synthetic */ TopOverlayAccessibilityService h;
    public final /* synthetic */ TopOverlayAccessibilityService i;
    public final /* synthetic */ AppInfo j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Fl(R2 r2, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, AppInfo appInfo, TopOverlayAccessibilityService topOverlayAccessibilityService, TopOverlayAccessibilityService topOverlayAccessibilityService2) {
        super(1);
        this.b = textView;
        this.c = r2;
        this.d = textView2;
        this.e = textView3;
        this.f = textView4;
        this.g = textView5;
        this.h = topOverlayAccessibilityService;
        this.i = topOverlayAccessibilityService2;
        this.j = appInfo;
    }

    @Override // defpackage.InterfaceC0089da
    public final Object h(Object obj) {
        ((Boolean) obj).getClass();
        TextView textView = this.b;
        TopOverlayAccessibilityService.g0(this.c, textView, this.d, this.e, this.f, this.g, this.j, this.h, this.i);
        return C0486sm.a;
    }
}
