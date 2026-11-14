package defpackage;

import android.view.DisplayCutout;
import android.view.WindowInsets;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class to extends so {
    public to(yo yoVar, WindowInsets windowInsets) {
        super(yoVar, windowInsets);
    }

    @Override // defpackage.wo
    public yo a() {
        return yo.f(null, this.c.consumeDisplayCutout());
    }

    @Override // defpackage.wo
    public C0596x7 e() {
        DisplayCutout displayCutout = this.c.getDisplayCutout();
        if (displayCutout == null) {
            return null;
        }
        return new C0596x7(displayCutout);
    }

    @Override // defpackage.wo
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof to)) {
            return false;
        }
        to toVar = (to) obj;
        return Objects.equals(this.c, toVar.c) && Objects.equals(this.g, toVar.g);
    }

    @Override // defpackage.wo
    public int hashCode() {
        return this.c.hashCode();
    }
}
