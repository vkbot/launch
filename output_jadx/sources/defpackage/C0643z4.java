package defpackage;

import android.content.Context;
import android.os.Parcel;
import com.omoda.launcher.data.AppInfo;

/* renamed from: z4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0643z4 extends Nb implements InterfaceC0089da {
    public static final C0643z4 c = new C0643z4(1, 0);
    public static final C0643z4 d = new C0643z4(1, 1);
    public static final C0643z4 e = new C0643z4(1, 2);
    public static final C0643z4 f = new C0643z4(1, 3);
    public static final C0643z4 g = new C0643z4(1, 4);
    public static final C0643z4 h = new C0643z4(1, 5);
    public static final C0643z4 i = new C0643z4(1, 6);
    public static final C0643z4 j = new C0643z4(1, 7);
    public static final C0643z4 k = new C0643z4(1, 8);
    public static final C0643z4 l = new C0643z4(1, 9);
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0643z4(int i2, int i3) {
        super(i2);
        this.b = i3;
    }

    @Override // defpackage.InterfaceC0089da
    public final Object h(Object obj) {
        switch (this.b) {
            case 0:
                Parcel parcel = (Parcel) obj;
                AbstractC0348nb.r(parcel, "it");
                return Boolean.valueOf(parcel.readInt() != 0);
            case 1:
                Parcel parcel2 = (Parcel) obj;
                AbstractC0348nb.r(parcel2, "it");
                return Integer.valueOf(parcel2.readInt());
            case 2:
                AbstractC0348nb.r((Parcel) obj, "it");
                return C0486sm.a;
            case 3:
                InterfaceC0059c6 interfaceC0059c6 = (InterfaceC0059c6) obj;
                if (interfaceC0059c6 instanceof AbstractC0162g6) {
                    return (AbstractC0162g6) interfaceC0059c6;
                }
                return null;
            case 4:
                AppInfo appInfo = (AppInfo) obj;
                AbstractC0348nb.r(appInfo, "it");
                String key = appInfo.getKey();
                AbstractC0348nb.r(key, "<this>");
                if (Si.P(key, "factory:")) {
                    key = key.substring(8);
                    AbstractC0348nb.q(key, "substring(...)");
                }
                return key.concat(appInfo.getDimmed() ? " (grey)" : "");
            case 5:
                Parcel parcel3 = (Parcel) obj;
                AbstractC0348nb.r(parcel3, "it");
                parcel3.writeInt(0);
                return C0486sm.a;
            case 6:
                AbstractC0348nb.r((Parcel) obj, "it");
                return C0486sm.a;
            case 7:
                AbstractC0348nb.r((AbstractC0421q6) obj, "$this$initializer");
                return new C0531uh();
            case 8:
                AbstractC0348nb.r((Parcel) obj, "it");
                return C0486sm.a;
            default:
                int O = C6.O(((Number) obj).intValue() / 60.0d);
                if (O != 0) {
                    Context context = C0357nk.a;
                    C0279kk c0279kk = C0357nk.b;
                    if (c0279kk == null) {
                        AbstractC0348nb.j0("base");
                        throw null;
                    }
                    C0357nk.f((O * 60) + c0279kk.d);
                } else {
                    Context context2 = C0357nk.a;
                    C0357nk.a("guard");
                }
                return C0486sm.a;
        }
    }
}
