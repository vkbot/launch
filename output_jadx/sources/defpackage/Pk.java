package defpackage;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.omoda.launcher.data.RemoteApp;
import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* loaded from: classes.dex */
public final /* synthetic */ class Pk implements View.OnClickListener {
    public final /* synthetic */ int a = 1;
    public final /* synthetic */ TextView b;
    public final /* synthetic */ TextView c;
    public final /* synthetic */ TopOverlayAccessibilityService d;
    public final /* synthetic */ Object e;
    public final /* synthetic */ Object f;

    public /* synthetic */ Pk(LinearLayout linearLayout, TextView textView, TextView textView2, RemoteApp remoteApp, TopOverlayAccessibilityService topOverlayAccessibilityService) {
        this.b = textView;
        this.c = textView2;
        this.d = topOverlayAccessibilityService;
        this.e = remoteApp;
        this.f = linearLayout;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Object obj = this.f;
        Object obj2 = this.e;
        switch (this.a) {
            case 0:
                TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
                TextView textView = this.b;
                TextView textView2 = this.c;
                TextView textView3 = (TextView) obj2;
                TopOverlayAccessibilityService topOverlayAccessibilityService2 = this.d;
                AbstractC0348nb.r(topOverlayAccessibilityService2, "this$0");
                textView.setVisibility(8);
                textView2.setVisibility(8);
                textView3.setVisibility(0);
                StringBuilder sb = new StringBuilder();
                Ki ki = Ki.a;
                sb.append(Ki.e().c);
                sb.append('0');
                sb.append(Ki.e().d);
                textView3.setText(sb.toString());
                AbstractC0348nb.M(topOverlayAccessibilityService2.x, AbstractC0546v7.b, new C0254jl(topOverlayAccessibilityService2, (S0) obj, textView3, textView2, textView, null), 2);
                return;
            default:
                TopOverlayAccessibilityService topOverlayAccessibilityService3 = TopOverlayAccessibilityService.n1;
                TextView textView4 = this.b;
                TextView textView5 = this.c;
                TopOverlayAccessibilityService topOverlayAccessibilityService4 = this.d;
                AbstractC0348nb.r(topOverlayAccessibilityService4, "this$0");
                RemoteApp remoteApp = (RemoteApp) obj2;
                AbstractC0348nb.r(remoteApp, "$app");
                textView4.setVisibility(8);
                textView5.setVisibility(0);
                StringBuilder sb2 = new StringBuilder();
                Ki ki2 = Ki.a;
                sb2.append(Ki.e().c);
                sb2.append('0');
                sb2.append(Ki.e().d);
                textView5.setText(sb2.toString());
                AbstractC0348nb.M(topOverlayAccessibilityService4.x, AbstractC0546v7.b, new Rl(topOverlayAccessibilityService4, remoteApp, textView5, textView4, (LinearLayout) obj, null), 2);
                return;
        }
    }

    public /* synthetic */ Pk(TextView textView, TextView textView2, TextView textView3, TopOverlayAccessibilityService topOverlayAccessibilityService, S0 s0) {
        this.b = textView;
        this.c = textView2;
        this.e = textView3;
        this.d = topOverlayAccessibilityService;
        this.f = s0;
    }
}
