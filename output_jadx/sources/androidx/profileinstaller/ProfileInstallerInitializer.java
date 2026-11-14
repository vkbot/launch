package androidx.profileinstaller;

import android.content.Context;
import defpackage.D2;
import defpackage.Mf;
import defpackage.Ya;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class ProfileInstallerInitializer implements Ya {
    @Override // defpackage.Ya
    public final List a() {
        return Collections.emptyList();
    }

    @Override // defpackage.Ya
    public final Object b(Context context) {
        Mf.a(new D2(this, 1, context.getApplicationContext()));
        return new Object();
    }
}
