package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.provider.Settings;
import android.util.Log;
import com.omoda.launcher.LauncherApp;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Serializable;
import java.security.KeyStore;
import java.util.Iterator;
import java.util.NoSuchElementException;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class T7 implements InterfaceC0085d6, InterfaceC0093de, Kf {
    public static volatile boolean e = false;
    public static volatile boolean j = false;
    public static volatile int k = -1;
    public static C0021ak l;
    public static Xj m;
    public static Zj n;
    public static C0099dk o;
    public static Vj p;
    public static Yj q;
    public static Wj r;
    public static C0047bk s;
    public static C0073ck t;
    public static volatile boolean w;
    public static C0478se x;
    public static C0478se y;
    public static Object z;
    public final /* synthetic */ int a;
    public static final /* synthetic */ T7 b = new T7(1);
    public static final /* synthetic */ T7 c = new T7(2);
    public static final T7 d = new T7(3);
    public static final /* synthetic */ T7 f = new T7(4);
    public static final T7 g = new T7(5);
    public static final T7 h = new T7(6);
    public static final T7 i = new T7(7);
    public static final T7 u = new T7(8);
    public static final T7 v = new T7(9);
    public static final T7 A = new T7(10);
    public static final T7 B = new T7(11);

    public /* synthetic */ T7(int i2) {
        this.a = i2;
    }

    public static SSLContext a() {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustManagerFactory.init((KeyStore) null);
        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
        AbstractC0348nb.q(trustManagers, "getTrustManagers(...)");
        for (TrustManager trustManager : trustManagers) {
            if (trustManager instanceof X509TrustManager) {
                AbstractC0348nb.p(trustManager, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager");
                C0012ab c0012ab = new C0012ab((X509TrustManager) trustManager);
                SSLContext sSLContext = SSLContext.getInstance("TLS");
                sSLContext.init(null, new TrustManager[]{c0012ab}, null);
                return sSLContext;
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    public static T7 c(Context context, int i2) {
        AbstractC0145ff.d("Cannot create a CalendarItemStyle with a styleResId of 0", i2 != 0);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i2, Yf.m);
        Rect rect = new Rect(obtainStyledAttributes.getDimensionPixelOffset(0, 0), obtainStyledAttributes.getDimensionPixelOffset(2, 0), obtainStyledAttributes.getDimensionPixelOffset(1, 0), obtainStyledAttributes.getDimensionPixelOffset(3, 0));
        AbstractC0348nb.B(context, obtainStyledAttributes, 4);
        AbstractC0348nb.B(context, obtainStyledAttributes, 9);
        AbstractC0348nb.B(context, obtainStyledAttributes, 7);
        obtainStyledAttributes.getDimensionPixelSize(8, 0);
        Vh.a(context, obtainStyledAttributes.getResourceId(5, 0), obtainStyledAttributes.getResourceId(6, 0), new C0103e(0)).a();
        obtainStyledAttributes.recycle();
        T7 t7 = new T7(14);
        AbstractC0145ff.e(rect.left);
        AbstractC0145ff.e(rect.top);
        AbstractC0145ff.e(rect.right);
        AbstractC0145ff.e(rect.bottom);
        return t7;
    }

    public static Vj d() {
        Vj vj = p;
        if (vj != null) {
            return vj;
        }
        AbstractC0348nb.j0("button");
        throw null;
    }

    public static Wj e() {
        Wj wj = r;
        if (wj != null) {
            return wj;
        }
        AbstractC0348nb.j0("color");
        throw null;
    }

    public static C0047bk f() {
        C0047bk c0047bk = s;
        if (c0047bk != null) {
            return c0047bk;
        }
        AbstractC0348nb.j0("size");
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0045, code lost:
    
        if (java.lang.Character.isHighSurrogate(r5) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0082, code lost:
    
        if (java.lang.Character.isLowSurrogate(r5) != false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0075, code lost:
    
        if (r11 != false) goto L46;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean g(defpackage.C0164g8 r7, android.text.Editable r8, int r9, int r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.T7.g(g8, android.text.Editable, int, int, boolean):boolean");
    }

    public static void i(Context context, int i2) {
        String str = i2 != 0 ? i2 != 1 ? "themes/theme_1.json" : "themes/theme_2.json" : "themes/theme_3.json";
        try {
            InputStream open = context.getApplicationContext().getAssets().open(str);
            AbstractC0348nb.q(open, "open(...)");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(open, AbstractC0186h4.a), 8192);
            try {
                String m2 = AbstractC0554vf.m(bufferedReader);
                C6.c(bufferedReader, null);
                JSONObject jSONObject = new JSONObject(m2);
                JSONObject jSONObject2 = jSONObject.getJSONObject("nav");
                String string = jSONObject2.getString("bg");
                AbstractC0348nb.q(string, "getString(...)");
                l = new C0021ak(string, jSONObject2.getInt("btnOffsetX"));
                JSONObject jSONObject3 = jSONObject.getJSONObject("cover");
                String string2 = jSONObject3.getString("bg");
                AbstractC0348nb.q(string2, "getString(...)");
                String string3 = jSONObject3.getString("plain");
                AbstractC0348nb.q(string3, "getString(...)");
                m = new Xj(string2, string3);
                JSONObject jSONObject4 = jSONObject.getJSONObject("indicator");
                String string4 = jSONObject4.getString("normal");
                AbstractC0348nb.q(string4, "getString(...)");
                String string5 = jSONObject4.getString("selected");
                AbstractC0348nb.q(string5, "getString(...)");
                n = new Zj(string4, string5);
                JSONObject jSONObject5 = jSONObject.getJSONObject("toggle");
                String string6 = jSONObject5.getString("track");
                AbstractC0348nb.q(string6, "getString(...)");
                String string7 = jSONObject5.getString("thumb");
                AbstractC0348nb.q(string7, "getString(...)");
                o = new C0099dk(string6, string7);
                JSONObject jSONObject6 = jSONObject.getJSONObject("button");
                String string8 = jSONObject6.getString("primary");
                AbstractC0348nb.q(string8, "getString(...)");
                String string9 = jSONObject6.getString("short");
                AbstractC0348nb.q(string9, "getString(...)");
                String string10 = jSONObject6.getString("long");
                AbstractC0348nb.q(string10, "getString(...)");
                String string11 = jSONObject6.getString("arrow");
                AbstractC0348nb.q(string11, "getString(...)");
                p = new Vj(string8, string9, string10, string11, Color.parseColor(jSONObject6.getString("primaryFillColor")), Color.parseColor(jSONObject6.getString("primaryTextColor")), Color.parseColor(jSONObject6.getString("textColor")));
                JSONObject jSONObject7 = jSONObject.getJSONObject("dialog");
                String string12 = jSONObject7.getString("bg");
                AbstractC0348nb.q(string12, "getString(...)");
                String string13 = jSONObject7.getString("check");
                AbstractC0348nb.q(string13, "getString(...)");
                q = new Yj(string12, string13);
                JSONObject jSONObject8 = jSONObject.getJSONObject("color");
                AbstractC0348nb.o(jSONObject8);
                r = new Wj(Color.parseColor(jSONObject8.getString("icon")), Color.parseColor(jSONObject8.getString("iconDim")), Color.parseColor(jSONObject8.getString("iconAccent")), Color.parseColor(jSONObject8.getString("secondaryText")), Color.parseColor(jSONObject8.getString("toggleAccent")), Color.parseColor(jSONObject8.getString("appLabel")), Color.parseColor(jSONObject8.getString("textOnAccent")), Color.parseColor(jSONObject8.getString("accent")), Color.parseColor(jSONObject8.getString("accentDim")), Color.parseColor(jSONObject8.getString("error")), Color.parseColor(jSONObject8.getString("surface")), Color.parseColor(jSONObject8.getString("surfaceAlt")), Color.parseColor(jSONObject8.getString("divider")), Color.parseColor(jSONObject8.getString("scrim")), Color.parseColor(jSONObject8.getString("btnBorder")), Color.parseColor(jSONObject8.getString("btnBackground")), Color.parseColor(jSONObject8.getString("btnActiveLight")), Color.parseColor(jSONObject8.getString("btnActiveDim")));
                JSONObject jSONObject9 = jSONObject.getJSONObject("size");
                s = new C0047bk(jSONObject9.getInt("titleLarge"), jSONObject9.getInt("titleMedium"), jSONObject9.getInt("title"), jSONObject9.getInt("body"), jSONObject9.getInt("bodySmall"), jSONObject9.getInt("caption"), jSONObject9.getInt("clock"));
                JSONObject jSONObject10 = jSONObject.getJSONObject("statusBar");
                AbstractC0348nb.o(jSONObject10);
                t = new C0073ck(Color.parseColor(jSONObject10.getString("textColor")), Color.parseColor(jSONObject10.getString("plateColor")));
                k = i2;
                StringBuilder sb = new StringBuilder("Loaded ");
                sb.append(str);
                sb.append(" (firmware mode=");
                sb.append(i2);
                sb.append(", icon=#");
                sb.append(Integer.toHexString(e().a));
                sb.append(", bg=");
                C0021ak c0021ak = l;
                if (c0021ak == null) {
                    AbstractC0348nb.j0("nav");
                    throw null;
                }
                sb.append(c0021ak.a);
                sb.append(')');
                Log.i("ThemeConfig", sb.toString());
            } finally {
            }
        } catch (Exception e2) {
            Log.e("ThemeConfig", "Failed to load " + str + " — falling back to hardcoded design 1", e2);
            l = new C0021ak("theme_bg_1", 27);
            m = new Xj("cover_theme_1_bg", "cover_theme_1_plain");
            n = new Zj("indicator_theme_1_n", "indicator_theme_1_p");
            o = new C0099dk("toggle_base_track", "toggle_base_thumb");
            p = new Vj("btn_thd_primary", "btn_thd_short", "btn_thd_long", "arrow_thd", -8157543, -14737622, -1710614);
            q = new Yj("dialog_bg_thd", "dialog_check_thd");
            r = new Wj(-7434598, -5526598, -4868672, -7232824, -16650016, -1710614, -1, -10585400, -12033888, -38037, -266856416, -14013904, -13290176, -872415232, -12961211, -15066590, -1710614, -7434598);
            s = new C0047bk(36, 30, 36, 24, 22, 32, 48);
            t = new C0073ck(Integer.MAX_VALUE, -871098598);
            k = i2;
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.Map, java.lang.Object] */
    public static int k() {
        if (!w) {
            throw new IllegalStateException("UiConfig not initialized — call UiConfig.init(context) first");
        }
        ?? r0 = z;
        if (r0 == 0) {
            AbstractC0348nb.j0("presetVariants");
            throw null;
        }
        Iterator it = r0.values().iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        Ef ef = (Ef) it.next();
        AbstractC0348nb.r(ef, "sizes");
        int i2 = ef.g * 5;
        while (it.hasNext()) {
            Ef ef2 = (Ef) it.next();
            AbstractC0348nb.r(ef2, "sizes");
            int i3 = ef2.g * 5;
            if (i2 < i3) {
                i2 = i3;
            }
        }
        return i2;
    }

    private final void l() {
    }

    private final void m(int i2, Serializable serializable) {
    }

    @Override // defpackage.InterfaceC0093de
    public void b(Ld ld, boolean z2) {
    }

    public synchronized void h(LauncherApp launcherApp) {
        int i2;
        if (j) {
            return;
        }
        if (D3.b) {
            i2 = 2;
        } else {
            try {
                i2 = Settings.System.getInt(launcherApp.getContentResolver(), "com.citos.setting.theme.mode");
            } catch (Exception unused) {
                i2 = -1;
            }
        }
        i(launcherApp, i2);
        j = true;
    }

    @Override // defpackage.Kf
    public void j(int i2, Serializable serializable) {
        String str;
        switch (this.a) {
            case 28:
                return;
            default:
                switch (i2) {
                    case 1:
                        str = "RESULT_INSTALL_SUCCESS";
                        break;
                    case 2:
                        str = "RESULT_ALREADY_INSTALLED";
                        break;
                    case 3:
                        str = "RESULT_UNSUPPORTED_ART_VERSION";
                        break;
                    case 4:
                        str = "RESULT_NOT_WRITABLE";
                        break;
                    case 5:
                        str = "RESULT_DESIRED_FORMAT_UNSUPPORTED";
                        break;
                    case 6:
                        str = "RESULT_BASELINE_PROFILE_NOT_FOUND";
                        break;
                    case 7:
                        str = "RESULT_IO_EXCEPTION";
                        break;
                    case 8:
                        str = "RESULT_PARSE_EXCEPTION";
                        break;
                    case 9:
                    default:
                        str = "";
                        break;
                    case 10:
                        str = "RESULT_INSTALL_SKIP_FILE_SUCCESS";
                        break;
                    case 11:
                        str = "RESULT_DELETE_SKIP_FILE_SUCCESS";
                        break;
                }
                if (i2 == 6 || i2 == 7 || i2 == 8) {
                    Log.e("ProfileInstaller", str, (Throwable) serializable);
                    return;
                } else {
                    Log.d("ProfileInstaller", str);
                    return;
                }
        }
    }

    @Override // defpackage.Kf
    public void n() {
        switch (this.a) {
            case 28:
                return;
            default:
                Log.d("ProfileInstaller", "DIAGNOSTIC_PROFILE_IS_COMPRESSED");
                return;
        }
    }

    @Override // defpackage.InterfaceC0093de
    public boolean p(Ld ld) {
        return false;
    }

    public T7(J9 j9) {
        this.a = 21;
    }
}
