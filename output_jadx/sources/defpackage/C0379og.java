package defpackage;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* renamed from: og, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0379og extends ViewGroup.MarginLayoutParams {
    public Eg a;
    public final Rect b;
    public boolean c;
    public boolean d;

    public C0379og(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new Rect();
        this.c = true;
        this.d = false;
    }

    public C0379og(int i, int i2) {
        super(i, i2);
        this.b = new Rect();
        this.c = true;
        this.d = false;
    }

    public C0379og(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.b = new Rect();
        this.c = true;
        this.d = false;
    }

    public C0379og(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.b = new Rect();
        this.c = true;
        this.d = false;
    }

    public C0379og(C0379og c0379og) {
        super((ViewGroup.LayoutParams) c0379og);
        this.b = new Rect();
        this.c = true;
        this.d = false;
    }
}
