package defpackage;

import com.google.android.material.internal.CheckableImageButton;

/* renamed from: v6, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0545v6 extends C8 {
    public final /* synthetic */ int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0545v6(B8 b8, int i) {
        super(b8);
        this.e = i;
    }

    @Override // defpackage.C8
    public void r() {
        switch (this.e) {
            case 0:
                B8 b8 = this.b;
                b8.o = null;
                CheckableImageButton checkableImageButton = b8.g;
                checkableImageButton.setOnLongClickListener(null);
                AbstractC0348nb.a0(checkableImageButton, null);
                return;
            default:
                return;
        }
    }
}
