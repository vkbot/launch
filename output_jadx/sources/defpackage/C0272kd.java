package defpackage;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import java.util.WeakHashMap;

/* renamed from: kd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0272kd extends ArrayAdapter {
    public ColorStateList a;
    public ColorStateList b;
    public final /* synthetic */ C0298ld c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0272kd(C0298ld c0298ld, Context context, int i, String[] strArr) {
        super(context, i, strArr);
        this.c = c0298ld;
        a();
    }

    public final void a() {
        ColorStateList colorStateList;
        C0298ld c0298ld = this.c;
        ColorStateList colorStateList2 = c0298ld.l;
        ColorStateList colorStateList3 = null;
        if (colorStateList2 != null) {
            int[] iArr = {R.attr.state_pressed};
            colorStateList = new ColorStateList(new int[][]{iArr, new int[0]}, new int[]{colorStateList2.getColorForState(iArr, 0), 0});
        } else {
            colorStateList = null;
        }
        this.b = colorStateList;
        if (c0298ld.k != 0 && c0298ld.l != null) {
            int[] iArr2 = {R.attr.state_hovered, -16842919};
            int[] iArr3 = {R.attr.state_selected, -16842919};
            colorStateList3 = new ColorStateList(new int[][]{iArr3, iArr2, new int[0]}, new int[]{U4.b(c0298ld.l.getColorForState(iArr3, 0), c0298ld.k), U4.b(c0298ld.l.getColorForState(iArr2, 0), c0298ld.k), c0298ld.k});
        }
        this.a = colorStateList3;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i, view, viewGroup);
        if (view2 instanceof TextView) {
            TextView textView = (TextView) view2;
            C0298ld c0298ld = this.c;
            Drawable drawable = null;
            if (c0298ld.getText().toString().contentEquals(textView.getText()) && c0298ld.k != 0) {
                ColorDrawable colorDrawable = new ColorDrawable(c0298ld.k);
                if (this.b != null) {
                    B7.h(colorDrawable, this.a);
                    drawable = new RippleDrawable(this.b, colorDrawable, null);
                } else {
                    drawable = colorDrawable;
                }
            }
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            Rm.q(textView, drawable);
        }
        return view2;
    }
}
