package defpackage;

import android.animation.ObjectAnimator;
import android.view.View;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class S8 extends Xl {
    public static final String[] x = {"android:visibility:visibility", "android:visibility:parent"};
    public final int w;

    public S8(int i) {
        this();
        this.w = i;
    }

    public static void F(C0075cm c0075cm) {
        int visibility = c0075cm.b.getVisibility();
        HashMap hashMap = c0075cm.a;
        hashMap.put("android:visibility:visibility", Integer.valueOf(visibility));
        View view = c0075cm.b;
        hashMap.put("android:visibility:parent", view.getParent());
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        hashMap.put("android:visibility:screenLocation", iArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0059 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0035  */
    /* JADX WARN: Type inference failed for: r0v0, types: [Kn, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.Kn H(defpackage.C0075cm r8, defpackage.C0075cm r9) {
        /*
            Kn r0 = new Kn
            r0.<init>()
            r1 = 0
            r0.a = r1
            r0.b = r1
            r2 = 0
            r3 = -1
            java.lang.String r4 = "android:visibility:parent"
            java.lang.String r5 = "android:visibility:visibility"
            if (r8 == 0) goto L2f
            java.util.HashMap r6 = r8.a
            boolean r7 = r6.containsKey(r5)
            if (r7 == 0) goto L2f
            java.lang.Object r7 = r6.get(r5)
            java.lang.Integer r7 = (java.lang.Integer) r7
            int r7 = r7.intValue()
            r0.c = r7
            java.lang.Object r6 = r6.get(r4)
            android.view.ViewGroup r6 = (android.view.ViewGroup) r6
            r0.e = r6
            goto L33
        L2f:
            r0.c = r3
            r0.e = r2
        L33:
            if (r9 == 0) goto L52
            java.util.HashMap r6 = r9.a
            boolean r7 = r6.containsKey(r5)
            if (r7 == 0) goto L52
            java.lang.Object r2 = r6.get(r5)
            java.lang.Integer r2 = (java.lang.Integer) r2
            int r2 = r2.intValue()
            r0.d = r2
            java.lang.Object r2 = r6.get(r4)
            android.view.ViewGroup r2 = (android.view.ViewGroup) r2
            r0.f = r2
            goto L56
        L52:
            r0.d = r3
            r0.f = r2
        L56:
            r2 = 1
            if (r8 == 0) goto L8a
            if (r9 == 0) goto L8a
            int r8 = r0.c
            int r9 = r0.d
            if (r8 != r9) goto L68
            android.view.ViewGroup r3 = r0.e
            android.view.ViewGroup r4 = r0.f
            if (r3 != r4) goto L68
            return r0
        L68:
            if (r8 == r9) goto L78
            if (r8 != 0) goto L71
            r0.b = r1
            r0.a = r2
            goto L9f
        L71:
            if (r9 != 0) goto L9f
            r0.b = r2
            r0.a = r2
            goto L9f
        L78:
            android.view.ViewGroup r8 = r0.f
            if (r8 != 0) goto L81
            r0.b = r1
            r0.a = r2
            goto L9f
        L81:
            android.view.ViewGroup r8 = r0.e
            if (r8 != 0) goto L9f
            r0.b = r2
            r0.a = r2
            goto L9f
        L8a:
            if (r8 != 0) goto L95
            int r8 = r0.d
            if (r8 != 0) goto L95
            r0.b = r2
            r0.a = r2
            goto L9f
        L95:
            if (r9 != 0) goto L9f
            int r8 = r0.c
            if (r8 != 0) goto L9f
            r0.b = r1
            r0.a = r2
        L9f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.S8.H(cm, cm):Kn");
    }

    public final ObjectAnimator G(View view, float f, float f2) {
        if (f == f2) {
            return null;
        }
        C0057c4 c0057c4 = Cn.a;
        view.setTransitionAlpha(f);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, Cn.a, f2);
        ofFloat.addListener(new R8(view));
        a(new Q8(0, view));
        return ofFloat;
    }

    @Override // defpackage.Xl
    public final void c(C0075cm c0075cm) {
        F(c0075cm);
    }

    @Override // defpackage.Xl
    public final void f(C0075cm c0075cm) {
        F(c0075cm);
        HashMap hashMap = c0075cm.a;
        C0057c4 c0057c4 = Cn.a;
        hashMap.put("android:fade:transitionAlpha", Float.valueOf(c0075cm.b.getTransitionAlpha()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0048, code lost:
    
        if (H(m(r3, false), p(r3, false)).a != false) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01cd  */
    @Override // defpackage.Xl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.animation.Animator j(android.view.ViewGroup r22, defpackage.C0075cm r23, defpackage.C0075cm r24) {
        /*
            Method dump skipped, instructions count: 697
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.S8.j(android.view.ViewGroup, cm, cm):android.animation.Animator");
    }

    @Override // defpackage.Xl
    public final String[] o() {
        return x;
    }

    @Override // defpackage.Xl
    public final boolean q(C0075cm c0075cm, C0075cm c0075cm2) {
        if (c0075cm == null && c0075cm2 == null) {
            return false;
        }
        if (c0075cm != null && c0075cm2 != null && c0075cm2.a.containsKey("android:visibility:visibility") != c0075cm.a.containsKey("android:visibility:visibility")) {
            return false;
        }
        Kn H = H(c0075cm, c0075cm2);
        if (H.a) {
            return H.c == 0 || H.d == 0;
        }
        return false;
    }

    public S8() {
        this.w = 3;
    }
}
