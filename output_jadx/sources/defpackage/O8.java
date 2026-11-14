package defpackage;

import android.R;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import com.omoda.launcher.data.AppInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.Set;

/* loaded from: classes.dex */
public final class O8 {
    public static final Set a = AbstractC0554vf.n("com.astrob.turbodog", "com.yfve.car.carplay", "com.yfve.t19c.projection.carplay.service", "com.yfve.car.androidauto");
    public static final List b = M4.p0(new L8("media", "com.chery.media", "com.chery.media.view.activity.MediaActivity", "icon_media", "launcher_media_icon_bg", false, null, 96), new L8("phone", "com.chery.dialer", "com.chery.dialer.ui.TelecomActivity", "icon_phone", "launcher_phone_icon_bg", false, null, 96), new L8("system_setting", "com.chery.settings", "com.chery.settings.view.settings.activity.SettingsActivity", "icon_system_setting", "launcher_system_setting_icon_bg", false, null, 96), new L8("vehicle_setting", "com.chery.settings", "com.chery.settings.view.vehicle.activity.VehicleActivity", "icon_vehicle_setting", "launcher_vehicle_icon_bg", true, null, 64), new L8("picture", "com.chery.media", "com.chery.media.view.activity.PictureActivity", "icon_picture", "launcher_picture_icon_bg", false, null, 96), new L8("video", "com.chery.media", "com.chery.media.view.activity.VideoActivity", "icon_video", "launcher_video_icon_bg", false, null, 96), new L8("manual", "com.chery.help", "com.chery.help.view.activity.MainActivity", "icon_manual", "launcher_manual_icon_bg", false, null, 96), new L8("update", "com.chery.upgrade", "com.chery.upgrade.view.MainActivity", "icon_update", "launcher_update_icon_bg", false, null, 96));
    public static final L8 c = new L8("360", null, null, "icon_360", "launcher_360_icon_bg", true, null, 64);
    public static final L8 d = new L8("qdlink", "com.neusoft.ssp.ces.c4.car.assistant", "com.neusoft.ssp.ces.c4.car.assistant.SplashActivity", "icon_qdlink", "launcher_qdlink_icon_bg", false, null, 96);
    public static final L8 e;
    public static final L8 f;
    public static final Set g;
    public static final Set h;
    public static final Object i;
    public static final List j;
    public static Resources k;
    public static String l;
    public static String m;

    static {
        EnumC0197hf enumC0197hf = EnumC0197hf.b;
        e = new L8("carplay", "com.yfve.t19c.projection.carplay.service", null, "icon_carplay", "launcher_carplay_icon_bg", false, enumC0197hf, 32);
        EnumC0197hf enumC0197hf2 = EnumC0197hf.a;
        f = new L8("android_auto", "com.yfve.car.androidauto", null, "icon_android_auto", "launcher_android_auto_icon_bg", false, enumC0197hf2, 32);
        g = AbstractC0554vf.n("com.android.phone", "com.android.systemui", "com.android.calendar", "com.android.documentsui", "com.android.deskclock", "com.android.quicksearchbox", "com.android.inputmethod.latin", "com.chery.hvac", "com.chery.icm", "com.chery.iflytekosservice", "com.yfve.engineeringmode", "com.yfve.t19c_eol", "com.yfve.pinyinime", "com.neusoft.ssp.ces.c4.car.assistant", "com.chery.cerence", "com.he.ardc", "com.yfve.caradapter");
        h = AbstractC0554vf.n("com.chery.launcher.activity.LauncherActivity", "com.chery.appmenu.activity.AppMenuActivity", "com.chery.media.view.activity.DabListActivity", "com.chery.media.view.activity.DabEpgActivity", "com.chery.media.view.activity.DabAnnounceActivity", "com.chery.media.view.activity.PictureActivity", "com.chery.media.view.activity.VideoActivity");
        i = AbstractC0221id.r0(new C0016af("com.yfve.carplayapp", enumC0197hf), new C0016af("com.yfve.androidauto", enumC0197hf2));
        j = M4.p0(new M8("#com.chery.media/com.chery.media.view.activity.MediaActivity", "app_media", "app_primordial_music_btn_n"), new M8("com.chery.dialer", "app_bt_phone", "app_primordial_phone_btn_n"), new M8("#com.chery.vehicle/com.chery.vehicle.view.activity.EnergyActivity", "app_energy", "app_primordial_energy_btn"), new M8("#com.chery.settings/com.chery.settings.view.settings.activity.SettingsActivity", "app_local_setting", "app_primordial_setup_btn_n"), new M8("#com.chery.vehicle/com.chery.vehicle.view.activity.VehicleActivity", "app_vehicle_setting", "app_primordial_carinfo_btn"), new M8("#com.chery.media/com.chery.media.view.activity.MediaGalleryActivity", "app_gallery", "app_primordial_pic_btn_n"), new M8("com.chery.help", "app_menual", "app_primordial_manual_btn_n"), new M8("com.yfve.carplayapp", "app_carplay", "app_primordial_carplay_btn"), new M8("com.yfve.androidauto", "app_android_auto", "app_primordial_android_auto_btn"), new M8("com.chery.upgrade", "app_upgrade", "app_primordial_upgrade_btn_n"), new M8("com.chery.qibla.compass", "app_Qibla", "home_menu_app_qibla_ar_n"), new M8("com.chery.avm", "app_avm", "app_primordial_360_btn"));
    }

