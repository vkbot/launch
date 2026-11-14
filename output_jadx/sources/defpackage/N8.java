package defpackage;

import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import java.util.Set;

/* loaded from: classes.dex */
public final class N8 extends Nb implements InterfaceC0089da {
    public final /* synthetic */ int b = 1;
    public final /* synthetic */ PackageManager c;
    public final /* synthetic */ Resources d;
    public final /* synthetic */ Object e;
    public final /* synthetic */ Parcelable f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public N8(M8 m8, ResolveInfo resolveInfo, PackageManager packageManager, Resources resources) {
        super(1);
        this.e = m8;
        this.f = resolveInfo;
        this.c = packageManager;
        this.d = resources;
    }

    @Override // defpackage.InterfaceC0089da
    public final Object h(Object obj) {
        PackageManager packageManager = this.c;
        Parcelable parcelable = this.f;
        Resources resources = this.d;
        Object obj2 = this.e;
        switch (this.b) {
            case 0:
                boolean booleanValue = ((Boolean) obj).booleanValue();
                Set set = O8.a;
                Drawable a = O8.a(resources, ((L8) obj2).e, booleanValue);
                if (a != null) {
                    return a;
                }
                ActivityInfo activityInfo = (ActivityInfo) parcelable;
                if (activityInfo != null) {
                    return activityInfo.loadIcon(packageManager);
                }
                return null;
            default:
                boolean booleanValue2 = ((Boolean) obj).booleanValue();
                M8 m8 = (M8) obj2;
                if (m8 != null) {
                    Set set2 = O8.a;
                    Drawable a2 = O8.a(resources, m8.c, booleanValue2);
                    if (a2 != null) {
                        return a2;
                    }
                }
                return ((ResolveInfo) parcelable).loadIcon(packageManager);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public N8(Resources resources, L8 l8, ActivityInfo activityInfo, PackageManager packageManager) {
        super(1);
        this.d = resources;
        this.e = l8;
        this.f = activityInfo;
        this.c = packageManager;
    }
}
