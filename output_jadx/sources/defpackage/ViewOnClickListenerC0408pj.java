package defpackage;

import android.content.SharedPreferences;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.omoda.launcher.data.AppInfo;
import com.omoda.launcher.service.TopOverlayAccessibilityService;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.NoSuchElementException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: pj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0408pj implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ ViewOnClickListenerC0408pj(TopOverlayAccessibilityService topOverlayAccessibilityService, InterfaceC0089da interfaceC0089da, String str) {
        this.a = 3;
        this.b = topOverlayAccessibilityService;
        this.c = (Nb) interfaceC0089da;
        this.d = str;
    }

    /* JADX WARN: Type inference failed for: r4v4, types: [Nb, da] */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        CharSequence charSequence;
        SharedPreferences.Editor edit;
        SharedPreferences.Editor putBoolean;
        Object obj = this.d;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (this.a) {
            case 0:
                C0434qj c0434qj = (C0434qj) obj3;
                AbstractC0348nb.r(c0434qj, "this$0");
                C0658zj c0658zj = (C0658zj) obj;
                AbstractC0348nb.r(c0658zj, "this$1");
                c0434qj.y.setEnabled(false);
                ((View) obj2).animate().translationY(-r4.getHeight()).alpha(0.0f).setDuration(220L).withEndAction(new D2(c0658zj, 3, c0434qj));
                return;
            case 1:
                TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
                TextView textView = (TextView) obj3;
                TopOverlayAccessibilityService topOverlayAccessibilityService2 = (TopOverlayAccessibilityService) obj2;
                AbstractC0348nb.r(topOverlayAccessibilityService2, "this$0");
                textView.setEnabled(false);
                Ki ki = Ki.a;
                textView.setText(Ki.c().g);
                AbstractC0348nb.M(topOverlayAccessibilityService2.x, AbstractC0546v7.b, new El(topOverlayAccessibilityService2, textView, (TextView) obj, null), 2);
                return;
            case 2:
                TopOverlayAccessibilityService topOverlayAccessibilityService3 = TopOverlayAccessibilityService.n1;
                TextView textView2 = (TextView) obj2;
                TopOverlayAccessibilityService topOverlayAccessibilityService4 = (TopOverlayAccessibilityService) obj;
                AbstractC0348nb.r(topOverlayAccessibilityService4, "this$0");
                String obj4 = Si.R(((EditText) obj3).getText().toString()).toString();
                if (obj4.length() == 0) {
                    Ki ki2 = Ki.a;
                    textView2.setText(Ki.a().e);
                    textView2.setVisibility(0);
                    return;
                }
                Sb.a.getClass();
                C6.r(6028911805142627968L);
                Locale locale = Locale.ROOT;
                String upperCase = obj4.toUpperCase(locale);
                AbstractC0348nb.q(upperCase, C6.r(6028911783667791488L));
                String obj5 = Si.R(Si.N(upperCase, C6.r(6028911710653347456L), C6.r(6028911702063412864L))).toString();
                String str = Sb.d;
                AbstractC0348nb.r(str, C6.r(6028911109357926016L));
                Mac mac = Mac.getInstance(C6.r(6028911096473024128L));
                Charset charset = AbstractC0186h4.a;
                byte[] bytes = Sb.b.getBytes(charset);
                AbstractC0348nb.q(bytes, C6.r(6028911049228383872L));
                mac.init(new SecretKeySpec(bytes, C6.r(6028910989098841728L)));
                String upperCase2 = str.toUpperCase(locale);
                AbstractC0348nb.q(upperCase2, C6.r(6028910941854201472L));
                byte[] bytes2 = Si.R(upperCase2).toString().getBytes(charset);
                AbstractC0348nb.q(bytes2, C6.r(6028910868839757440L));
                byte[] doFinal = mac.doFinal(bytes2);
                AbstractC0152fm.f(36);
                String l = Long.toString(((doFinal[0] & 255) << 24) | ((doFinal[1] & 255) << 16) | ((doFinal[2] & 255) << 8) | (255 & doFinal[3]), 36);
                AbstractC0348nb.q(l, C6.r(6028910808710215296L));
                String upperCase3 = l.toUpperCase(locale);
                AbstractC0348nb.q(upperCase3, C6.r(6028910748580673152L));
                if (6 <= upperCase3.length()) {
                    charSequence = upperCase3.subSequence(0, upperCase3.length());
                } else {
                    StringBuilder sb = new StringBuilder(6);
                    int i = new AbstractC0270kb(1, 6 - upperCase3.length(), 1).b;
                    boolean z = 1 <= i;
                    int i2 = z ? 1 : i;
                    while (z) {
                        if (i2 != i) {
                            i2++;
                        } else {
                            if (!z) {
                                throw new NoSuchElementException();
                            }
                            z = false;
                        }
                        sb.append('0');
                    }
                    sb.append((CharSequence) upperCase3);
                    charSequence = sb;
                }
                String obj6 = charSequence.toString();
                AbstractC0348nb.r(obj6, "<this>");
                int length = obj6.length();
                if (6 <= length) {
                    length = 6;
                }
                String substring = obj6.substring(0, length);
                AbstractC0348nb.q(substring, "substring(...)");
                StringBuilder sb2 = new StringBuilder();
                String substring2 = substring.substring(0, 3);
                AbstractC0348nb.q(substring2, C6.r(6028910675566229120L));
                sb2.append(substring2);
                sb2.append('-');
                String substring3 = substring.substring(3, 6);
                AbstractC0348nb.q(substring3, C6.r(6028910611141719680L));
                sb2.append(substring3);
                if (!AbstractC0348nb.g(obj5, Si.N(sb2.toString(), C6.r(6028911697768445568L), C6.r(6028911689178510976L)))) {
                    Log.d(C6.r(6028911483020080768L), C6.r(6028911418595571328L));
                    Ki ki3 = Ki.a;
                    textView2.setText(Ki.a().d);
                    textView2.setVisibility(0);
                    return;
                }
                SharedPreferences sharedPreferences = Sb.c;
                if (sharedPreferences != null && (edit = sharedPreferences.edit()) != null && (putBoolean = edit.putBoolean(C6.r(6028911684883543680L), true)) != null) {
                    putBoolean.apply();
                }
                Log.d(C6.r(6028911641933870720L), C6.r(6028911577509361280L));
                topOverlayAccessibilityService4.D();
                return;
            case 3:
                TopOverlayAccessibilityService topOverlayAccessibilityService5 = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService6 = (TopOverlayAccessibilityService) obj3;
                AbstractC0348nb.r(topOverlayAccessibilityService6, "this$0");
                String str2 = (String) obj;
                AbstractC0348nb.r(str2, "$key");
                topOverlayAccessibilityService6.s();
                ((Nb) obj2).h(str2);
                return;
            case 4:
                TopOverlayAccessibilityService topOverlayAccessibilityService7 = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService8 = (TopOverlayAccessibilityService) obj3;
                AbstractC0348nb.r(topOverlayAccessibilityService8, "this$0");
                LinearLayout linearLayout = (LinearLayout) obj2;
                AppInfo appInfo = (AppInfo) obj;
                AbstractC0348nb.r(appInfo, "$app");
                try {
                    WindowManager windowManager = topOverlayAccessibilityService8.a;
                    if (windowManager != null) {
                        windowManager.removeView(linearLayout);
                    }
                } catch (Exception unused) {
                }
                topOverlayAccessibilityService8.b0(appInfo, true);
                return;
            default:
                S9 s9 = (S9) obj3;
                AbstractC0348nb.r(s9, "$abandon");
                TopOverlayAccessibilityService topOverlayAccessibilityService9 = (TopOverlayAccessibilityService) obj2;
                AbstractC0348nb.r(topOverlayAccessibilityService9, "this$0");
                LinearLayout linearLayout2 = (LinearLayout) obj;
                AbstractC0348nb.r(linearLayout2, "$container");
                s9.d();
                try {
                    WindowManager windowManager2 = topOverlayAccessibilityService9.a;
                    if (windowManager2 != null) {
                        windowManager2.removeView(linearLayout2);
                    }
                } catch (Exception unused2) {
                }
                topOverlayAccessibilityService9.m();
                return;
        }
    }

    public /* synthetic */ ViewOnClickListenerC0408pj(Object obj, Object obj2, Object obj3, int i) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }
}
