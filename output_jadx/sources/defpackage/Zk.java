package defpackage;

import android.graphics.drawable.GradientDrawable;
import android.util.Log;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* loaded from: classes.dex */
public final class Zk extends AbstractC0098dj implements InterfaceC0192ha {
    public final /* synthetic */ TextView e;
    public final /* synthetic */ CharSequence f;
    public final /* synthetic */ TopOverlayAccessibilityService g;
    public final /* synthetic */ S0 h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Zk(TextView textView, CharSequence charSequence, TopOverlayAccessibilityService topOverlayAccessibilityService, S0 s0, S5 s5) {
        super(s5);
        this.e = textView;
        this.f = charSequence;
        this.g = topOverlayAccessibilityService;
        this.h = s0;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        return new Zk(this.e, this.f, this.g, this.h, s5);
    }

    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        String str;
        AbstractC0171gf.v(obj);
        TextView textView = this.e;
        if (textView != null) {
            textView.setText(this.f);
        }
        if (textView != null) {
            textView.setEnabled(true);
        }
        TopOverlayAccessibilityService topOverlayAccessibilityService = this.g;
        if (topOverlayAccessibilityService.Y0 == null) {
            try {
                float f = topOverlayAccessibilityService.getResources().getDisplayMetrics().density;
                Ki ki = Ki.a;
                Ob d = Ki.d();
                int i = 0;
                try {
                    str = topOverlayAccessibilityService.getPackageManager().getPackageInfo(topOverlayAccessibilityService.getPackageName(), 0).versionName;
                } catch (Exception unused) {
                    str = "?";
                }
                LinearLayout linearLayout = new LinearLayout(topOverlayAccessibilityService);
                linearLayout.setOrientation(1);
                Yj yj = T7.q;
                if (yj == null) {
                    AbstractC0348nb.j0("dialog");
                    throw null;
                }
                linearLayout.setBackgroundResource(yj.a(topOverlayAccessibilityService));
                int i2 = (int) (32 * f);
                int i3 = (int) (24 * f);
                linearLayout.setPadding(i2, i3, i2, i3);
                TextView textView2 = new TextView(topOverlayAccessibilityService);
                textView2.setText(d.a);
                textView2.setTextSize(36.0f);
                textView2.setTextColor(T7.e().f);
                textView2.setGravity(17);
                linearLayout.addView(textView2, new LinearLayout.LayoutParams(-1, -2));
                TextView textView3 = new TextView(topOverlayAccessibilityService);
                textView3.setText(d.c + str);
                textView3.setTextSize((float) T7.f().d);
                textView3.setTextColor(T7.e().b);
                textView3.setGravity(17);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                int i4 = (int) (16 * f);
                layoutParams.topMargin = i4;
                linearLayout.addView(textView3, layoutParams);
                TextView textView4 = new TextView(topOverlayAccessibilityService);
                S0 s0 = this.h;
                textView4.setText(s0 != null ? d.b.concat(s0.a) : d.e);
                textView4.setTextSize(T7.f().d);
                textView4.setTextColor(s0 != null ? T7.e().c : T7.e().j);
                textView4.setGravity(17);
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
                layoutParams2.topMargin = (int) (4 * f);
                linearLayout.addView(textView4, layoutParams2);
                if (s0 != null) {
                    String str2 = s0.e;
                    if (!Si.M(str2)) {
                        TextView textView5 = new TextView(topOverlayAccessibilityService);
                        Ki ki2 = Ki.a;
                        textView5.setText(Ki.d().i);
                        textView5.setTextSize(T7.f().f);
                        textView5.setTextColor(T7.e().b);
                        textView5.setGravity(8388611);
                        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
                        layoutParams3.topMargin = (int) (20 * f);
                        linearLayout.addView(textView5, layoutParams3);
                        ScrollView scrollView = new ScrollView(topOverlayAccessibilityService);
                        GradientDrawable gradientDrawable = new GradientDrawable();
                        gradientDrawable.setColor(T7.e().l);
                        gradientDrawable.setCornerRadius(8 * f);
                        gradientDrawable.setStroke((int) (1 * f), T7.e().m);
                        scrollView.setBackground(gradientDrawable);
                        int i5 = (int) (12 * f);
                        scrollView.setPadding(i4, i5, i4, i5);
                        scrollView.setVerticalScrollBarEnabled(true);
                        TextView textView6 = new TextView(topOverlayAccessibilityService);
                        textView6.setText(str2);
                        textView6.setTextSize(T7.f().e);
                        textView6.setTextColor(T7.e().c);
                        textView6.setGravity(8388611);
                        textView6.setLineSpacing(4.0f, 1.1f);
                        scrollView.addView(textView6);
                        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, 0);
                        layoutParams4.topMargin = (int) (6 * f);
                        layoutParams4.weight = 0.0f;
                        int i6 = (int) (180 * f);
                        int i7 = topOverlayAccessibilityService.getResources().getDisplayMetrics().heightPixels / 3;
                        if (i6 > i7) {
                            i6 = i7;
                        }
                        layoutParams4.height = i6;
                        linearLayout.addView(scrollView, layoutParams4);
                    }
                }
                if (s0 != null) {
                    String str3 = s0.d;
                    if (!Si.M(str3)) {
                        TextView textView7 = new TextView(topOverlayAccessibilityService);
                        Ki ki3 = Ki.a;
                        textView7.setText(Ki.e().a.concat(str3));
                        textView7.setTextSize(T7.f().e);
                        textView7.setTextColor(T7.e().a);
                        textView7.setGravity(17);
                        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
                        layoutParams5.topMargin = (int) (12 * f);
                        linearLayout.addView(textView7, layoutParams5);
                    }
                }
                LinearLayout linearLayout2 = new LinearLayout(topOverlayAccessibilityService);
                linearLayout2.setOrientation(0);
                linearLayout2.setGravity(17);
                int i8 = (int) (220 * f);
                int i9 = (int) (64 * f);
                TextView textView8 = new TextView(topOverlayAccessibilityService);
                Ki ki4 = Ki.a;
                textView8.setText(Ki.c().e);
                textView8.setTextSize(T7.f().e);
                textView8.setTextColor(T7.d().f);
                textView8.setGravity(17);
                textView8.setBackground(textView8.getResources().getDrawable(T7.d().b(topOverlayAccessibilityService), null));
                if (s0 == null) {
                    i = 8;
                }
                textView8.setVisibility(i);
                if (s0 != null) {
                    LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(i8, i9);
                    layoutParams6.setMarginEnd((int) (12 * f));
                    linearLayout2.addView(textView8, layoutParams6);
                }
                TextView textView9 = new TextView(topOverlayAccessibilityService);
                textView9.setText(Ki.c().a);
                textView9.setTextSize(T7.f().e);
                textView9.setTextColor(T7.d().g);
                textView9.setGravity(17);
                textView9.setBackground(textView9.getResources().getDrawable(T7.d().c(topOverlayAccessibilityService), null));
                linearLayout2.addView(textView9, new LinearLayout.LayoutParams(i8, i9));
                LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(-1, -2);
                layoutParams7.topMargin = i3;
                linearLayout.addView(linearLayout2, layoutParams7);
                TextView textView10 = new TextView(topOverlayAccessibilityService);
                textView10.setText("");
                textView10.setTextSize(T7.f().c);
                textView10.setTextColor(T7.e().b);
                textView10.setGravity(17);
                textView10.setVisibility(8);
                LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(-1, -2);
                layoutParams8.topMargin = (int) (12 * f);
                linearLayout.addView(textView10, layoutParams8);
                WindowManager.LayoutParams layoutParams9 = new WindowManager.LayoutParams();
                layoutParams9.type = 2032;
                layoutParams9.flags = 256;
                layoutParams9.format = -3;
                layoutParams9.width = (int) (700 * f);
                layoutParams9.height = -2;
                layoutParams9.gravity = 17;
                WindowManager windowManager = topOverlayAccessibilityService.a;
                if (windowManager != null) {
                    windowManager.addView(linearLayout, layoutParams9);
                }
                topOverlayAccessibilityService.Y0 = linearLayout;
                textView9.setOnClickListener(new Fk(21, topOverlayAccessibilityService));
                if (s0 != null) {
                    textView8.setOnClickListener(new Pk(textView9, textView8, textView10, topOverlayAccessibilityService, s0));
                }
            } catch (Exception e) {
                Log.e("TopOverlayA11y", "showLauncherUpdateDialog failed", e);
            }
        }
        return C0486sm.a;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        Zk zk = (Zk) a((S5) obj2, (InterfaceC0265k6) obj);
        C0486sm c0486sm = C0486sm.a;
        zk.b(c0486sm);
        return c0486sm;
    }
}
