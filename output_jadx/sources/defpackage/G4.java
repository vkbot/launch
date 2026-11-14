package defpackage;

import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.widget.EditText;
import com.google.android.material.internal.CheckableImageButton;
import com.omoda.launcher.R;

/* loaded from: classes.dex */
public final class G4 extends C8 {
    public final int e;
    public final int f;
    public final TimeInterpolator g;
    public final TimeInterpolator h;
    public EditText i;
    public final ViewOnClickListenerC0616y2 j;
    public final D4 k;
    public AnimatorSet l;
    public ValueAnimator m;

    public G4(B8 b8) {
        super(b8);
        this.j = new ViewOnClickListenerC0616y2(2, this);
        this.k = new D4(this, 0);
        this.e = C6.L(b8.getContext(), R.attr.motionDurationShort3, 100);
        this.f = C6.L(b8.getContext(), R.attr.motionDurationShort3, 150);
        this.g = C6.M(b8.getContext(), R.attr.motionEasingLinearInterpolator, O0.a);
        this.h = C6.M(b8.getContext(), R.attr.motionEasingEmphasizedInterpolator, O0.d);
    }

    @Override // defpackage.C8
    public final void a() {
        if (this.b.p != null) {
            return;
        }
        t(u());
    }

    @Override // defpackage.C8
    public final int c() {
        return R.string.clear_text_end_icon_content_description;
    }

    @Override // defpackage.C8
    public final int d() {
        return R.drawable.mtrl_ic_cancel;
    }

    @Override // defpackage.C8
    public final View.OnFocusChangeListener e() {
        return this.k;
    }

    @Override // defpackage.C8
    public final View.OnClickListener f() {
        return this.j;
    }

    @Override // defpackage.C8
    public final View.OnFocusChangeListener g() {
        return this.k;
    }

    @Override // defpackage.C8
    public final void m(EditText editText) {
        this.i = editText;
        this.a.setEndIconVisible(u());
    }

    @Override // defpackage.C8
    public final void p(boolean z) {
        if (this.b.p == null) {
            return;
        }
        t(z);
    }

    @Override // defpackage.C8
    public final void r() {
        final int i = 1;
        final int i2 = 0;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        ofFloat.setInterpolator(this.h);
        ofFloat.setDuration(this.f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: E4
            public final /* synthetic */ G4 b;

            {
                this.b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                int i3 = i;
                G4 g4 = this.b;
                g4.getClass();
                switch (i3) {
                    case 0:
                        g4.d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        return;
                    default:
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        CheckableImageButton checkableImageButton = g4.d;
                        checkableImageButton.setScaleX(floatValue);
                        checkableImageButton.setScaleY(floatValue);
                        return;
                }
            }
        });
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = this.g;
        ofFloat2.setInterpolator(timeInterpolator);
        int i3 = this.e;
        ofFloat2.setDuration(i3);
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: E4
            public final /* synthetic */ G4 b;

            {
                this.b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                int i32 = i2;
                G4 g4 = this.b;
                g4.getClass();
                switch (i32) {
                    case 0:
                        g4.d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        return;
                    default:
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        CheckableImageButton checkableImageButton = g4.d;
                        checkableImageButton.setScaleX(floatValue);
                        checkableImageButton.setScaleY(floatValue);
                        return;
                }
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        this.l = animatorSet;
        animatorSet.playTogether(ofFloat, ofFloat2);
        this.l.addListener(new F4(this, i2));
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat3.setInterpolator(timeInterpolator);
        ofFloat3.setDuration(i3);
        ofFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: E4
            public final /* synthetic */ G4 b;

            {
                this.b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                int i32 = i2;
                G4 g4 = this.b;
                g4.getClass();
                switch (i32) {
                    case 0:
                        g4.d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        return;
                    default:
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        CheckableImageButton checkableImageButton = g4.d;
                        checkableImageButton.setScaleX(floatValue);
                        checkableImageButton.setScaleY(floatValue);
                        return;
                }
            }
        });
        this.m = ofFloat3;
        ofFloat3.addListener(new F4(this, i));
    }

    @Override // defpackage.C8
    public final void s() {
        EditText editText = this.i;
        if (editText != null) {
            editText.post(new O(4, this));
        }
    }

    public final void t(boolean z) {
        boolean z2 = this.b.d() == z;
        if (z && !this.l.isRunning()) {
            this.m.cancel();
            this.l.start();
            if (z2) {
                this.l.end();
                return;
            }
            return;
        }
        if (z) {
            return;
        }
        this.l.cancel();
        this.m.start();
        if (z2) {
            this.m.end();
        }
    }

    public final boolean u() {
        EditText editText = this.i;
        return editText != null && (editText.hasFocus() || this.d.hasFocus()) && this.i.getText().length() > 0;
    }
}
