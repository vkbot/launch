package defpackage;

import android.R;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class W0 extends Eg {
    public final LinearLayout u;
    public final int v;
    public final ImageView[] w;
    public final ArrayList x;
    public final /* synthetic */ Y0 y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public W0(Y0 y0, LinearLayout linearLayout, int i) {
        super(linearLayout);
        this.y = y0;
        this.u = linearLayout;
        this.v = i;
        this.w = new ImageView[10];
        this.x = new ArrayList();
    }

    public static void t(ImageView imageView, C0541v2 c0541v2) {
        Drawable newDrawable;
        Bitmap bitmap = c0541v2.b;
        if (bitmap == null) {
            imageView.setImageResource(R.drawable.sym_def_app_icon);
            return;
        }
        Resources resources = imageView.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(com.omoda.launcher.R.dimen.app_selector_icon_size);
        float dimensionPixelSize2 = resources.getDimensionPixelSize(com.omoda.launcher.R.dimen.app_selector_icon_radius);
        Drawable bitmapDrawable = new BitmapDrawable(resources, bitmap);
        Drawable.ConstantState constantState = bitmapDrawable.getConstantState();
        if (constantState != null && (newDrawable = constantState.newDrawable(resources)) != null) {
            bitmapDrawable = newDrawable;
        }
        imageView.setImageDrawable(new Na(bitmapDrawable, dimensionPixelSize, dimensionPixelSize2));
    }

    public final void u() {
        Iterator it = this.x.iterator();
        while (it.hasNext()) {
            C0016af c0016af = (C0016af) it.next();
            View view = (View) c0016af.a;
            int intValue = ((Number) c0016af.b).intValue();
            RotateAnimation rotateAnimation = new RotateAnimation(-1.5f, 1.5f, 1, 0.5f, 1, 0.5f);
            rotateAnimation.setDuration(130L);
            rotateAnimation.setRepeatMode(2);
            rotateAnimation.setRepeatCount(-1);
            rotateAnimation.setStartOffset((intValue * 37) % 130);
            view.startAnimation(rotateAnimation);
        }
    }
}