    public static final Drawable a(Resources resources, String str, boolean z) {
        int intValue;
        if (resources == null) {
            return null;
        }
        int identifier = resources.getIdentifier(str, "drawable", "com.chery.launcher");
        Integer valueOf = Integer.valueOf(identifier);
        if (identifier == 0) {
            valueOf = null;
        }
        if (valueOf != null) {
            intValue = valueOf.intValue();
        } else {
            int identifier2 = resources.getIdentifier(str, "mipmap", "com.chery.launcher");
            Integer valueOf2 = Integer.valueOf(identifier2);
            if (identifier2 == 0) {
                valueOf2 = null;
            }
            if (valueOf2 == null) {
                return null;
            }
            intValue = valueOf2.intValue();
        }
        try {
            Drawable drawable = resources.getDrawable(intValue, null);
            drawable.setState(z ? new int[]{R.attr.state_activated} : new int[0]);
            return drawable.getCurrent();
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean b(byte[] bArr, int i2, int i3) {
        return bArr != null && bArr.length > i2 && ((bArr[i2] >> i3) & 1) == 1;
    }

    public static byte[] c(Lm lm, int i2) {
        Object c2 = lm.c(i2, 16777216, byte[].class);
        byte[] bArr = c2 instanceof byte[] ? (byte[]) c2 : null;
        if (bArr == null || bArr.length <= 1) {
            return null;
        }
        return bArr;
    }

    public static boolean d(EnumC0197hf enumC0197hf, Lm lm) {
        if (k().contains(enumC0197hf)) {
            if (b(c(lm, 561013252), 2, enumC0197hf == EnumC0197hf.b ? 3 : 6)) {
                return true;
            }
        }
        return false;
    }

    public static boolean e(P8 p8, Lm lm) {
        byte[] c2;
        AbstractC0348nb.r(lm, "vhal");
        Object c3 = lm.c(557850624, 0, null);
        Number number = c3 instanceof Number ? (Number) c3 : null;
        Integer valueOf = number != null ? Integer.valueOf(number.intValue()) : null;
        if (valueOf == null) {
            return false;
        }
        int intValue = valueOf.intValue();
        if (!p8.e || (c2 = c(lm, 561013263)) == null || c2.length <= 4 || ((c2[4] >> 4) & 3) != 2) {
            if (intValue != 2 && intValue != 3) {
                return false;
            }
        } else if (intValue != 1 && intValue != 2) {
            return false;
        }
        return true;
    }

    public static ArrayList f(Context context, Lm lm, String str, A4 a4) {
        ActivityInfo activityInfo;
        CharSequence loadLabel;
        String str2;
        Resources i2 = i(context, str);
        PackageManager packageManager = context.getPackageManager();
        ArrayList D0 = L4.D0(b);
        if (b(c(lm, 561013250), 2, 0)) {
            D0.add(c);
        }
        if (d(EnumC0197hf.b, lm)) {
            D0.add(7, e);
        }
        if (d(EnumC0197hf.a, lm)) {
            D0.add(7, f);
        }
        if (b(c(lm, 561013252), 2, 5)) {
            D0.add(d);
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = D0.iterator();
        while (it.hasNext()) {
            L8 l8 = (L8) it.next();
            String str3 = l8.b;
            AppInfo appInfo = null;
            r2 = null;
            String str4 = null;
            ComponentName componentName = (str3 == null || (str2 = l8.c) == null) ? null : new ComponentName(str3, str2);
            if (componentName != null) {
                try {
                    activityInfo = packageManager.getActivityInfo(componentName, 0);
                } catch (Exception unused) {
                }
            } else {
                activityInfo = null;
            }
            String str5 = l8.a;
            P8 p8 = new P8("factory:".concat(str5), componentName, true, l8.f, l8.g, 16);
            String j2 = j(i2, l8.d);
            if (j2 == null) {
                if (activityInfo != null && (loadLabel = activityInfo.loadLabel(packageManager)) != null) {
                    str4 = loadLabel.toString();
                }
                if (str4 == null) {
                    str4 = str5;
                }
            } else {
                str4 = j2;
            }
            if (str3 == null) {
                str3 = "com.chery.launcher";
            }
            appInfo = h(p8, str3, str4, lm, a4, new N8(i2, l8, activityInfo, packageManager));
            if (appInfo != null) {
                arrayList.add(appInfo);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Type inference failed for: r3v11, types: [java.util.Map, java.lang.Object] */
    public static ArrayList g(Context context, Lm lm, String str, A4 a4) {
        List<M8> list;
        int i2;
        int i3;
        String obj;
        Resources i4 = i(context, str);
        PackageManager packageManager = context.getPackageManager();
        int i5 = 0;
        boolean b2 = b(c(lm, 561013263), 5, 0);
        ArrayList arrayList = new ArrayList();
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER"), 0);
        AbstractC0348nb.q(queryIntentActivities, "queryIntentActivities(...)");
        Iterator<ResolveInfo> it = queryIntentActivities.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            list = j;
            if (!hasNext) {
                break;
            }
            ResolveInfo next = it.next();
            ActivityInfo activityInfo = next.activityInfo;
            if ((activityInfo.applicationInfo.flags & 1) != 0) {
                String str2 = activityInfo.packageName;
                if (!AbstractC0348nb.g(str2, context.getPackageName())) {
                    if (!a.contains(str2)) {
                        if (!g.contains(str2)) {
                            if (!h.contains(activityInfo.name) && (!AbstractC0348nb.g(str2, "com.chery.qibla.compass") || b2)) {
                                EnumC0197hf enumC0197hf = (EnumC0197hf) i.get(str2);
                                if (enumC0197hf == null || d(enumC0197hf, lm)) {
                                    Iterator it2 = list.iterator();
                                    int i6 = i5;
                                    while (true) {
                                        i2 = -1;
                                        if (!it2.hasNext()) {
                                            i6 = -1;
                                            break;
                                        }
                                        Iterator it3 = it2;
                                        if (((M8) it2.next()).a.equals("#" + str2 + '/' + activityInfo.name)) {
                                            break;
                                        }
                                        i6++;
                                        it2 = it3;
                                    }
                                    Integer valueOf = Integer.valueOf(i6);
                                    if (i6 < 0) {
                                        valueOf = null;
                                    }
                                    if (valueOf != null) {
                                        i2 = valueOf.intValue();
                                    } else {
                                        Iterator it4 = list.iterator();
                                        int i7 = 0;
                                        while (it4.hasNext()) {
                                            if (((M8) it4.next()).a.equals(str2)) {
                                                i3 = i7;
                                                break;
                                            }
                                            i7++;
                                        }
                                    }
                                    i3 = i2;
                                    M8 m8 = (M8) L4.x0(list, i3);
                                    ComponentName componentName = new ComponentName(str2, activityInfo.name);
                                    P8 p8 = new P8("factory:" + componentName.flattenToShortString(), componentName, false, AbstractC0348nb.g(str2, "com.chery.vehicle"), AbstractC0348nb.g(activityInfo.name, "com.chery.vehicle.view.activity.EnergyActivity"), enumC0197hf);
                                    if (m8 == null || (obj = j(i4, m8.b)) == null) {
                                        obj = next.loadLabel(packageManager).toString();
                                    }
                                    String str3 = obj;
                                    AbstractC0348nb.o(str2);
                                    AppInfo h2 = h(p8, str2, str3, lm, a4, new N8(m8, next, packageManager, i4));
                                    if (h2 != null) {
                                        if (i3 < 0) {
                                            i3 = list.size();
                                        }
                                        arrayList.add(new C0016af(Integer.valueOf(i3), h2));
                                    }
                                    i5 = 0;
                                }
                            }
                        }
                    }
                }
            }
        }
        if (b(c(lm, 561013250), 2, 0)) {
            for (M8 m82 : list) {
                if (m82.a.equals("com.chery.avm")) {
                    P8 p82 = new P8("factory:360", (ComponentName) null, false, true, (EnumC0197hf) null, 48);
                    String j2 = j(i4, m82.b);
                    if (j2 == null) {
                        j2 = "AVM";
                    }
                    AppInfo h3 = h(p82, "com.chery.avm", j2, lm, a4, new N2(i4, 1, m82));
                    if (h3 != null) {
                        arrayList.add(new C0016af(Integer.valueOf(list.indexOf(m82)), h3));
                    }
                }
            }
            throw new NoSuchElementException("Collection contains no element matching the predicate.");
        }
        List A0 = L4.A0(arrayList, new X0(2, new G0(3)));
        ArrayList arrayList2 = new ArrayList(N4.r0(A0));
        Iterator it5 = A0.iterator();
        while (it5.hasNext()) {
            arrayList2.add((AppInfo) ((C0016af) it5.next()).b);
        }
        return arrayList2;
    }

    public static AppInfo h(P8 p8, String str, String str2, Lm lm, A4 a4, InterfaceC0089da interfaceC0089da) {
        EnumC0197hf enumC0197hf;
        boolean z = (p8.d && !e(p8, lm)) || !((enumC0197hf = p8.f) == null || ((Boolean) a4.h(enumC0197hf)).booleanValue());
        Drawable drawable = (Drawable) interfaceC0089da.h(Boolean.valueOf(z));
        if (drawable == null) {
            return null;
        }
        return new AppInfo(str, str2, drawable, 0L, p8, z, 8, null);
    }

    public static Resources i(Context context, String str) {
        Resources resources;
        String str2 = str + '|' + T7.k;
        if (AbstractC0348nb.g(str2, l)) {
            return k;
        }
        try {
            Context createPackageContext = context.createPackageContext("com.chery.launcher", 0);
            Configuration configuration = new Configuration(createPackageContext.getResources().getConfiguration());
            configuration.setLocale(new Locale(str));
            resources = createPackageContext.createConfigurationContext(configuration).getResources();
        } catch (Exception e2) {
            AbstractC0407pi.m(e2, new StringBuilder("stock launcher resources unavailable: "), "FactoryPrograms");
            resources = null;
        }
        k = resources;
        l = str2;
        return resources;
    }

    public static String j(Resources resources, String str) {
        if (resources == null) {
            return null;
        }
        int identifier = resources.getIdentifier(str, "string", "com.chery.launcher");
        if (identifier != 0) {
            try {
            } catch (Exception unused) {
                return null;
            }
        }
        return resources.getString(identifier);
    }

    public static LinkedHashSet k() {
        EnumC0411pm enumC0411pm;
        C0255jm c0255jm = C0255jm.a;
        String string = C0255jm.d().getString("unified_mode", null);
        if (string == null) {
            EnumC0411pm enumC0411pm2 = EnumC0411pm.d;
            string = "off";
        }
        EnumC0411pm[] values = EnumC0411pm.values();
        int length = values.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                enumC0411pm = null;
                break;
            }
            enumC0411pm = values[i2];
            if (AbstractC0348nb.g(enumC0411pm.a, string)) {
                break;
            }
            i2++;
        }
        if (enumC0411pm == null) {
            enumC0411pm = EnumC0411pm.d;
        }
        EnumC0197hf enumC0197hf = EnumC0197hf.a;
        if (!enumC0411pm.b) {
            enumC0197hf = null;
        }
        EnumC0197hf[] enumC0197hfArr = {enumC0197hf, enumC0411pm.c ? EnumC0197hf.b : null};
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (int i3 = 0; i3 < 2; i3++) {
            EnumC0197hf enumC0197hf2 = enumC0197hfArr[i3];
            if (enumC0197hf2 != null) {
                linkedHashSet.add(enumC0197hf2);
            }
        }
        return linkedHashSet;
    }
}
