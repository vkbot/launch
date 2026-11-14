package defpackage;

import android.content.Context;
import android.icu.text.DateFormat;
import android.icu.text.DisplayContext;
import android.icu.util.TimeZone;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.datepicker.c;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: ud, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0527ud extends AbstractC0455rg {
    public final /* synthetic */ int a = 1;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public C0527ud(C0323mc c0323mc, LinearLayoutManager linearLayoutManager, LinearLayout linearLayout) {
        this.b = c0323mc;
        this.c = linearLayoutManager;
        this.d = linearLayout;
    }

    @Override // defpackage.AbstractC0455rg
    public final void a(RecyclerView recyclerView, int i) {
        switch (this.a) {
            case 0:
                if (i == 0) {
                    recyclerView.announceForAccessibility(((MaterialButton) this.c).getText());
                    return;
                }
                return;
            default:
                AbstractC0348nb.r(recyclerView, "rv");
                if (i == 0) {
                    c();
                    return;
                }
                return;
        }
    }

    @Override // defpackage.AbstractC0455rg
    public final void b(RecyclerView recyclerView, int i, int i2) {
        switch (this.a) {
            case 0:
                C0552vd c0552vd = (C0552vd) this.d;
                int K0 = i < 0 ? ((LinearLayoutManager) c0552vd.Y.getLayoutManager()).K0() : ((LinearLayoutManager) c0552vd.Y.getLayoutManager()).L0();
                H3 h3 = ((c) this.b).d;
                Calendar a = AbstractC0561vm.a(h3.a.a);
                a.add(2, K0);
                c0552vd.U = new C0325me(a);
                Calendar a2 = AbstractC0561vm.a(h3.a.a);
                a2.add(2, K0);
                a2.set(5, 1);
                Calendar a3 = AbstractC0561vm.a(a2);
                a3.get(2);
                a3.get(1);
                a3.getMaximum(7);
                a3.getActualMaximum(5);
                a3.getTimeInMillis();
                long timeInMillis = a3.getTimeInMillis();
                Locale locale = Locale.getDefault();
                AtomicReference atomicReference = AbstractC0561vm.a;
                DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton("yMMMM", locale);
                instanceForSkeleton.setTimeZone(TimeZone.getTimeZone("UTC"));
                instanceForSkeleton.setContext(DisplayContext.CAPITALIZATION_FOR_STANDALONE);
                ((MaterialButton) this.c).setText(instanceForSkeleton.format(new Date(timeInMillis)));
                return;
            default:
                AbstractC0348nb.r(recyclerView, "rv");
                if (recyclerView.getScrollState() == 0) {
                    c();
                    return;
                }
                return;
        }
    }

    public void c() {
        View g = ((C0323mc) this.b).g((LinearLayoutManager) this.c);
        if (g == null) {
            return;
        }
        int F = AbstractC0353ng.F(g);
        LinearLayout linearLayout = (LinearLayout) this.d;
        Zj zj = T7.n;
        if (zj == null) {
            AbstractC0348nb.j0("indicator");
            throw null;
        }
        Context context = linearLayout.getContext();
        AbstractC0348nb.q(context, "getContext(...)");
        int identifier = context.getResources().getIdentifier(zj.a, "drawable", context.getPackageName());
        Zj zj2 = T7.n;
        if (zj2 == null) {
            AbstractC0348nb.j0("indicator");
            throw null;
        }
        Context context2 = linearLayout.getContext();
        AbstractC0348nb.q(context2, "getContext(...)");
        int identifier2 = context2.getResources().getIdentifier(zj2.b, "drawable", context2.getPackageName());
        int childCount = linearLayout.getChildCount();
        int i = 0;
        while (i < childCount) {
            View childAt = linearLayout.getChildAt(i);
            AbstractC0348nb.p(childAt, "null cannot be cast to non-null type android.widget.ImageView");
            ((ImageView) childAt).setImageResource(i == F ? identifier2 : identifier);
            i++;
        }
    }

    public C0527ud(C0552vd c0552vd, c cVar, MaterialButton materialButton) {
        this.d = c0552vd;
        this.b = cVar;
        this.c = materialButton;
    }
}
