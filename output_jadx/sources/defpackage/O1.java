package defpackage;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import com.omoda.launcher.R;

/* loaded from: classes.dex */
public final class O1 extends SeekBar {
    public final P1 a;

    public O1(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.seekBarStyle);
        AbstractC0124ek.a(this, getContext());
        P1 p1 = new P1(this);
        this.a = p1;
        p1.C(attributeSet, R.attr.seekBarStyle);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        P1 p1 = this.a;
        Drawable drawable = p1.f;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        O1 o1 = p1.e;
        if (drawable.setState(o1.getDrawableState())) {
            o1.invalidateDrawable(drawable);
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.a.f;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.a.Q(canvas);
    }
}
