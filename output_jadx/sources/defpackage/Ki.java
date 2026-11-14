package defpackage;

import android.util.Log;
import com.omoda.launcher.LauncherApp;
import com.omoda.launcher.data.PrefsAppOrderStore;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.LinkedHashMap;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class Ki {
    public static final Ki a = new Object();
    public static final List b = M4.p0("en", "tr", "pt", "fr", "ru", "kk", "ms", "es", "zh");
    public static final Object c = AbstractC0221id.r0(new C0016af("ru", "Русский"), new C0016af("en", "English"), new C0016af("tr", "Türkçe"), new C0016af("pt", "Português"), new C0016af("fr", "Français"), new C0016af("kk", "Қазақ"), new C0016af("ms", "Bahasa Melayu"), new C0016af("es", "Español"), new C0016af("zh", "中文"));
    public static X4 d;
    public static A2 e;
    public static C0299le f;
    public static Sh g;
    public static Df h;
    public static C0082d3 i;
    public static C0369o6 j;
    public static C0437qm k;
    public static C0415q0 l;
    public static Og m;
    public static C0461rm n;
    public static R2 o;
    public static Ob p;
    public static C0513u q;
    public static Hi r;
    public static Aj s;

    public static C0415q0 a() {
        C0415q0 c0415q0 = l;
        if (c0415q0 != null) {
            return c0415q0;
        }
        AbstractC0348nb.j0("activation");
        throw null;
    }

    public static R2 b() {
        R2 r2 = o;
        if (r2 != null) {
            return r2;
        }
        AbstractC0348nb.j0("appStorage");
        throw null;
    }

    public static X4 c() {
        X4 x4 = d;
        if (x4 != null) {
            return x4;
        }
        AbstractC0348nb.j0("common");
        throw null;
    }

    public static Ob d() {
        Ob ob = p;
        if (ob != null) {
            return ob;
        }
        AbstractC0348nb.j0("launcherUpdate");
        throw null;
    }

    public static Og e() {
        Og og = m;
        if (og != null) {
            return og;
        }
        AbstractC0348nb.j0("remoteApp");
        throw null;
    }

    public static Sh f() {
        Sh sh = g;
        if (sh != null) {
            return sh;
        }
        AbstractC0348nb.j0("settings");
        throw null;
    }

    public static Aj g() {
        Aj aj = s;
        if (aj != null) {
            return aj;
        }
        AbstractC0348nb.j0("taskManager");
        throw null;
    }

    public static void h(LauncherApp launcherApp, String str) {
        BufferedReader bufferedReader;
        if (!b.contains(str)) {
            str = "en";
        }
        try {
            InputStream open = launcherApp.getApplicationContext().getAssets().open("lang/" + str + ".json");
            AbstractC0348nb.q(open, "open(...)");
            bufferedReader = new BufferedReader(new InputStreamReader(open, AbstractC0186h4.a), 8192);
            try {
                String m2 = AbstractC0554vf.m(bufferedReader);
                C6.c(bufferedReader, null);
                i(new JSONObject(m2));
                Log.i("Strings", "Loaded language: ".concat(str));
            } finally {
            }
        } catch (Exception e2) {
            Log.e("Strings", "Failed to load lang/" + str + ".json — falling back to en", e2);
            if (str.equals("en")) {
                throw e2;
            }
            InputStream open2 = launcherApp.getApplicationContext().getAssets().open("lang/en.json");
            AbstractC0348nb.q(open2, "open(...)");
            bufferedReader = new BufferedReader(new InputStreamReader(open2, AbstractC0186h4.a), 8192);
            try {
                String m3 = AbstractC0554vf.m(bufferedReader);
                C6.c(bufferedReader, null);
                i(new JSONObject(m3));
            } catch (Throwable th) {
                try {
                    throw th;
                } finally {
                }
            }
        }
    }

    public static void i(JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject.getJSONObject("common");
        String string = jSONObject2.getString("cancel");
        String j2 = AbstractC0407pi.j(string, "getString(...)", jSONObject2, "yes", "getString(...)");
        String string2 = jSONObject2.getString("ok");
        String j3 = AbstractC0407pi.j(string2, "getString(...)", jSONObject2, "delete", "getString(...)");
        String string3 = jSONObject2.getString("install");
        String j4 = AbstractC0407pi.j(string3, "getString(...)", jSONObject2, "update", "getString(...)");
        String string4 = jSONObject2.getString("loading");
        AbstractC0348nb.q(string4, "getString(...)");
        d = new X4(string, j2, string2, j3, string3, j4, string4);
        JSONObject jSONObject3 = jSONObject.getJSONObject("appList");
        String string5 = jSONObject3.getString("title");
        String j5 = AbstractC0407pi.j(string5, "getString(...)", jSONObject3, "deleteHint", "getString(...)");
        String string6 = jSONObject3.getString("reorderHint");
        AbstractC0348nb.q(string6, "getString(...)");
        e = new A2(string5, j5, string6);
        AbstractC0348nb.q(jSONObject.getJSONObject("presetBar").getString("add"), "getString(...)");
        JSONObject jSONObject4 = jSONObject.getJSONObject("modeSelector");
        String string7 = jSONObject4.getString("fullscreen");
        f = new C0299le(string7, AbstractC0407pi.j(string7, "getString(...)", jSONObject4, "split", "getString(...)"));
        JSONObject jSONObject5 = jSONObject.getJSONObject("settings");
        String string8 = jSONObject5.getString("title");
        String j6 = AbstractC0407pi.j(string8, "getString(...)", jSONObject5, "unifiedLauncher", "getString(...)");
        String string9 = jSONObject5.getString("unifiedLauncherDesc");
        String j7 = AbstractC0407pi.j(string9, "getString(...)", jSONObject5, "presetSize", "getString(...)");
        String string10 = jSONObject5.getString("presetSizeDesc");
        String j8 = AbstractC0407pi.j(string10, "getString(...)", jSONObject5, "covers", "getString(...)");
        String string11 = jSONObject5.getString("coversDesc");
        String j9 = AbstractC0407pi.j(string11, "getString(...)", jSONObject5, "hideBack", "getString(...)");
        String string12 = jSONObject5.getString("hideBackDesc");
        String j10 = AbstractC0407pi.j(string12, "getString(...)", jSONObject5, "sportKey", "getString(...)");
        String string13 = jSONObject5.getString("sportKeyDesc");
        String j11 = AbstractC0407pi.j(string13, "getString(...)", jSONObject5, "autostart", "getString(...)");
        String string14 = jSONObject5.getString("autostartDesc");
        String j12 = AbstractC0407pi.j(string14, "getString(...)", jSONObject5, "timeZone", "getString(...)");
        String string15 = jSONObject5.getString("clockHourSuffix");
        String j13 = AbstractC0407pi.j(string15, "getString(...)", jSONObject5, "language", "getString(...)");
        String string16 = jSONObject5.getString("languageDesc");
        String j14 = AbstractC0407pi.j(string16, "getString(...)", jSONObject5, "updateLauncher", "getString(...)");
        String string17 = jSONObject5.getString("updateLauncherDesc");
        g = new Sh(string8, j6, string9, j7, string10, j8, string11, j9, string12, j10, string13, j11, string14, j12, string15, j13, string16, j14, string17, AbstractC0407pi.j(string17, "getString(...)", jSONObject5, "checkButton", "getString(...)"));
        JSONObject jSONObject6 = jSONObject.getJSONObject("presetSize");
        String string18 = jSONObject6.getString("small");
        String j15 = AbstractC0407pi.j(string18, "getString(...)", jSONObject6, "medium", "getString(...)");
        String string19 = jSONObject6.getString("large");
        AbstractC0348nb.q(string19, "getString(...)");
        h = new Df(string18, j15, string19);
        JSONObject jSONObject7 = jSONObject.getJSONObject("autostart");
        String string20 = jSONObject7.getString("last");
        String j16 = AbstractC0407pi.j(string20, "getString(...)", jSONObject7, "presets", "getString(...)");
        String string21 = jSONObject7.getString("nothing");
        String j17 = AbstractC0407pi.j(string21, "getString(...)", jSONObject7, "apps", "getString(...)");
        String string22 = jSONObject7.getString("navi");
        AbstractC0348nb.q(string22, "getString(...)");
        i = new C0082d3(string20, j16, string21, j17, string22);
        JSONObject jSONObject8 = jSONObject.getJSONObject("coversMode");
        String string23 = jSONObject8.getString("withBg");
        String j18 = AbstractC0407pi.j(string23, "getString(...)", jSONObject8, "noBg", "getString(...)");
        String string24 = jSONObject8.getString("black");
        AbstractC0348nb.q(string24, "getString(...)");
        j = new C0369o6(string23, j18, string24);
        JSONObject jSONObject9 = jSONObject.getJSONObject("unifiedMode");
        String string25 = jSONObject9.getString("off");
        String j19 = AbstractC0407pi.j(string25, "getString(...)", jSONObject9, "on", "getString(...)");
        String string26 = jSONObject9.getString("androidAuto");
        String j20 = AbstractC0407pi.j(string26, "getString(...)", jSONObject9, "carPlay", "getString(...)");
        String string27 = jSONObject9.getString("both");
        AbstractC0348nb.q(string27, "getString(...)");
        k = new C0437qm(string25, j19, string26, j20, string27);
        JSONObject jSONObject10 = jSONObject.getJSONObject("activation");
        String string28 = jSONObject10.getString("title");
        String j21 = AbstractC0407pi.j(string28, "getString(...)", jSONObject10, "deviceId", "getString(...)");
        String string29 = jSONObject10.getString("enterCode");
        String j22 = AbstractC0407pi.j(string29, "getString(...)", jSONObject10, "wrongCode", "getString(...)");
        String string30 = jSONObject10.getString("emptyCode");
        String j23 = AbstractC0407pi.j(string30, "getString(...)", jSONObject10, "site", "getString(...)");
        String string31 = jSONObject10.getString("later");
        String j24 = AbstractC0407pi.j(string31, "getString(...)", jSONObject10, "laterRemaining", "getString(...)");
        String string32 = jSONObject10.getString("launchOne");
        String j25 = AbstractC0407pi.j(string32, "getString(...)", jSONObject10, "launchFew", "getString(...)");
        String string33 = jSONObject10.getString("launchMany");
        String j26 = AbstractC0407pi.j(string33, "getString(...)", jSONObject10, "activate", "getString(...)");
        String string34 = jSONObject10.getString("delete");
        String j27 = AbstractC0407pi.j(string34, "getString(...)", jSONObject10, "activateOnline", "getString(...)");
        String string35 = jSONObject10.getString("onlineFailed");
        AbstractC0348nb.q(string35, "getString(...)");
        l = new C0415q0(string28, j21, string29, j22, string30, j23, string31, j24, string32, j25, string33, j26, string34, j27, string35);
        JSONObject jSONObject11 = jSONObject.getJSONObject("remoteApp");
        String string36 = jSONObject11.getString("size");
        String j28 = AbstractC0407pi.j(string36, "getString(...)", jSONObject11, "description", "getString(...)");
        String string37 = jSONObject11.getString("downloading");
        String j29 = AbstractC0407pi.j(string37, "getString(...)", jSONObject11, "downloadingPercent", "getString(...)");
        String string38 = jSONObject11.getString("installing");
        String j30 = AbstractC0407pi.j(string38, "getString(...)", jSONObject11, PrefsAppOrderStore.KEY_ORDER, "getString(...)");
        String string39 = jSONObject11.getString("error");
        String j31 = AbstractC0407pi.j(string39, "getString(...)", jSONObject11, "downloadError", "getString(...)");
        String string40 = jSONObject11.getString("networkError");
        AbstractC0348nb.q(string40, "getString(...)");
        m = new Og(string36, j28, string37, j29, string38, j30, string39, j31, string40);
        JSONObject jSONObject12 = jSONObject.getJSONObject("uninstall");
        String string41 = jSONObject12.getString("confirmTitle");
        String j32 = AbstractC0407pi.j(string41, "getString(...)", jSONObject12, "uninstalled", "getString(...)");
        String string42 = jSONObject12.getString("replaceConfirm");
        AbstractC0348nb.q(string42, "getString(...)");
        n = new C0461rm(string41, j32, string42);
        JSONObject jSONObject13 = jSONObject.getJSONObject("appStorage");
        String string43 = jSONObject13.getString("onDisk");
        String j33 = AbstractC0407pi.j(string43, "getString(...)", jSONObject13, "cache", "getString(...)");
        String string44 = jSONObject13.getString("data");
        String j34 = AbstractC0407pi.j(string44, "getString(...)", jSONObject13, "clear", "getString(...)");
        String string45 = jSONObject13.getString("clearDataConfirm");
        AbstractC0348nb.q(string45, "getString(...)");
        o = new R2(string43, j33, string44, j34, string45);
        JSONObject jSONObject14 = jSONObject.getJSONObject("launcherUpdate");
        String string46 = jSONObject14.getString("title");
        String j35 = AbstractC0407pi.j(string46, "getString(...)", jSONObject14, "latestVersion", "getString(...)");
        String string47 = jSONObject14.getString("currentVersion");
        String j36 = AbstractC0407pi.j(string47, "getString(...)", jSONObject14, "checking", "getString(...)");
        String string48 = jSONObject14.getString("noUpdate");
        String j37 = AbstractC0407pi.j(string48, "getString(...)", jSONObject14, "downloadFailed", "getString(...)");
        String string49 = jSONObject14.getString("installing");
        String j38 = AbstractC0407pi.j(string49, "getString(...)", jSONObject14, "installSuccess", "getString(...)");
        String string50 = jSONObject14.getString("changes");
        AbstractC0348nb.q(string50, "getString(...)");
        p = new Ob(string46, j35, string47, j36, string48, j37, string49, j38, string50);
        JSONObject jSONObject15 = jSONObject.getJSONObject("accessibilityError");
        String string51 = jSONObject15.getString("title");
        String j39 = AbstractC0407pi.j(string51, "getString(...)", jSONObject15, "reasonNotInstalled", "getString(...)");
        String string52 = jSONObject15.getString("reasonNotEnabled");
        String j40 = AbstractC0407pi.j(string52, "getString(...)", jSONObject15, "reasonNotBinding", "getString(...)");
        String string53 = jSONObject15.getString("reasonGaveUp");
        String j41 = AbstractC0407pi.j(string53, "getString(...)", jSONObject15, "diagAttempts", "getString(...)");
        String string54 = jSONObject15.getString("diagInstalled");
        String j42 = AbstractC0407pi.j(string54, "getString(...)", jSONObject15, "diagEnabled", "getString(...)");
        String string55 = jSONObject15.getString("diagBootTime");
        String j43 = AbstractC0407pi.j(string55, "getString(...)", jSONObject15, "diagYes", "getString(...)");
        String string56 = jSONObject15.getString("diagNo");
        String j44 = AbstractC0407pi.j(string56, "getString(...)", jSONObject15, "secondsSuffix", "getString(...)");
        String string57 = jSONObject15.getString("btnRetry");
        String j45 = AbstractC0407pi.j(string57, "getString(...)", jSONObject15, "btnSettings", "getString(...)");
        String string58 = jSONObject15.getString("btnRestart");
        AbstractC0348nb.q(string58, "getString(...)");
        q = new C0513u(string51, j39, string52, j40, string53, j41, string54, j42, string55, j43, string56, j44, string57, j45, string58);
        JSONObject jSONObject16 = jSONObject.getJSONObject("storage");
        String string59 = jSONObject16.getString("title");
        String j46 = AbstractC0407pi.j(string59, "getString(...)", jSONObject16, "message", "getString(...)");
        String string60 = jSONObject16.getString("free");
        AbstractC0348nb.q(string60, "getString(...)");
        r = new Hi(string59, j46, string60);
        JSONObject jSONObject17 = jSONObject.getJSONObject("lang");
        List list = b;
        int p0 = AbstractC0221id.p0(N4.r0(list));
        if (p0 < 16) {
            p0 = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(p0);
        for (Object obj : list) {
            linkedHashMap.put(obj, jSONObject17.getString((String) obj));
        }
        AbstractC0348nb.q(jSONObject17.getString("name"), "getString(...)");
        JSONObject jSONObject18 = jSONObject.getJSONObject("taskManager");
        String string61 = jSONObject18.getString("title");
        String j47 = AbstractC0407pi.j(string61, "getString(...)", jSONObject18, "empty", "getString(...)");
        String string62 = jSONObject18.getString("swipeHint");
        String j48 = AbstractC0407pi.j(string62, "getString(...)", jSONObject18, "memory", "getString(...)");
        String string63 = jSONObject18.getString("mb");
        String j49 = AbstractC0407pi.j(string63, "getString(...)", jSONObject18, "gb", "getString(...)");
        String string64 = jSONObject18.getString("notInMemory");
        s = new Aj(string61, j47, string62, j48, string63, j49, string64, AbstractC0407pi.j(string64, "getString(...)", jSONObject18, "preset", "getString(...)"));
    }
}
