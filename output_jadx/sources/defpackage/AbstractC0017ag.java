package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.omoda.launcher.R;
import java.util.WeakHashMap;

/* renamed from: ag, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0017ag extends ConstraintLayout {
    public final O s;
    public int t;
    public final Ed u;

    public AbstractC0017ag(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.materialClockStyle);
        LayoutInflater.from(context).inflate(R.layout.material_radial_view_group, this);
        Ed ed = new Ed();
        this.u = ed;
        Ng ng = new Ng(0.5f);
        Uh e = ed.a.a.e();
        e.e = ng;
        e.f = ng;
        e.g = ng;
        e.h = ng;
        ed.setShapeAppearanceModel(e.a());
        this.u.i(ColorStateList.valueOf(-1));
        Ed ed2 = this.u;
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        Rm.q(this, ed2);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Yf.t, R.attr.materialClockStyle, 0);
        this.t = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.s = new O(14, this);
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (view.getId() == -1) {
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            view.setId(Sm.a());
        }
        Handler handler = getHandler();
        if (handler != null) {
            O o = this.s;
            handler.removeCallbacks(o);
            handler.post(o);
        }
    }

    public abstract void m();

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        m();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        Handler handler = getHandler();
        if (handler != null) {
            O o = this.s;
            handler.removeCallbacks(o);
            handler.post(o);
        }
    }

    @Override // android.view.View
    public final void setBackgroundColor(int i) {
        this.u.i(ColorStateList.valueOf(i));
    }
}
