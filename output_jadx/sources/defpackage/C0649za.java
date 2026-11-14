package defpackage;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;

/* renamed from: za, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0649za extends View {
    public boolean a;

    public C0649za(Context context) {
        super(context);
        this.a = true;
        super.setVisibility(8);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public void setFilterRedundantCalls(boolean z) {
        this.a = z;
    }

    public void setGuidelineBegin(int i) {
        C0494t5 c0494t5 = (C0494t5) getLayoutParams();
        if (this.a && c0494t5.a == i) {
            return;
        }
        c0494t5.a = i;
        setLayoutParams(c0494t5);
    }

    public void setGuidelineEnd(int i) {
        C0494t5 c0494t5 = (C0494t5) getLayoutParams();
        if (this.a && c0494t5.b == i) {
            return;
        }
        c0494t5.b = i;
        setLayoutParams(c0494t5);
    }

    public void setGuidelinePercent(float f) {
        C0494t5 c0494t5 = (C0494t5) getLayoutParams();
        if (this.a && c0494t5.c == f) {
            return;
        }
        c0494t5.c = f;
        setLayoutParams(c0494t5);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
    }
}
