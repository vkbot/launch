package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.omoda.launcher.R;
import java.util.Iterator;

/* renamed from: z2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0641z2 {
    public final View a;
    public final boolean b;
    public final Yk c;
    public final C0074cl d;
    public final boolean e;
    public final Ia f;
    public final Yk g;
    public final Y0 h;
    public final RecyclerView i;
    public final LinearLayout j;
    public final ProgressBar k;
    public final TextView l;
    public final View m;
    public final View n;
    public final ImageView o;
    public final View p;
    public final View q;
    public final K2 r;

    public C0641z2(View view, boolean z, C0100dl c0100dl, Yk yk, C0074cl c0074cl, Yk yk2, C0125el c0125el, C0125el c0125el2, boolean z2, Ia ia, Yk yk3, boolean z3) {
        final int i = 0;
        AbstractC0348nb.r(view, "view");
        this.a = view;
        this.b = z;
        this.c = yk;
        this.d = c0074cl;
        this.e = z2;
        this.f = ia;
        this.g = yk3;
        View findViewById = view.findViewById(R.id.appListPager);
        AbstractC0348nb.q(findViewById, "findViewById(...)");
        RecyclerView recyclerView = (RecyclerView) findViewById;
        this.i = recyclerView;
        View findViewById2 = view.findViewById(R.id.appListDots);
        AbstractC0348nb.q(findViewById2, "findViewById(...)");
        LinearLayout linearLayout = (LinearLayout) findViewById2;
        this.j = linearLayout;
        View findViewById3 = view.findViewById(R.id.appListLoader);
        AbstractC0348nb.q(findViewById3, "findViewById(...)");
        this.k = (ProgressBar) findViewById3;
        Context context = view.getContext();
        View findViewById4 = view.findViewById(R.id.appListDeleteHint);
        AbstractC0348nb.q(findViewById4, "findViewById(...)");
        this.l = (TextView) findViewById4;
        View findViewById5 = view.findViewById(R.id.appListRefresh);
        AbstractC0348nb.q(findViewById5, "findViewById(...)");
        this.m = findViewById5;
        View findViewById6 = view.findViewById(R.id.appListSettings);
        AbstractC0348nb.q(findViewById6, "findViewById(...)");
        this.n = findViewById6;
        View findViewById7 = view.findViewById(R.id.appListReorder);
        AbstractC0348nb.q(findViewById7, "findViewById(...)");
        ImageView imageView = (ImageView) findViewById7;
        this.o = imageView;
        View findViewById8 = view.findViewById(R.id.appListSortAz);
        AbstractC0348nb.q(findViewById8, "findViewById(...)");
        this.p = findViewById8;
        View findViewById9 = view.findViewById(R.id.appListTasks);
        AbstractC0348nb.q(findViewById9, "findViewById(...)");
        this.q = findViewById9;
        TextView textView = (TextView) view.findViewById(R.id.appListTitle);
        Ki ki = Ki.a;
        A2 a2 = Ki.e;
        if (a2 == null) {
            AbstractC0348nb.j0("appList");
            throw null;
        }
        textView.setText(a2.a);
        View findViewById10 = view.findViewById(R.id.appListBack);
        if (!z3) {
            findViewById10.setVisibility(8);
        }
        findViewById5.setOnClickListener(new View.OnClickListener(this) { // from class: x2
            public final /* synthetic */ C0641z2 b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                switch (i) {
                    case 0:
                        C0641z2 c0641z2 = this.b;
                        AbstractC0348nb.r(c0641z2, "this$0");
                        c0641z2.d.d();
                        return;
                    case 1:
                        C0641z2 c0641z22 = this.b;
                        AbstractC0348nb.r(c0641z22, "this$0");
                        c0641z22.c(false);
                        c0641z22.c.d();
                        return;
                    case 2:
                        C0641z2 c0641z23 = this.b;
                        AbstractC0348nb.r(c0641z23, "this$0");
                        c0641z23.c(!c0641z23.r.c);
                        return;
                    default:
                        C0641z2 c0641z24 = this.b;
                        AbstractC0348nb.r(c0641z24, "this$0");
                        Ia ia2 = c0641z24.f;
                        switch (ia2.a) {
                            case 0:
                                ia2.b.clear();
                                break;
                            default:
                                ia2.b.clear();
                                break;
                        }
                        Y0 y0 = c0641z24.h;
                        y0.i = y0.g.a(y0.i);
                        y0.i();
                        return;
                }
            }
        });
        final int i2 = 1;
        findViewById10.setOnClickListener(new View.OnClickListener(this) { // from class: x2
            public final /* synthetic */ C0641z2 b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                switch (i2) {
                    case 0:
                        C0641z2 c0641z2 = this.b;
                        AbstractC0348nb.r(c0641z2, "this$0");
                        c0641z2.d.d();
                        return;
                    case 1:
                        C0641z2 c0641z22 = this.b;
                        AbstractC0348nb.r(c0641z22, "this$0");
                        c0641z22.c(false);
                        c0641z22.c.d();
                        return;
                    case 2:
                        C0641z2 c0641z23 = this.b;
                        AbstractC0348nb.r(c0641z23, "this$0");
                        c0641z23.c(!c0641z23.r.c);
                        return;
                    default:
                        C0641z2 c0641z24 = this.b;
                        AbstractC0348nb.r(c0641z24, "this$0");
                        Ia ia2 = c0641z24.f;
                        switch (ia2.a) {
                            case 0:
                                ia2.b.clear();
                                break;
                            default:
                                ia2.b.clear();
                                break;
                        }
                        Y0 y0 = c0641z24.h;
                        y0.i = y0.g.a(y0.i);
                        y0.i();
                        return;
                }
            }
        });
        findViewById6.setOnClickListener(new ViewOnClickListenerC0616y2(0, yk2));
        if (yk3 != null) {
            findViewById9.setOnClickListener(new ViewOnClickListenerC0616y2(1, yk3));
        }
        Y0 y0 = new Y0(c0100dl, c0125el, c0125el2, ia);
        this.h = y0;
        AbstractC0348nb.q(context, "ctx");
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(0);
        recyclerView.setLayoutManager(linearLayoutManager);
        recyclerView.setAdapter(y0);
        recyclerView.setItemAnimator(null);
        C0323mc c0323mc = new C0323mc(1);
        c0323mc.a(recyclerView);
        recyclerView.j(new C0527ud(c0323mc, linearLayoutManager, linearLayout));
        this.r = new K2(recyclerView, y0);
        final int i3 = 2;
        imageView.setOnClickListener(new View.OnClickListener(this) { // from class: x2
            public final /* synthetic */ C0641z2 b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                switch (i3) {
                    case 0:
                        C0641z2 c0641z2 = this.b;
                        AbstractC0348nb.r(c0641z2, "this$0");
                        c0641z2.d.d();
                        return;
                    case 1:
                        C0641z2 c0641z22 = this.b;
                        AbstractC0348nb.r(c0641z22, "this$0");
                        c0641z22.c(false);
                        c0641z22.c.d();
                        return;
                    case 2:
                        C0641z2 c0641z23 = this.b;
                        AbstractC0348nb.r(c0641z23, "this$0");
                        c0641z23.c(!c0641z23.r.c);
                        return;
                    default:
                        C0641z2 c0641z24 = this.b;
                        AbstractC0348nb.r(c0641z24, "this$0");
                        Ia ia2 = c0641z24.f;
                        switch (ia2.a) {
                            case 0:
                                ia2.b.clear();
                                break;
                            default:
                                ia2.b.clear();
                                break;
                        }
                        Y0 y02 = c0641z24.h;
                        y02.i = y02.g.a(y02.i);
                        y02.i();
                        return;
                }
            }
        });
        final int i4 = 3;
        findViewById8.setOnClickListener(new View.OnClickListener(this) { // from class: x2
            public final /* synthetic */ C0641z2 b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                switch (i4) {
                    case 0:
                        C0641z2 c0641z2 = this.b;
                        AbstractC0348nb.r(c0641z2, "this$0");
                        c0641z2.d.d();
                        return;
                    case 1:
                        C0641z2 c0641z22 = this.b;
                        AbstractC0348nb.r(c0641z22, "this$0");
                        c0641z22.c(false);
                        c0641z22.c.d();
                        return;
                    case 2:
                        C0641z2 c0641z23 = this.b;
                        AbstractC0348nb.r(c0641z23, "this$0");
                        c0641z23.c(!c0641z23.r.c);
                        return;
                    default:
                        C0641z2 c0641z24 = this.b;
                        AbstractC0348nb.r(c0641z24, "this$0");
                        Ia ia2 = c0641z24.f;
                        switch (ia2.a) {
                            case 0:
                                ia2.b.clear();
                                break;
                            default:
                                ia2.b.clear();
                                break;
                        }
                        Y0 y02 = c0641z24.h;
                        y02.i = y02.g.a(y02.i);
                        y02.i();
                        return;
                }
            }
        });
        d();
    }

    public final void a() {
        Wj wj = T7.r;
        if (wj == null) {
            AbstractC0348nb.j0("color");
            throw null;
        }
        View view = this.a;
        TextView textView = (TextView) view.findViewById(R.id.appListTitle);
        int i = wj.a;
        if (textView != null) {
            textView.setTextColor(i);
        }
        TextView textView2 = (TextView) view.findViewById(R.id.appListDeleteHint);
        if (textView2 != null) {
            textView2.setTextColor(wj.b);
        }
        TextView textView3 = (TextView) view.findViewById(R.id.appListError);
        if (textView3 != null) {
            textView3.setTextColor(wj.j);
        }
        View findViewById = view.findViewById(R.id.appListHeaderDivider);
        if (findViewById != null) {
            findViewById.setBackgroundColor(wj.m);
        }
        this.k.setIndeterminateTintList(ColorStateList.valueOf(i));
        Iterator it = M4.p0(Integer.valueOf(R.id.appListBack), Integer.valueOf(R.id.appListSettings), Integer.valueOf(R.id.appListRefresh), Integer.valueOf(R.id.appListReorder), Integer.valueOf(R.id.appListSortAz), Integer.valueOf(R.id.appListTasks)).iterator();
        while (it.hasNext()) {
            AbstractC0145ff.F((ImageView) view.findViewById(((Number) it.next()).intValue()));
        }
        this.h.a.b();
    }

    public final void b(String str) {
        TextView textView = (TextView) this.a.findViewById(R.id.appListError);
        if (textView == null) {
            return;
        }
        if (str == null || str.length() == 0) {
            textView.setVisibility(8);
        } else {
            textView.setText(str);
            textView.setVisibility(0);
        }
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [java.util.List, java.lang.Object] */
    public final void c(boolean z) {
        if (!z || this.e) {
            K2 k2 = this.r;
            if (k2.c != z) {
                k2.c = z;
                if (!z) {
                    k2.d();
                }
                Y0 y0 = k2.b;
                if (y0.k != z) {
                    y0.k = z;
                    y0.a.c(0, y0.h.size(), null);
                }
            }
            d();
        }
    }

    public final void d() {
        String str;
        boolean z = this.r.c;
        this.m.setVisibility(z ? 8 : 0);
        this.q.setVisibility((this.g == null || z) ? 8 : 0);
        this.n.setVisibility((!this.b || z) ? 8 : 0);
        int i = this.e ? 0 : 8;
        ImageView imageView = this.o;
        imageView.setVisibility(i);
        imageView.setImageResource(z ? R.drawable.ic_btn_done : R.drawable.ic_btn_reorder);
        this.p.setVisibility(z ? 0 : 8);
        if (z) {
            Ki ki = Ki.a;
            A2 a2 = Ki.e;
            if (a2 == null) {
                AbstractC0348nb.j0("appList");
                throw null;
            }
            str = a2.c;
        } else {
            Ki ki2 = Ki.a;
            A2 a22 = Ki.e;
            if (a22 == null) {
                AbstractC0348nb.j0("appList");
                throw null;
            }
            str = a22.b;
        }
        TextView textView = this.l;
        textView.setText(str);
        textView.setVisibility(0);
    }
}
