package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import com.omoda.launcher.R;

/* renamed from: k0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0259k0 extends H1 implements InterfaceC0311m0 {
    public final /* synthetic */ C0285l0 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0259k0(C0285l0 c0285l0, Context context) {
        super(context, null, R.attr.actionOverflowButtonStyle);
        this.d = c0285l0;
        setClickable(true);
        setFocusable(true);
        setVisibility(0);
        setEnabled(true);
        Ek.a(this, getContentDescription());
        setOnTouchListener(new C0130f0(this, this));
    }

    @Override // defpackage.InterfaceC0311m0
    public final boolean a() {
        return false;
    }

    @Override // defpackage.InterfaceC0311m0
    public final boolean b() {
        return false;
    }

    @Override // android.view.View
    public final boolean performClick() {
        if (super.performClick()) {
            return true;
        }
        playSoundEffect(0);
        this.d.l();
        return true;
    }

    @Override // android.widget.ImageView
    public final boolean setFrame(int i, int i2, int i3, int i4) {
        boolean frame = super.setFrame(i, i2, i3, i4);
        Drawable drawable = getDrawable();
        Drawable background = getBackground();
        if (drawable != null && background != null) {
            int width = getWidth();
            int height = getHeight();
            int max = Math.max(width, height) / 2;
            int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
            int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
            B7.f(background, paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
        }
        return frame;
    }
}
