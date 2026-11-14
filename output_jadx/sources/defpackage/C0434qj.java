package defpackage;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.omoda.launcher.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: qj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0434qj extends Eg {
    public final /* synthetic */ C0658zj A;
    public final ImageView u;
    public final TextView v;
    public final ImageView w;
    public final ImageView x;
    public final ImageView y;
    public final TextView z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0434qj(C0658zj c0658zj, View view) {
        super(view);
        this.A = c0658zj;
        View findViewById = view.findViewById(R.id.taskCardIcon);
        AbstractC0348nb.q(findViewById, "findViewById(...)");
        this.u = (ImageView) findViewById;
        View findViewById2 = view.findViewById(R.id.taskCardName);
        AbstractC0348nb.q(findViewById2, "findViewById(...)");
        TextView textView = (TextView) findViewById2;
        this.v = textView;
        View findViewById3 = view.findViewById(R.id.taskCardBigIcon);
        AbstractC0348nb.q(findViewById3, "findViewById(...)");
        this.w = (ImageView) findViewById3;
        View findViewById4 = view.findViewById(R.id.taskCardImage);
        AbstractC0348nb.q(findViewById4, "findViewById(...)");
        this.x = (ImageView) findViewById4;
        View findViewById5 = view.findViewById(R.id.taskCardClose);
        AbstractC0348nb.q(findViewById5, "findViewById(...)");
        ImageView imageView = (ImageView) findViewById5;
        this.y = imageView;
        View findViewById6 = view.findViewById(R.id.taskCardMemory);
        AbstractC0348nb.q(findViewById6, "findViewById(...)");
        TextView textView2 = (TextView) findViewById6;
        this.z = textView2;
        Wj wj = T7.r;
        if (wj == null) {
            AbstractC0348nb.j0("color");
            throw null;
        }
        textView2.setTextColor(wj.b);
        AbstractC0145ff.F(imageView);
        imageView.setOnClickListener(new ViewOnClickListenerC0408pj(this, view, c0658zj, 0));
        float f = c0658zj.a.getResources().getDisplayMetrics().density;
        View findViewById7 = view.findViewById(R.id.taskCardPreview);
        GradientDrawable gradientDrawable = new GradientDrawable();
        Wj wj2 = T7.r;
        if (wj2 == null) {
            AbstractC0348nb.j0("color");
            throw null;
        }
        gradientDrawable.setColor(wj2.p);
        int i = (int) (2 * f);
        Wj wj3 = T7.r;
        if (wj3 == null) {
            AbstractC0348nb.j0("color");
            throw null;
        }
        gradientDrawable.setStroke(i, wj3.o);
        gradientDrawable.setCornerRadius(c0658zj.a.getResources().getDimension(R.dimen.task_card_corner));
        findViewById7.setBackground(gradientDrawable);
        findViewById7.setClipToOutline(true);
        Wj wj4 = T7.r;
        if (wj4 == null) {
            AbstractC0348nb.j0("color");
            throw null;
        }
        textView.setTextColor(wj4.f);
        view.setOnClickListener(new U0(c0658zj, 2, this));
    }

    public final void t(C0356nj c0356nj) {
        AbstractC0348nb.r(c0356nj, "card");
        Map map = this.A.r;
        ArrayList arrayList = new ArrayList();
        Iterator it = c0356nj.a.iterator();
        while (it.hasNext()) {
            Long l = map != null ? (Long) map.get((String) it.next()) : null;
            if (l != null) {
                arrayList.add(l);
            }
        }
        String str = "";
        if (map != null) {
            if (arrayList.isEmpty()) {
                Ki ki = Ki.a;
                str = Ki.g().g;
            } else {
                Iterator it2 = arrayList.iterator();
                long j = 0;
                long j2 = 0;
                while (it2.hasNext()) {
                    j2 += ((Number) it2.next()).longValue();
                }
                if (j2 != 0) {
                    Iterator it3 = arrayList.iterator();
                    while (it3.hasNext()) {
                        j += ((Number) it3.next()).longValue();
                    }
                    str = C0658zj.c(j);
                }
            }
        }
        this.z.setText(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Drawable u(C0356nj c0356nj) {
        List v0 = L4.v0(c0356nj.a);
        ArrayList arrayList = new ArrayList();
        Iterator it = v0.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            try {
                r3 = this.A.a.getPackageManager().getApplicationIcon((String) it.next());
            } catch (Exception unused) {
            }
            if (r3 != null) {
                arrayList.add(r3);
            }
        }
        if (c0356nj.d == null || arrayList.size() < 2) {
            return (Drawable) (arrayList.isEmpty() ? null : arrayList.get(0));
        }
        int intrinsicWidth = ((Drawable) arrayList.get(0)).getIntrinsicWidth();
        if (intrinsicWidth < 1) {
            intrinsicWidth = 1;
        }
        int intrinsicHeight = ((Drawable) arrayList.get(0)).getIntrinsicHeight();
        if (intrinsicHeight < 1) {
            intrinsicHeight = 1;
        }
        int i = (int) (intrinsicWidth * 0.45f);
        int i2 = (int) (intrinsicHeight * 0.45f);
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{arrayList.get(0), arrayList.get(1)});
        layerDrawable.setLayerInset(0, 0, 0, i, i2);
        layerDrawable.setLayerInset(1, i, i2, 0, 0);
        return layerDrawable;
    }
}
