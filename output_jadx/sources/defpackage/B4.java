package defpackage;

import android.os.Parcel;
import android.widget.TextView;
import com.omoda.launcher.MainActivity;
import com.omoda.launcher.data.AppInfo;
import com.omoda.launcher.data.Preset;
import com.omoda.launcher.data.PresetRepository;

/* loaded from: classes.dex */
public final class B4 extends Nb implements InterfaceC0089da {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ B4(int i, Object obj) {
        super(1);
        this.b = i;
        this.c = obj;
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [Nb, da] */
    @Override // defpackage.InterfaceC0089da
    public final Object h(Object obj) {
        C0486sm c0486sm = C0486sm.a;
        Object obj2 = this.c;
        switch (this.b) {
            case 0:
                Parcel parcel = (Parcel) obj;
                AbstractC0348nb.r(parcel, "it");
                Cif cif = (Cif) obj2;
                parcel.writeString(cif.b);
                parcel.writeString(cif.c);
                parcel.writeInt(cif.d ? 2 : 1);
                return c0486sm;
            case 1:
                AppInfo appInfo = (AppInfo) obj;
                AbstractC0348nb.r(appInfo, "app");
                ((Nb) obj2).h(appInfo);
                return c0486sm;
            case 2:
                AppInfo appInfo2 = (AppInfo) obj;
                AbstractC0348nb.r(appInfo2, "app");
                MainActivity mainActivity = MainActivity.O;
                MainActivity mainActivity2 = (MainActivity) obj2;
                mainActivity2.getClass();
                Preset preset = new Preset(-1, appInfo2.getPackageName(), null, 1.0f);
                PresetRepository presetRepository = mainActivity2.w;
                if (presetRepository == null) {
                    AbstractC0348nb.j0("presetRepository");
                    throw null;
                }
                presetRepository.savePreset(preset);
                mainActivity2.t(preset, C0572w8.a);
                return c0486sm;
            default:
                int intValue = ((Number) obj).intValue();
                StringBuilder sb = new StringBuilder();
                Ki ki = Ki.a;
                sb.append(Ki.e().c);
                sb.append(intValue);
                sb.append("%...");
                ((TextView) obj2).setText(sb.toString());
                return c0486sm;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public B4(InterfaceC0089da interfaceC0089da) {
        super(1);
        this.b = 1;
        this.c = (Nb) interfaceC0089da;
    }
}
