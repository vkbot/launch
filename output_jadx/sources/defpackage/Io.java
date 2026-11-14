package defpackage;

import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.omoda.launcher.HomeActivity;
import com.omoda.launcher.data.Preset;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class Io {
    public static final Of q = new Object();
    public static final Set r = AbstractC0554vf.n("com.cherryvoice", "ru.omoda.logbook");
    public static volatile Io s;
    public final Context a;
    public String d;
    public volatile boolean f;
    public volatile boolean g;
    public Preset h;
    public boolean i;
    public boolean j;
    public Boolean l;
    public int o;
    public final Handler b = new Handler(Looper.getMainLooper());
    public final Handler c = new Handler(Looper.getMainLooper());
    public final LinkedHashSet e = new LinkedHashSet();
    public final C0051bo k = new C0051bo();
    public final C0149fj m = new C0149fj(Ph.m);
    public final LinkedHashMap n = new LinkedHashMap();
    public final J2 p = new J2(17, this);

    public Io(Context context) {
        this.a = context;
    }

    public static Integer a(Configuration configuration) {
        try {
            Object obj = Configuration.class.getField("windowConfiguration").get(configuration);
            AbstractC0348nb.o(obj);
            Object invoke = obj.getClass().getMethod("getActivityType", null).invoke(obj, null);
            AbstractC0348nb.p(invoke, "null cannot be cast to non-null type kotlin.Int");
            return (Integer) invoke;
        } catch (Exception unused) {
            return null;
        }
    }

    public static void s(ActivityOptions activityOptions) {
        try {
            ActivityOptions.class.getMethod("setLaunchWindowingMode", Integer.TYPE).invoke(activityOptions, 5);
        } catch (Exception e) {
            AbstractC0407pi.m(e, new StringBuilder("setLaunchWindowingMode failed: "), "WindowLauncher");
        }
    }

    public static Integer w(Configuration configuration) {
        try {
            Object obj = Configuration.class.getField("windowConfiguration").get(configuration);
            AbstractC0348nb.o(obj);
            Object invoke = obj.getClass().getMethod("getWindowingMode", null).invoke(obj, null);
            AbstractC0348nb.p(invoke, "null cannot be cast to non-null type kotlin.Int");
            return (Integer) invoke;
        } catch (Exception unused) {
            return null;
        }
    }

    public final void b(Preset preset, Map map) {
        Map r0;
        Context context;
        Integer num;
        Integer valueOf;
        AbstractC0348nb.r(preset, "preset");
        AbstractC0348nb.r(map, "launchIntents");
        this.e.isEmpty();
        int i = 0;
        this.f = false;
        this.g = false;
        this.j = false;
        this.h = preset;
        Integer num2 = null;
        this.b.removeCallbacksAndMessages(null);
        this.c.removeCallbacksAndMessages(null);
        this.d = null;
        this.n.clear();
        this.o = 0;
        if (preset.isSingle()) {
            r0 = AbstractC0221id.q0(new C0016af(Jo.a, new C0016af(preset.getLeftApp(), new Rect(190, 0, 1820, 720))));
        } else {
            int ratio = (int) (preset.getRatio() * 1630);
            Rect rect = new Rect(190, 0, ratio + 186, 720);
            Rect rect2 = new Rect(ratio + 194, 0, 1820, 720);
            C0016af c0016af = new C0016af(Jo.b, new C0016af(preset.getLeftApp(), rect));
            Jo jo = Jo.c;
            String rightApp = preset.getRightApp();
            AbstractC0348nb.o(rightApp);
            r0 = AbstractC0221id.r0(c0016af, new C0016af(jo, new C0016af(rightApp, rect2)));
        }
        Map map2 = r0;
        Iterator it = map2.entrySet().iterator();
        while (it.hasNext()) {
            C0016af c0016af2 = (C0016af) ((Map.Entry) it.next()).getValue();
            this.n.put(c0016af2.a, c0016af2.b);
        }
        ArrayList arrayList = new ArrayList();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashSet linkedHashSet2 = this.e;
        boolean isEmpty = linkedHashSet2.isEmpty();
        for (Map.Entry entry : map2.entrySet()) {
            Jo jo2 = (Jo) entry.getKey();
            C0016af c0016af3 = (C0016af) entry.getValue();
            String str = (String) c0016af3.a;
            Rect rect3 = (Rect) c0016af3.b;
            linkedHashSet.add(str);
            if (isEmpty) {
                Integer f = f(str);
                if (f != null && f.intValue() > 0) {
                    p(f.intValue());
                }
                arrayList.add(new Qn(str, rect3, jo2));
            } else {
                if (AbstractC0348nb.g(this.l, Boolean.FALSE)) {
                    valueOf = f(str);
                } else {
                    G1 e = e(str);
                    valueOf = (e != null && ((num = (Integer) e.b) == null || num.intValue() == 5)) ? Integer.valueOf(e.a) : num2;
                }
                if (valueOf == null || valueOf.intValue() <= 0) {
                    arrayList.add(new Qn(str, rect3, jo2));
                } else {
                    Rect h = h(valueOf.intValue());
                    if (h != null && h.width() == rect3.width() && h.height() == rect3.height()) {
                        linkedHashSet2.add(str);
                    }
                    if (h != null && h.equals(rect3)) {
                        arrayList.add(new Sn(str, valueOf.intValue()));
                    } else if (h != null && h.width() == rect3.width() && h.height() == rect3.height()) {
                        arrayList.add(new Tn(str, valueOf.intValue(), rect3));
                    } else {
                        p(valueOf.intValue());
                        linkedHashSet2.remove(str);
                        arrayList.add(new Qn(str, rect3, jo2));
                    }
                }
            }
            num2 = null;
        }
        C0051bo c0051bo = this.k;
        ArrayList arrayList2 = (ArrayList) c0051bo.a;
        ArrayList arrayList3 = new ArrayList(N4.r0(arrayList2));
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            arrayList3.add(((C0092dd) it2.next()).a);
        }
        List v0 = L4.v0(L4.z0(arrayList3, linkedHashSet2));
        ArrayList arrayList4 = new ArrayList();
        for (Object obj : v0) {
            if (!linkedHashSet.contains((String) obj)) {
                arrayList4.add(obj);
            }
        }
        Iterator it3 = arrayList4.iterator();
        while (it3.hasNext()) {
            String str2 = (String) it3.next();
            C0092dd a = c0051bo.a(str2);
            arrayList.add(new Rn(str2, a != null ? a.b : 0));
        }
        if (!isEmpty) {
            ((ArrayList) c0051bo.a).clear();
        }
        ArrayList arrayList5 = new ArrayList();
        Iterator it4 = arrayList.iterator();
        while (it4.hasNext()) {
            Object next = it4.next();
            if (next instanceof Rn) {
                arrayList5.add(next);
            }
        }
        Iterator it5 = arrayList5.iterator();
        while (it5.hasNext()) {
            Rn rn = (Rn) it5.next();
            o(rn.a, rn.b);
        }
        ArrayList arrayList6 = new ArrayList();
        Iterator it6 = arrayList.iterator();
        while (it6.hasNext()) {
            Object next2 = it6.next();
            if (next2 instanceof Sn) {
                arrayList6.add(next2);
            }
        }
        Iterator it7 = arrayList6.iterator();
        while (true) {
            boolean hasNext = it7.hasNext();
            context = this.a;
            if (!hasNext) {
                break;
            }
            Sn sn = (Sn) it7.next();
            String str3 = sn.a;
            int i2 = sn.b;
            if (i2 <= 0) {
                Integer f2 = f(str3);
                if (f2 != null) {
                    i2 = f2.intValue();
                }
            }
            int i3 = i2;
            if (i3 > 0) {
                Object systemService = context.getSystemService("activity");
                AbstractC0348nb.p(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
                try {
                    ((ActivityManager) systemService).moveTaskToFront(i3, 0);
                } catch (Exception e2) {
                    StringBuilder sb = new StringBuilder("moveTaskToFront(");
                    sb.append(i3);
                    sb.append(") failed: ");
                    AbstractC0407pi.m(e2, sb, "WindowLauncher");
                }
            }
        }
        ArrayList arrayList7 = new ArrayList();
        Iterator it8 = arrayList.iterator();
        while (it8.hasNext()) {
            Object next3 = it8.next();
            if (next3 instanceof Tn) {
                arrayList7.add(next3);
            }
        }
        Iterator it9 = arrayList7.iterator();
        while (it9.hasNext()) {
            Tn tn = (Tn) it9.next();
            String str4 = tn.a;
            int i4 = tn.b;
            Integer valueOf2 = i4 > 0 ? Integer.valueOf(i4) : f(str4);
            Rect rect4 = tn.c;
            if (valueOf2 == null || valueOf2.intValue() <= 0) {
                try {
                    Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str4);
                    if (launchIntentForPackage != null) {
                        launchIntentForPackage.addFlags(268435456);
                        launchIntentForPackage.addFlags(131072);
                        ActivityOptions makeBasic = ActivityOptions.makeBasic();
                        makeBasic.setLaunchBounds(rect4);
                        s(makeBasic);
                        context.startActivity(launchIntentForPackage, makeBasic.toBundle());
                    }
                } catch (Exception e3) {
                    AbstractC0407pi.m(e3, AbstractC0407pi.l("sendIntent failed for ", str4, ": "), "WindowLauncher");
                }
            } else {
                q(valueOf2.intValue(), rect4);
                Object systemService2 = context.getSystemService("activity");
                AbstractC0348nb.p(systemService2, "null cannot be cast to non-null type android.app.ActivityManager");
                try {
                    ((ActivityManager) systemService2).moveTaskToFront(valueOf2.intValue(), 0);
                } catch (Exception e4) {
                    StringBuilder sb2 = new StringBuilder("moveTaskToFront(");
                    sb2.append(valueOf2);
                    sb2.append(") failed: ");
                    AbstractC0407pi.m(e4, sb2, "WindowLauncher");
                }
            }
        }
        ArrayList arrayList8 = new ArrayList();
        Iterator it10 = arrayList.iterator();
        while (it10.hasNext()) {
            Un un = (Un) it10.next();
            String str5 = un instanceof Sn ? ((Sn) un).a : un instanceof Tn ? ((Tn) un).a : null;
            if (str5 != null) {
                arrayList8.add(str5);
            }
        }
        Iterator it11 = arrayList8.iterator();
        while (it11.hasNext()) {
            String str6 = (String) it11.next();
            Intent intent = (Intent) map.get(str6);
            if (intent != null) {
                d(str6, intent);
            }
        }
        ArrayList arrayList9 = new ArrayList();
        Iterator it12 = arrayList.iterator();
        while (it12.hasNext()) {
            Object next4 = it12.next();
            if (next4 instanceof Qn) {
                arrayList9.add(next4);
            }
        }
        this.i = true;
        if (!arrayList9.isEmpty()) {
            Iterator it13 = arrayList9.iterator();
            while (true) {
                boolean hasNext2 = it13.hasNext();
                Handler handler = this.b;
                if (!hasNext2) {
                    handler.postDelayed(new Co(this, map2, 0), (arrayList9.size() - 1) * 500);
                    break;
                }
                Object next5 = it13.next();
                int i5 = i + 1;
                if (i < 0) {
                    M4.q0();
                    throw null;
                }
                Qn qn = (Qn) next5;
                long j = i * 500;
                Intent intent2 = (Intent) map.get(qn.a);
                if (j == 0) {
                    k(qn.a, qn.b, intent2);
                } else {
                    handler.postDelayed(new RunnableC0061c8(this, qn, intent2, 3), j);
                }
                i = i5;
            }
        } else {
            this.b.postDelayed(new Co(this, map2, 1), 2000L);
        }
        Handler handler2 = this.b;
        J2 j2 = this.p;
        handler2.removeCallbacks(j2);
        handler2.postDelayed(j2, 3000L);
    }

    public final void c() {
        if (this.f || this.g) {
            return;
        }
        Object systemService = this.a.getSystemService("activity");
        AbstractC0348nb.p(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        ActivityManager activityManager = (ActivityManager) systemService;
        Iterator it = ((ArrayList) this.k.a).iterator();
        while (it.hasNext()) {
            C0092dd c0092dd = (C0092dd) it.next();
            int i = c0092dd.b;
            Integer valueOf = i > 0 ? Integer.valueOf(i) : f(c0092dd.a);
            if (valueOf != null && valueOf.intValue() > 0) {
                try {
                    activityManager.moveTaskToFront(valueOf.intValue(), 0);
                } catch (Exception e) {
                    StringBuilder sb = new StringBuilder("moveTaskToFront(");
                    sb.append(valueOf);
                    sb.append(") failed: ");
                    AbstractC0407pi.m(e, sb, "WindowLauncher");
                }
            }
        }
    }

    public final void d(String str, Intent intent) {
        try {
            this.a.startActivity(new Intent(intent).addFlags(268435456));
        } catch (Exception e) {
            AbstractC0407pi.m(e, AbstractC0407pi.l("link to ", str, " failed: "), "WindowLauncher");
        }
    }

    public final G1 e(String str) {
        String str2;
        try {
            Object a = this.m.a();
            if (a == null) {
                return null;
            }
            Object invoke = a.getClass().getMethod("getAllStackInfos", null).invoke(a, null);
            List list = invoke instanceof List ? (List) invoke : null;
            if (list == null) {
                return null;
            }
            for (Object obj : list) {
                if (obj != null) {
                    Class<?> cls = obj.getClass();
                    Object obj2 = cls.getField("taskIds").get(obj);
                    int[] iArr = obj2 instanceof int[] ? (int[]) obj2 : null;
                    if (iArr != null) {
                        Object obj3 = cls.getField("taskNames").get(obj);
                        Object[] objArr = obj3 instanceof Object[] ? (Object[]) obj3 : null;
                        if (objArr != null) {
                            int length = objArr.length;
                            int i = 0;
                            while (true) {
                                if (i >= length) {
                                    i = -1;
                                    break;
                                }
                                Object obj4 = objArr[i];
                                if (obj4 == null || (str2 = obj4.toString()) == null) {
                                    str2 = "";
                                }
                                if (Si.P(str2, str + '/') || str2.equals(str)) {
                                    break;
                                }
                                i++;
                            }
                            if (i >= 0 && i < iArr.length) {
                                int i2 = iArr[i];
                                Object obj5 = cls.getField("topActivity").get(obj);
                                if ((obj5 instanceof ComponentName ? (ComponentName) obj5 : null) == null) {
                                    return null;
                                }
                                Object obj6 = cls.getField("configuration").get(obj);
                                Integer w = w(obj6 instanceof Configuration ? (Configuration) obj6 : null);
                                Object obj7 = cls.getField("taskBounds").get(obj);
                                Object[] objArr2 = obj7 instanceof Object[] ? (Object[]) obj7 : null;
                                Object X = objArr2 != null ? Z2.X(objArr2, i) : null;
                                return new G1(i2, w, X instanceof Rect ? (Rect) X : null);
                            }
                        }
                    }
                }
            }
            return null;
        } catch (Exception e) {
            StringBuilder l = AbstractC0407pi.l("findLiveTask(", str, ") failed: ");
            l.append(e.getMessage());
            Log.w("WindowLauncher", l.toString());
            Integer f = f(str);
            if (f != null) {
                return new G1(f.intValue(), (Integer) null, (Rect) null);
            }
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v4, types: [Io] */
    /* JADX WARN: Type inference failed for: r10v7, types: [java.lang.Integer] */
    public final Integer f(String str) {
        int i;
        String str2;
        if (AbstractC0348nb.g(this.l, Boolean.FALSE)) {
            return null;
        }
        try {
            Object a = this.m.a();
            if (a == null) {
                return null;
            }
            Object invoke = a.getClass().getMethod("getAllStackInfos", null).invoke(a, null);
            List list = invoke instanceof List ? (List) invoke : null;
            if (list == null) {
                return null;
            }
            for (Object obj : list) {
                if (obj != null) {
                    Class<?> cls = obj.getClass();
                    try {
                        Object obj2 = cls.getField("taskIds").get(obj);
                        int[] iArr = obj2 instanceof int[] ? (int[]) obj2 : null;
                        if (iArr != null) {
                            Object obj3 = cls.getField("taskNames").get(obj);
                            Object[] objArr = obj3 instanceof Object[] ? (Object[]) obj3 : null;
                            if (objArr != null) {
                                int length = iArr.length;
                                while (i < length) {
                                    Object X = Z2.X(objArr, i);
                                    if (X == null || (str2 = X.toString()) == null) {
                                        str2 = "";
                                    }
                                    StringBuilder sb = new StringBuilder();
                                    sb.append(str);
                                    sb.append('/');
                                    i = (Si.P(str2, sb.toString()) || str2.equals(str)) ? 0 : i + 1;
                                    this.l = Boolean.TRUE;
                                    this = Integer.valueOf(iArr[i]);
                                    return this;
                                }
                            }
                        }
                    } catch (Exception e) {
                        Log.w("WindowLauncher", "Failed to read stack info fields: " + e.getMessage());
                    }
                }
            }
            this.l = Boolean.TRUE;
            return null;
        } catch (Exception e2) {
            e = e2;
            if (e instanceof InvocationTargetException) {
                e = e.getCause();
            }
            if (e instanceof SecurityException) {
                Log.w("WindowLauncher", "getAllStackInfos: no permission (fallback to intent-based)");
                this.l = Boolean.FALSE;
            } else {
                StringBuilder sb2 = new StringBuilder("getAllStackInfos failed: ");
                sb2.append(e != null ? e.getMessage() : null);
                Log.w("WindowLauncher", sb2.toString());
            }
            return null;
        }
    }

    public final void g(String str) {
        Context context = this.a;
        if (!AbstractC0348nb.g(str, context.getPackageName()) && !r.contains(str)) {
            try {
                if ((context.getPackageManager().getApplicationInfo(str, 0).flags & 8) != 0) {
                    return;
                }
                try {
                    Object systemService = context.getSystemService("activity");
                    AbstractC0348nb.p(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
                    ActivityManager.class.getMethod("forceStopPackage", String.class).invoke((ActivityManager) systemService, str);
                } catch (Exception e) {
                    e = e;
                    if (e instanceof InvocationTargetException) {
                        e = e.getCause();
                    }
                    Log.w("WindowLauncher", "forceStopPackage(" + str + ") failed: " + e);
                }
            } catch (Exception unused) {
            }
        }
    }

    public final Rect h(int i) {
        try {
            Object a = this.m.a();
            if (a == null) {
                return null;
            }
            Object invoke = a.getClass().getMethod("getAllStackInfos", null).invoke(a, null);
            List list = invoke instanceof List ? (List) invoke : null;
            if (list == null) {
                return null;
            }
            for (Object obj : list) {
                if (obj != null) {
                    Class<?> cls = obj.getClass();
                    try {
                        Object obj2 = cls.getField("taskIds").get(obj);
                        int[] iArr = obj2 instanceof int[] ? (int[]) obj2 : null;
                        if (iArr != null) {
                            int length = iArr.length;
                            int i2 = 0;
                            while (true) {
                                if (i2 >= length) {
                                    i2 = -1;
                                    break;
                                }
                                if (i == iArr[i2]) {
                                    break;
                                }
                                i2++;
                            }
                            if (i2 >= 0) {
                                Object obj3 = cls.getField("taskBounds").get(obj);
                                Object[] objArr = obj3 instanceof Object[] ? (Object[]) obj3 : null;
                                Object X = objArr != null ? Z2.X(objArr, i2) : null;
                                if (X instanceof Rect) {
                                    return (Rect) X;
                                }
                                return null;
                            }
                            continue;
                        }
                    } catch (Exception unused) {
                        continue;
                    }
                }
            }
            return null;
        } catch (Exception unused2) {
            return null;
        }
    }

    public final void i() {
        this.b.removeCallbacksAndMessages(null);
        this.c.removeCallbacksAndMessages(null);
        this.d = null;
        this.n.clear();
        this.f = true;
        this.g = false;
        this.j = false;
        this.i = false;
    }

    public final boolean j() {
        Integer num;
        C0491t2 v = v();
        if (v == null || (num = (Integer) v.c) == null || num.intValue() != 2) {
            return false;
        }
        return !((String) v.a).equals(this.a.getPackageName());
    }

    public final void k(String str, Rect rect, Intent intent) {
        Integer f = f(str);
        if (f != null && f.intValue() > 0) {
            p(f.intValue());
        }
        LinkedHashSet linkedHashSet = this.e;
        Context context = this.a;
        try {
            Intent intent2 = intent != null ? new Intent(intent) : context.getPackageManager().getLaunchIntentForPackage(str);
            if (intent2 == null) {
                Log.e("WindowLauncher", "Cannot get launch intent for " + str);
                return;
            }
            intent2.addFlags(268435456);
            ActivityOptions makeBasic = ActivityOptions.makeBasic();
            makeBasic.setLaunchBounds(rect);
            s(makeBasic);
            linkedHashSet.add(str);
            try {
                context.startActivity(intent2, makeBasic.toBundle());
            } catch (Exception e) {
                Intent launchIntentForPackage = intent != null ? context.getPackageManager().getLaunchIntentForPackage(str) : null;
                if (launchIntentForPackage == null) {
                    throw e;
                }
                Log.w("WindowLauncher", "link start of " + str + " failed: " + e.getMessage() + " — launcher entry instead");
                context.startActivity(launchIntentForPackage.addFlags(268435456), makeBasic.toBundle());
            }
        } catch (Exception e2) {
            linkedHashSet.remove(str);
            Log.e("WindowLauncher", "Error launching " + str, e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00b1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x006c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.C0016af l() {
        /*
            r10 = this;
            com.omoda.launcher.data.Preset r0 = r10.h
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            java.util.ArrayList r2 = r10.m()
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            java.util.Iterator r2 = r2.iterator()
        L13:
            boolean r4 = r2.hasNext()
            if (r4 == 0) goto L28
            java.lang.Object r4 = r2.next()
            r5 = r4
            Eo r5 = (defpackage.Eo) r5
            android.graphics.Rect r5 = r5.c
            if (r5 == 0) goto L13
            r3.add(r4)
            goto L13
        L28:
            java.util.ArrayList r2 = new java.util.ArrayList
            int r4 = defpackage.N4.r0(r3)
            r2.<init>(r4)
            java.util.Iterator r3 = r3.iterator()
        L35:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L4b
            java.lang.Object r4 = r3.next()
            Eo r4 = (defpackage.Eo) r4
            int r4 = r4.b
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            r2.add(r4)
            goto L35
        L4b:
            java.util.Set r2 = defpackage.L4.F0(r2)
            java.lang.String r3 = r0.getLeftApp()
            java.lang.String r4 = r0.getRightApp()
            java.lang.String[] r3 = new java.lang.String[]{r3, r4}
            java.util.List r3 = defpackage.Z2.W(r3)
            java.util.List r3 = defpackage.L4.v0(r3)
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            java.util.Iterator r3 = r3.iterator()
        L6c:
            boolean r5 = r3.hasNext()
            if (r5 == 0) goto Lb5
            java.lang.Object r5 = r3.next()
            java.lang.String r5 = (java.lang.String) r5
            G1 r6 = r10.e(r5)
            if (r6 != 0) goto L80
        L7e:
            r8 = r1
            goto Laf
        L80:
            java.lang.Object r7 = r6.b
            java.lang.Integer r7 = (java.lang.Integer) r7
            if (r7 != 0) goto L87
            goto L8e
        L87:
            int r7 = r7.intValue()
            r8 = 5
            if (r7 == r8) goto L8f
        L8e:
            goto L7e
        L8f:
            java.lang.Object r7 = r6.c
            android.graphics.Rect r7 = (android.graphics.Rect) r7
            if (r7 == 0) goto L7e
            boolean r8 = r7.isEmpty()
            if (r8 != 0) goto L9c
            goto L9d
        L9c:
            r7 = r1
        L9d:
            if (r7 != 0) goto La0
            goto L7e
        La0:
            Do r8 = new Do
            int r6 = r6.a
            java.lang.Integer r9 = java.lang.Integer.valueOf(r6)
            boolean r9 = r2.contains(r9)
            r8.<init>(r5, r6, r7, r9)
        Laf:
            if (r8 == 0) goto L6c
            r4.add(r8)
            goto L6c
        Lb5:
            boolean r10 = r4.isEmpty()
            if (r10 == 0) goto Lbc
            goto Lc1
        Lbc:
            af r1 = new af
            r1.<init>(r0, r4)
        Lc1:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.Io.l():af");
    }

    /* JADX WARN: Code restructure failed: missing block: B:75:0x0134, code lost:
    
        if (r4 == null) goto L91;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0031 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00c9 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.ArrayList m() {
        /*
            Method dump skipped, instructions count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.Io.m():java.util.ArrayList");
    }

    public final void n() {
        C0051bo c0051bo = this.k;
        ArrayList arrayList = (ArrayList) c0051bo.a;
        ArrayList arrayList2 = new ArrayList(N4.r0(arrayList));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((C0092dd) it.next()).a);
        }
        for (String str : L4.v0(L4.z0(arrayList2, this.e))) {
            C0092dd a = c0051bo.a(str);
            o(str, a != null ? a.b : 0);
        }
    }

    public final void o(String str, int i) {
        Integer f = f(str);
        if (f == null) {
            f = Integer.valueOf(i);
            if (i <= 0) {
                f = null;
            }
        }
        if (f != null && f.intValue() > 0) {
            p(f.intValue());
        }
        u(str);
        this.e.remove(str);
        R4.t0((ArrayList) this.k.a, new Go(str, 1));
    }

    public final void p(int i) {
        try {
            Object a = this.m.a();
            if (a == null) {
                return;
            }
            a.getClass().getMethod("removeTask", Integer.TYPE).invoke(a, Integer.valueOf(i));
        } catch (Exception e) {
            e = e;
            if (e instanceof InvocationTargetException) {
                e = e.getCause();
            }
            StringBuilder sb = new StringBuilder("removeTask(");
            sb.append(i);
            sb.append(") failed: ");
            sb.append(e != null ? e.getClass().getSimpleName() : null);
            sb.append(": ");
            sb.append(e != null ? e.getMessage() : null);
            Log.w("WindowLauncher", sb.toString());
        }
    }

    public final boolean q(int i, Rect rect) {
        try {
            Object a = this.m.a();
            if (a == null) {
                return false;
            }
            Class<?> cls = a.getClass();
            Class cls2 = Integer.TYPE;
            cls.getMethod("resizeTask", cls2, Rect.class, cls2).invoke(a, Integer.valueOf(i), rect, 0);
            return true;
        } catch (Exception e) {
            e = e;
            if (e instanceof InvocationTargetException) {
                e = e.getCause();
            }
            StringBuilder sb = new StringBuilder("resizeTask(");
            sb.append(i);
            sb.append(") failed: ");
            sb.append(e != null ? e.getClass().getSimpleName() : null);
            sb.append(": ");
            sb.append(e != null ? e.getMessage() : null);
            Log.w("WindowLauncher", sb.toString());
            return false;
        }
    }

    public final Fo r() {
        C0491t2 v = v();
        if (v == null) {
            return Fo.f;
        }
        Integer num = (Integer) v.c;
        if (num == null || num.intValue() == 1) {
            if (!((String) v.b).equals(HomeActivity.class.getName())) {
                String packageName = this.a.getPackageName();
                String str = (String) v.a;
                return str.equals(packageName) ? Fo.b : this.e.contains(str) ? Fo.c : str.equals(this.d) ? Fo.d : Fo.e;
            }
        }
        return Fo.a;
    }

    public final void t(G1 g1, Rect rect) {
        Object a;
        Integer num = (Integer) g1.b;
        int i = g1.a;
        if (num != null && num.intValue() == 5) {
            try {
                a = this.m.a();
            } catch (Exception e) {
                e = e;
                if (e instanceof InvocationTargetException) {
                    e = e.getCause();
                }
                StringBuilder sb = new StringBuilder("setTaskWindowingMode(");
                sb.append(i);
                sb.append(", FULLSCREEN) failed: ");
                sb.append(e != null ? e.getClass().getSimpleName() : null);
                sb.append(": ");
                sb.append(e != null ? e.getMessage() : null);
                Log.w("WindowLauncher", sb.toString());
            }
            if (a == null) {
                q(i, rect);
            } else {
                Class<?> cls = a.getClass();
                Class cls2 = Integer.TYPE;
                cls.getMethod("setTaskWindowingMode", cls2, cls2, Boolean.TYPE).invoke(a, Integer.valueOf(i), 1, Boolean.TRUE);
            }
        } else if (num == null) {
            q(i, rect);
        }
        Object systemService = this.a.getSystemService("activity");
        AbstractC0348nb.p(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        ((ActivityManager) systemService).moveTaskToFront(i, 0);
    }

    public final void u(String str) {
        Set set = AbstractC0528ue.a;
        if (AbstractC0528ue.a.contains(str)) {
            return;
        }
        try {
            int i = this.a.getPackageManager().getApplicationInfo(str, 0).flags;
            if ((i & 1) == 0 || (i & 128) != 0) {
                g(str);
            }
        } catch (Exception unused) {
        }
    }

    public final C0491t2 v() {
        Object a;
        try {
            a = this.m.a();
        } catch (Exception e) {
            AbstractC0407pi.m(e, new StringBuilder("topApp failed: "), "WindowLauncher");
        }
        if (a == null) {
            return null;
        }
        Object invoke = a.getClass().getMethod("getAllStackInfos", null).invoke(a, null);
        List list = invoke instanceof List ? (List) invoke : null;
        if (list == null) {
            return null;
        }
        for (Object obj : list) {
            if (obj != null) {
                Class<?> cls = obj.getClass();
                Object obj2 = cls.getField("topActivity").get(obj);
                ComponentName componentName = obj2 instanceof ComponentName ? (ComponentName) obj2 : null;
                if (componentName != null) {
                    Object obj3 = cls.getField("configuration").get(obj);
                    Configuration configuration = obj3 instanceof Configuration ? (Configuration) obj3 : null;
                    Integer w = w(configuration);
                    if (w != null && w.intValue() == 2) {
                    }
                    String packageName = componentName.getPackageName();
                    AbstractC0348nb.q(packageName, "getPackageName(...)");
                    String className = componentName.getClassName();
                    AbstractC0348nb.q(className, "getClassName(...)");
                    return new C0491t2(packageName, className, a(configuration));
                }
            }
        }
        return null;
    }
}
