package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.omoda.launcher.R;
import java.util.Iterator;
import java.util.List;

/* renamed from: oj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0382oj extends AbstractC0146fg {
    public final /* synthetic */ C0658zj d;

    public C0382oj(C0658zj c0658zj) {
        this.d = c0658zj;
    }

    @Override // defpackage.AbstractC0146fg
    public final int a() {
        return this.d.n.size();
    }

    @Override // defpackage.AbstractC0146fg
    public final void d(Eg eg, int i, List list) {
        C0434qj c0434qj = (C0434qj) eg;
        AbstractC0348nb.r(list, "payloads");
        if (!list.isEmpty()) {
            if (!list.isEmpty()) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    if (!AbstractC0348nb.g(it.next(), "memory")) {
                    }
                }
            }
            c0434qj.t((C0356nj) this.d.n.get(i));
            return;
        }
        c(c0434qj, i);
    }

    @Override // defpackage.AbstractC0146fg
    public final Eg e(ViewGroup viewGroup) {
        AbstractC0348nb.r(viewGroup, "parent");
        C0658zj c0658zj = this.d;
        View inflate = LayoutInflater.from(c0658zj.a).inflate(R.layout.task_manager_card, viewGroup, false);
        AbstractC0348nb.q(inflate, "inflate(...)");
        return new C0434qj(c0658zj, inflate);
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0075, code lost:
    
        if (r0 != null) goto L13;
     */
    @Override // defpackage.AbstractC0146fg
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(defpackage.C0434qj r7, int r8) {
        /*
            r6 = this;
            zj r6 = r6.d
            java.util.ArrayList r6 = r6.n
            java.lang.Object r6 = r6.get(r8)
            nj r6 = (defpackage.C0356nj) r6
            java.lang.String r8 = "card"
            defpackage.AbstractC0348nb.r(r6, r8)
            java.util.List r8 = r6.a
            r0 = 0
            android.view.View r1 = r7.a
            r1.setTranslationY(r0)
            r0 = 1065353216(0x3f800000, float:1.0)
            r1.setAlpha(r0)
            android.widget.ImageView r0 = r7.y
            r2 = 1
            r0.setEnabled(r2)
            android.view.ViewGroup$LayoutParams r0 = r1.getLayoutParams()
            zj r3 = r7.A
            int r4 = defpackage.C0658zj.a(r3, r6)
            com.omoda.launcher.service.TopOverlayAccessibilityService r3 = r3.a
            r0.width = r4
            r1.setLayoutParams(r0)
            android.widget.ImageView r0 = r7.u
            android.graphics.drawable.Drawable r4 = r7.u(r6)
            r0.setImageDrawable(r4)
            tj r0 = r6.d
            if (r0 == 0) goto L78
            Ki r4 = defpackage.Ki.a
            Aj r4 = defpackage.Ki.g()
            java.lang.String r4 = r4.h
            java.lang.Integer r0 = r0.a
            if (r0 == 0) goto L65
            int r0 = r0.intValue()
            java.util.Locale r5 = java.util.Locale.getDefault()
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            java.lang.Object[] r0 = new java.lang.Object[]{r0}
            java.lang.Object[] r0 = java.util.Arrays.copyOf(r0, r2)
            java.lang.String r0 = java.lang.String.format(r5, r4, r0)
            goto L75
        L65:
            java.lang.String r0 = "%1$d"
            java.lang.String r2 = ""
            java.lang.String r0 = defpackage.Si.N(r4, r0, r2)
            java.lang.CharSequence r0 = defpackage.Si.R(r0)
            java.lang.String r0 = r0.toString()
        L75:
            if (r0 == 0) goto L78
            goto L98
        L78:
            android.content.pm.PackageManager r0 = r3.getPackageManager()     // Catch: java.lang.Exception -> L91
            android.content.pm.PackageManager r2 = r3.getPackageManager()     // Catch: java.lang.Exception -> L91
            java.lang.Object r3 = defpackage.L4.w0(r8)     // Catch: java.lang.Exception -> L91
            java.lang.String r3 = (java.lang.String) r3     // Catch: java.lang.Exception -> L91
            r4 = 0
            android.content.pm.ApplicationInfo r2 = r2.getApplicationInfo(r3, r4)     // Catch: java.lang.Exception -> L91
            java.lang.CharSequence r8 = r0.getApplicationLabel(r2)     // Catch: java.lang.Exception -> L91
        L8f:
            r0 = r8
            goto L98
        L91:
            java.lang.Object r8 = defpackage.L4.w0(r8)
            java.lang.String r8 = (java.lang.String) r8
            goto L8f
        L98:
            android.widget.TextView r8 = r7.v
            r8.setText(r0)
            java.lang.CharSequence r8 = r8.getText()
            r1.setContentDescription(r8)
            java.util.List r8 = r6.b
            boolean r0 = r8.isEmpty()
            r1 = 0
            if (r0 != 0) goto Lb7
            android.graphics.Rect r0 = r6.c
            if (r0 == 0) goto Lb7
            sj r2 = new sj
            r2.<init>(r0, r8)
            goto Lb8
        Lb7:
            r2 = r1
        Lb8:
            android.widget.ImageView r0 = r7.x
            r0.setImageDrawable(r2)
            boolean r8 = r8.isEmpty()
            if (r8 == 0) goto Lc7
            android.graphics.drawable.Drawable r1 = r7.u(r6)
        Lc7:
            android.widget.ImageView r8 = r7.w
            r8.setImageDrawable(r1)
            r7.t(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0382oj.c(qj, int):void");
    }
}
