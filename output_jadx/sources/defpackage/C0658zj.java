package defpackage;

import android.app.ActivityManager;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.omoda.launcher.R;
import com.omoda.launcher.service.TopOverlayAccessibilityService;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* renamed from: zj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0658zj {
    public static final Set s;
    public final TopOverlayAccessibilityService a;
    public final WindowManager b;
    public final Yk c;
    public final Yk d;
    public final C0125el e;
    public final C0125el f;
    public final C0125el g;
    public final C0125el h;
    public final C0125el i;
    public final Yk j;
    public final Yk k;
    public View l;
    public boolean m;
    public final ArrayList n;
    public final ArrayList o;
    public final C0382oj p;
    public final P5 q;
    public Map r;

    static {
        Of of = Io.q;
        s = Io.r;
    }

    public C0658zj(TopOverlayAccessibilityService topOverlayAccessibilityService, WindowManager windowManager, Yk yk, Yk yk2, C0125el c0125el, C0125el c0125el2, C0125el c0125el3, C0125el c0125el4, C0125el c0125el5, Yk yk3, Yk yk4) {
        AbstractC0348nb.r(windowManager, "windowManager");
        this.a = topOverlayAccessibilityService;
        this.b = windowManager;
        this.c = yk;
        this.d = yk2;
        this.e = c0125el;
        this.f = c0125el2;
        this.g = c0125el3;
        this.h = c0125el4;
        this.i = c0125el5;
        this.j = yk3;
        this.k = yk4;
        this.n = new ArrayList();
        this.o = new ArrayList();
        this.p = new C0382oj(this);
        InterfaceC0110e6 bb = new Bb(null);
        T6 t6 = AbstractC0546v7.a;
        Ca ca = AbstractC0066cd.a;
        AbstractC0348nb.r(ca, "context");
        bb = ca != C0497t8.a ? (InterfaceC0110e6) ca.e(bb, V4.d) : bb;
        this.q = new P5(bb.b(T7.f) == null ? bb.f(new Bb(null)) : bb);
    }

    public static final int a(C0658zj c0658zj, C0356nj c0356nj) {
        c0658zj.getClass();
        Rect rect = c0356nj.c;
        float f = 2.6666667f;
        if (rect != null && rect.height() != 0) {
            f = AbstractC0554vf.e(rect.width() / rect.height(), 0.75f, 2.6666667f);
        }
        return (int) (c0658zj.a.getResources().getDimensionPixelSize(R.dimen.task_card_preview_height) * f);
    }

    public static final void b(C0658zj c0658zj, int i) {
        ArrayList arrayList = c0658zj.n;
        C0356nj c0356nj = (C0356nj) L4.x0(arrayList, i);
        if (c0356nj == null) {
            return;
        }
        arrayList.remove(i);
        c0658zj.p.a.e(i, 1);
        View view = c0658zj.l;
        if (view != null) {
            RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.taskManagerList);
            if (recyclerView.p.size() != 0) {
                AbstractC0353ng abstractC0353ng = recyclerView.n;
                if (abstractC0353ng != null) {
                    abstractC0353ng.c("Cannot invalidate item decorations during a scroll or layout");
                }
                recyclerView.S();
                recyclerView.requestLayout();
            }
            c0658zj.k(view);
        }
        C0508tj c0508tj = c0356nj.d;
        if (c0508tj != null) {
            c0658zj.h.h(c0508tj);
        } else {
            c0658zj.g.h((String) L4.w0(c0356nj.a));
        }
        AbstractC0348nb.M(c0658zj.q, null, new C0633yj(c0658zj, null), 3);
    }

    public static String c(long j) {
        double d = j / 1048576.0d;
        if (d >= 1024.0d) {
            Locale locale = Locale.getDefault();
            Double valueOf = Double.valueOf(d / 1024);
            Ki ki = Ki.a;
            return String.format(locale, "%.1f %s", Arrays.copyOf(new Object[]{valueOf, Ki.g().f}, 2));
        }
        StringBuilder sb = new StringBuilder();
        sb.append(C6.O(d));
        sb.append(' ');
        Ki ki2 = Ki.a;
        sb.append(Ki.g().e);
        return sb.toString();
    }

    public static C0533uj f(C0508tj c0508tj) {
        List list = c0508tj.b;
        Rect rect = new Rect(((Do) list.get(0)).c);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            rect.union(((Do) it.next()).c);
        }
        String str = ((Do) list.get(0)).a;
        if (!list.isEmpty()) {
            Iterator it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                if (!((Do) it2.next()).d) {
                    rect = null;
                    break;
                }
            }
        }
        return new C0533uj(str, null, rect, c0508tj);
    }

    public static final boolean h(C0658zj c0658zj, String str, String str2) {
        if (str2.equals(c0658zj.a.getPackageName()) || str2.equals(str)) {
            return false;
        }
        TopOverlayAccessibilityService topOverlayAccessibilityService = c0658zj.a;
        if (topOverlayAccessibilityService.getPackageManager().getLaunchIntentForPackage(str2) == null) {
            return false;
        }
        try {
            int i = topOverlayAccessibilityService.getPackageManager().getApplicationInfo(str2, 0).flags;
            return (i & 1) == 0 || (i & 128) != 0;
        } catch (Exception unused) {
            return false;
        }
    }

    public static Rect i(Bitmap bitmap, Rect rect) {
        float width = bitmap.getWidth() / 1920;
        float height = bitmap.getHeight() / 720;
        Rect rect2 = new Rect((int) (rect.left * width), (int) (rect.top * height), (int) (rect.right * width), (int) (rect.bottom * height));
        if (!rect2.intersect(0, 0, bitmap.getWidth(), bitmap.getHeight()) || rect2.isEmpty()) {
            return null;
        }
        return rect2;
    }

    /* JADX WARN: Type inference failed for: r3v6, types: [S5, java.lang.Object, Mh] */
    public final void d() {
        boolean z = this.m;
        Yk yk = this.k;
        if (z) {
            this.m = false;
            yk.d();
            return;
        }
        View view = this.l;
        if (view == null) {
            return;
        }
        this.l = null;
        InterfaceC0625yb interfaceC0625yb = (InterfaceC0625yb) this.q.a.b(T7.f);
        if (interfaceC0625yb != null) {
            Gb gb = new Gb((Hb) interfaceC0625yb, null);
            ?? obj = new Object();
            obj.d = C6.f(obj, obj, gb);
            while (obj.hasNext()) {
                ((Hb) ((InterfaceC0625yb) obj.next())).m(null);
            }
        }
        try {
            this.b.removeView(view);
        } catch (Exception unused) {
        }
        ArrayList arrayList = this.o;
        List C0 = L4.C0(arrayList);
        arrayList.clear();
        new Handler(Looper.getMainLooper()).post(new O(16, C0));
        yk.d();
    }

    public final C0356nj e(C0533uj c0533uj, Bitmap bitmap) {
        Bitmap b;
        Rect i;
        C0458rj c0458rj;
        Rect i2;
        C0508tj c0508tj = c0533uj.d;
        ArrayList arrayList = this.o;
        Rect rect = c0533uj.c;
        if (c0508tj == null) {
            String str = c0533uj.a;
            if (rect != null && bitmap != null && (i = i(bitmap, rect)) != null) {
                return new C0356nj(AbstractC0348nb.N(str), AbstractC0348nb.N(new C0458rj(bitmap, i, rect)), rect, null);
            }
            Integer num = c0533uj.b;
            if (num == null || (b = Bj.b(num.intValue())) == null) {
                return new C0356nj(AbstractC0348nb.N(str), C0547v8.a, null, null);
            }
            arrayList.add(b);
            Rect rect2 = new Rect(0, 0, b.getWidth(), b.getHeight());
            return new C0356nj(AbstractC0348nb.N(str), AbstractC0348nb.N(new C0458rj(b, rect2, rect2)), rect2, null);
        }
        List<Do> list = c0508tj.b;
        ArrayList arrayList2 = new ArrayList(N4.r0(list));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList2.add(((Do) it.next()).a);
        }
        Rect rect3 = new Rect(((Do) list.get(0)).c);
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            rect3.union(((Do) it2.next()).c);
        }
        int i3 = rect3.top;
        int i4 = c0508tj.c;
        rect3.top = i3 + i4;
        if (rect != null && bitmap != null && (i2 = i(bitmap, rect3)) != null) {
            return new C0356nj(arrayList2, AbstractC0348nb.N(new C0458rj(bitmap, i2, rect3)), rect3, c0508tj);
        }
        ArrayList arrayList3 = new ArrayList();
        for (Do r4 : list) {
            C0149fj c0149fj = Bj.a;
            Bitmap b2 = Bj.b(r4.b);
            if (b2 == null) {
                c0458rj = null;
            } else {
                arrayList.add(b2);
                Rect rect4 = r4.c;
                Rect rect5 = new Rect(0, C6.P((i4 * b2.getHeight()) / rect4.height()), b2.getWidth(), b2.getHeight());
                Rect rect6 = new Rect(rect4);
                rect6.top += i4;
                c0458rj = new C0458rj(b2, rect5, rect6);
            }
            if (c0458rj != null) {
                arrayList3.add(c0458rj);
            }
        }
        return new C0356nj(arrayList2, arrayList3, rect3, c0508tj);
    }

    public final ArrayList g() {
        ActivityInfo activityInfo;
        TopOverlayAccessibilityService topOverlayAccessibilityService = this.a;
        ResolveInfo resolveActivity = topOverlayAccessibilityService.getPackageManager().resolveActivity(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME"), 0);
        String str = (resolveActivity == null || (activityInfo = resolveActivity.activityInfo) == null) ? null : activityInfo.packageName;
        C0508tj c0508tj = (C0508tj) this.d.d();
        List<ActivityManager.RunningAppProcessInfo> list = c0508tj != null ? c0508tj.b : null;
        List<ActivityManager.RunningAppProcessInfo> list2 = C0547v8.a;
        if (list == null) {
            list = list2;
        }
        ArrayList arrayList = new ArrayList(N4.r0(list));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((Do) it.next()).b));
        }
        Set F0 = L4.F0(arrayList);
        List<ActivityManager.RunningAppProcessInfo> list3 = c0508tj != null ? c0508tj.b : null;
        if (list3 == null) {
            list3 = list2;
        }
        ArrayList arrayList2 = new ArrayList(N4.r0(list3));
        Iterator it2 = list3.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((Do) it2.next()).a);
        }
        Set F02 = L4.F0(arrayList2);
        ArrayList arrayList3 = new ArrayList();
        for (Eo eo : (List) this.c.d()) {
            if (F0.contains(Integer.valueOf(eo.b))) {
                if (!arrayList3.isEmpty()) {
                    Iterator it3 = arrayList3.iterator();
                    while (it3.hasNext()) {
                        if (((C0533uj) it3.next()).d != null) {
                            break;
                        }
                    }
                }
                AbstractC0348nb.o(c0508tj);
                arrayList3.add(f(c0508tj));
            } else {
                String str2 = eo.a;
                if (h(this, str, str2)) {
                    int i = eo.b;
                    Integer valueOf = Integer.valueOf(i);
                    if (i <= 0) {
                        valueOf = null;
                    }
                    arrayList3.add(new C0533uj(str2, valueOf, eo.c, null));
                }
            }
        }
        if (c0508tj != null) {
            if (!arrayList3.isEmpty()) {
                Iterator it4 = arrayList3.iterator();
                while (it4.hasNext()) {
                    if (((C0533uj) it4.next()).d == null) {
                    }
                }
            }
            arrayList3.add(f(c0508tj));
        }
        try {
            Object systemService = topOverlayAccessibilityService.getSystemService("activity");
            AbstractC0348nb.p(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) systemService).getRunningAppProcesses();
            if (runningAppProcesses != null) {
                list2 = runningAppProcesses;
            }
            ArrayList arrayList4 = new ArrayList();
            for (Object obj : list2) {
                if (((ActivityManager.RunningAppProcessInfo) obj).importance == 125) {
                    arrayList4.add(obj);
                }
            }
            ArrayList arrayList5 = new ArrayList();
            Iterator it5 = arrayList4.iterator();
            while (it5.hasNext()) {
                String[] strArr = ((ActivityManager.RunningAppProcessInfo) it5.next()).pkgList;
                if (strArr == null) {
                    strArr = new String[0];
                }
                List asList = Arrays.asList(strArr);
                AbstractC0348nb.q(asList, "asList(...)");
                arrayList5.addAll(asList);
            }
            List v0 = L4.v0(arrayList5);
            ArrayList arrayList6 = new ArrayList();
            for (Object obj2 : v0) {
                String str3 = (String) obj2;
                if (!arrayList3.isEmpty()) {
                    Iterator it6 = arrayList3.iterator();
                    while (it6.hasNext()) {
                        if (AbstractC0348nb.g(((C0533uj) it6.next()).a, str3)) {
                            break;
                        }
                    }
                }
                if (!F02.contains(str3) && !s.contains(str3)) {
                    AbstractC0348nb.o(str3);
                    if (h(this, str, str3)) {
                        arrayList6.add(obj2);
                    }
                }
            }
            Iterator it7 = arrayList6.iterator();
            while (it7.hasNext()) {
                String str4 = (String) it7.next();
                AbstractC0348nb.o(str4);
                arrayList3.add(new C0533uj(str4, null, null, null));
            }
        } catch (Exception e) {
            AbstractC0407pi.m(e, new StringBuilder("runningAppProcesses failed: "), "TaskManagerPopup");
        }
        return arrayList3;
    }

    public final void j() {
        String format;
        View view = this.l;
        Hd hd = null;
        TextView textView = view != null ? (TextView) view.findViewById(R.id.taskManagerMemory) : null;
        if (textView == null) {
            return;
        }
        try {
            Object systemService = this.a.getSystemService("activity");
            AbstractC0348nb.p(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            ((ActivityManager) systemService).getMemoryInfo(memoryInfo);
            hd = new Hd(memoryInfo.totalMem, memoryInfo.availMem);
        } catch (Exception unused) {
        }
        if (hd == null) {
            format = "";
        } else {
            Ki ki = Ki.a;
            Aj g = Ki.g();
            long j = hd.a;
            long j2 = hd.b;
            format = String.format(g.d, Arrays.copyOf(new Object[]{c(j - j2), c(j), c(j2)}, 3));
        }
        textView.setText(format);
    }

    public final void k(View view) {
        View findViewById = view.findViewById(R.id.taskManagerEmpty);
        ArrayList arrayList = this.n;
        findViewById.setVisibility(arrayList.isEmpty() ? 0 : 8);
        view.findViewById(R.id.taskManagerCloseAll).setVisibility(arrayList.isEmpty() ? 8 : 0);
        view.findViewById(R.id.taskManagerHint).setVisibility(arrayList.isEmpty() ? 4 : 0);
    }
}
