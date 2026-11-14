package defpackage;

import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.omoda.launcher.data.AppInfo;
import com.omoda.launcher.data.RemoteApp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public final class Y0 extends AbstractC0146fg {
    public final C0100dl d;
    public final C0125el e;
    public final C0125el f;
    public final Ia g;
    public Object h;
    public List i;
    public List j;
    public boolean k;
    public String l;
    public Object m;

    public Y0(C0100dl c0100dl, C0125el c0125el, C0125el c0125el2, Ia ia) {
        this.d = c0100dl;
        this.e = c0125el;
        this.f = c0125el2;
        this.g = ia;
        C0547v8 c0547v8 = C0547v8.a;
        this.h = c0547v8;
        this.i = c0547v8;
        this.j = c0547v8;
        this.m = c0547v8;
    }

    public static Integer g(RecyclerView recyclerView, float f, float f2) {
        Integer num;
        View E = recyclerView.E(f, f2);
        if (E == null) {
            return null;
        }
        Eg N = RecyclerView.N(E);
        int b = N != null ? N.b() : -1;
        if (b == -1) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) E;
        float left = (f - viewGroup.getLeft()) - viewGroup.getTranslationX();
        float top = (f2 - viewGroup.getTop()) - viewGroup.getTranslationY();
        int childCount = viewGroup.getChildCount();
        int i = 0;
        loop0: while (true) {
            if (i >= childCount) {
                num = null;
                break;
            }
            View childAt = viewGroup.getChildAt(i);
            ViewGroup viewGroup2 = childAt instanceof ViewGroup ? (ViewGroup) childAt : null;
            if (viewGroup2 != null && top >= viewGroup2.getTop() && top < viewGroup2.getBottom()) {
                int childCount2 = viewGroup2.getChildCount();
                for (int i2 = 0; i2 < childCount2; i2++) {
                    View childAt2 = viewGroup2.getChildAt(i2);
                    if (left >= childAt2.getLeft() + viewGroup2.getLeft()) {
                        if (left < childAt2.getRight() + viewGroup2.getLeft()) {
                            num = Integer.valueOf((i * 5) + i2);
                            break loop0;
                        }
                    }
                }
            }
            i++;
        }
        if (num != null) {
            return Integer.valueOf((b * 10) + num.intValue());
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.List, java.lang.Object] */
    @Override // defpackage.AbstractC0146fg
    public final int a() {
        return this.h.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01a2  */
    /* JADX WARN: Type inference failed for: r0v10, types: [android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.List, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v2, types: [android.view.LayoutInflater] */
    /* JADX WARN: Type inference failed for: r7v7 */
    @Override // defpackage.AbstractC0146fg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(defpackage.Eg r26, int r27) {
        /*
            Method dump skipped, instructions count: 536
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.Y0.c(Eg, int):void");
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List, java.lang.Object] */
    @Override // defpackage.AbstractC0146fg
    public final void d(Eg eg, int i, List list) {
        ImageView imageView;
        W0 w0 = (W0) eg;
        AbstractC0348nb.r(list, "payloads");
        if (list.isEmpty()) {
            c(w0, i);
            return;
        }
        for (Object obj : list) {
            List list2 = (List) this.h.get(i);
            AbstractC0348nb.p(obj, "null cannot be cast to non-null type kotlin.Int");
            int intValue = ((Integer) obj).intValue();
            AbstractC0348nb.r(list2, "items");
            Object x0 = L4.x0(list2, intValue);
            C0541v2 c0541v2 = x0 instanceof C0541v2 ? (C0541v2) x0 : null;
            if (c0541v2 != null && (imageView = (ImageView) Z2.X(w0.w, intValue)) != null) {
                W0.t(imageView, c0541v2);
            }
        }
    }

    @Override // defpackage.AbstractC0146fg
    public final Eg e(ViewGroup viewGroup) {
        AbstractC0348nb.r(viewGroup, "parent");
        int measuredWidth = viewGroup.getMeasuredWidth();
        int measuredHeight = viewGroup.getMeasuredHeight();
        LinearLayout linearLayout = new LinearLayout(viewGroup.getContext());
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        linearLayout.setLayoutParams(new C0379og(measuredWidth, measuredHeight));
        return new W0(this, linearLayout, measuredHeight);
    }

    @Override // defpackage.AbstractC0146fg
    public final void f(Eg eg) {
        ((W0) eg).u();
    }

    public final int h(String str) {
        AbstractC0348nb.r(str, "key");
        Iterator it = this.i.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (AbstractC0348nb.g(((AppInfo) it.next()).getKey(), str)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [java.util.List, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.util.List, java.lang.Object] */
    public final void i() {
        C0172gg c0172gg;
        Object obj;
        C0541v2 c0541v2;
        Bitmap bitmap;
        List list = this.i;
        ArrayList arrayList = new ArrayList(N4.r0(list));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((AppInfo) it.next()).getPackageName());
        }
        Set F0 = L4.F0(arrayList);
        ArrayList arrayList2 = new ArrayList();
        List list2 = this.i;
        ArrayList arrayList3 = new ArrayList(N4.r0(list2));
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList3.add(new C0516u2((AppInfo) it2.next()));
        }
        arrayList2.addAll(arrayList3);
        List list3 = this.j;
        ArrayList arrayList4 = new ArrayList();
        for (Object obj2 : list3) {
            if (!F0.contains(((RemoteApp) obj2).getPackageName())) {
                arrayList4.add(obj2);
            }
        }
        List A0 = L4.A0(arrayList4, new X0(0, new X0(1, new G0(1))));
        ArrayList arrayList5 = new ArrayList(N4.r0(A0));
        Iterator it3 = A0.iterator();
        while (it3.hasNext()) {
            arrayList5.add(new C0541v2((RemoteApp) it3.next()));
        }
        arrayList2.addAll(arrayList5);
        HashMap hashMap = new HashMap();
        Iterator it4 = this.h.iterator();
        while (it4.hasNext()) {
            for (AbstractC0566w2 abstractC0566w2 : (List) it4.next()) {
                if ((abstractC0566w2 instanceof C0541v2) && (bitmap = (c0541v2 = (C0541v2) abstractC0566w2).b) != null) {
                    hashMap.put(Integer.valueOf(c0541v2.a.getId()), bitmap);
                }
            }
        }
        Iterator it5 = arrayList2.iterator();
        while (it5.hasNext()) {
            AbstractC0566w2 abstractC0566w22 = (AbstractC0566w2) it5.next();
            if (abstractC0566w22 instanceof C0541v2) {
                C0541v2 c0541v22 = (C0541v2) abstractC0566w22;
                if (c0541v22.b == null) {
                    c0541v22.b = (Bitmap) hashMap.get(Integer.valueOf(c0541v22.a.getId()));
                }
            }
        }
        AbstractC0171gf.b(10, 10);
        int size = arrayList2.size();
        int i = 0;
        ArrayList arrayList6 = new ArrayList((size / 10) + (size % 10 == 0 ? 0 : 1));
        for (int i2 = 0; i2 >= 0 && i2 < size; i2 += 10) {
            int i3 = size - i2;
            if (10 <= i3) {
                i3 = 10;
            }
            ArrayList arrayList7 = new ArrayList(i3);
            for (int i4 = 0; i4 < i3; i4++) {
                arrayList7.add(arrayList2.get(i4 + i2));
            }
            arrayList6.add(arrayList7);
        }
        ?? r0 = this.m;
        ArrayList arrayList8 = new ArrayList(N4.r0(arrayList6));
        Iterator it6 = arrayList6.iterator();
        while (it6.hasNext()) {
            List<AbstractC0566w2> list4 = (List) it6.next();
            ArrayList arrayList9 = new ArrayList(N4.r0(list4));
            for (AbstractC0566w2 abstractC0566w23 : list4) {
                if (abstractC0566w23 instanceof C0516u2) {
                    C0516u2 c0516u2 = (C0516u2) abstractC0566w23;
                    String key = c0516u2.a.getKey();
                    AppInfo appInfo = c0516u2.a;
                    obj = M4.p0(key, appInfo.getLabel(), Long.valueOf(appInfo.getLastUpdateTime()), Boolean.valueOf(appInfo.getDimmed()));
                } else {
                    if (!(abstractC0566w23 instanceof C0541v2)) {
                        throw new RuntimeException();
                    }
                    obj = ((C0541v2) abstractC0566w23).a;
                }
                arrayList9.add(obj);
            }
            arrayList8.add(arrayList9);
        }
        this.h = arrayList6;
        this.m = arrayList8;
        int min = Math.min(r0.size(), arrayList8.size());
        while (true) {
            c0172gg = this.a;
            if (i >= min) {
                break;
            }
            if (!AbstractC0348nb.g(r0.get(i), arrayList8.get(i))) {
                c0172gg.c(i, 1, null);
            }
            i++;
        }
        if (arrayList8.size() > min) {
            c0172gg.d(min, arrayList8.size() - min);
        }
        if (r0.size() > min) {
            c0172gg.e(min, r0.size() - min);
        }
    }

    public final void j(String str) {
        if (AbstractC0348nb.g(this.l, str)) {
            return;
        }
        String str2 = this.l;
        this.l = str;
        List W = Z2.W(new String[]{str2, str});
        ArrayList arrayList = new ArrayList();
        Iterator it = ((ArrayList) W).iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            int h = h((String) it.next());
            Integer valueOf = Integer.valueOf(h);
            if (h < 0) {
                valueOf = null;
            }
            Integer valueOf2 = valueOf != null ? Integer.valueOf(valueOf.intValue() / 10) : null;
            if (valueOf2 != null) {
                arrayList.add(valueOf2);
            }
        }
        Iterator it2 = L4.v0(arrayList).iterator();
        while (it2.hasNext()) {
            this.a.c(((Number) it2.next()).intValue(), 1, null);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, java.lang.Iterable] */
    public final void k(int i, Bitmap bitmap) {
        int i2 = 0;
        for (Object obj : this.h) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                M4.q0();
                throw null;
            }
            int i4 = 0;
            for (Object obj2 : (List) obj) {
                int i5 = i4 + 1;
                if (i4 < 0) {
                    M4.q0();
                    throw null;
                }
                AbstractC0566w2 abstractC0566w2 = (AbstractC0566w2) obj2;
                if (abstractC0566w2 instanceof C0541v2) {
                    C0541v2 c0541v2 = (C0541v2) abstractC0566w2;
                    if (c0541v2.a.getId() == i && c0541v2.b != bitmap) {
                        c0541v2.b = bitmap;
                        this.a.c(i2, 1, Integer.valueOf(i4));
                    }
                }
                i4 = i5;
            }
            i2 = i3;
        }
    }
}
