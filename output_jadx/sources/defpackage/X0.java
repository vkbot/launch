package defpackage;

import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.omoda.launcher.data.AppInfo;
import com.omoda.launcher.data.RemoteApp;
import java.util.Comparator;
import java.util.Locale;

/* loaded from: classes.dex */
public final class X0 implements Comparator {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ X0(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                int compare = ((X0) this.b).compare(obj, obj2);
                if (compare != 0) {
                    return compare;
                }
                String name = ((RemoteApp) obj).getName();
                Locale locale = Locale.ROOT;
                String lowerCase = name.toLowerCase(locale);
                AbstractC0348nb.q(lowerCase, "toLowerCase(...)");
                String lowerCase2 = ((RemoteApp) obj2).getName().toLowerCase(locale);
                AbstractC0348nb.q(lowerCase2, "toLowerCase(...)");
                return AbstractC0152fm.g(lowerCase, lowerCase2);
            case 1:
                int compare2 = ((G0) this.b).compare(obj, obj2);
                return compare2 != 0 ? compare2 : AbstractC0152fm.g(Boolean.valueOf(((RemoteApp) obj2).isDemo()), Boolean.valueOf(((RemoteApp) obj).isDemo()));
            case 2:
                int compare3 = ((G0) this.b).compare(obj, obj2);
                if (compare3 != 0) {
                    return compare3;
                }
                String label = ((AppInfo) ((C0016af) obj).b).getLabel();
                Locale locale2 = Locale.ROOT;
                String lowerCase3 = label.toLowerCase(locale2);
                AbstractC0348nb.q(lowerCase3, "toLowerCase(...)");
                String lowerCase4 = ((AppInfo) ((C0016af) obj2).b).getLabel().toLowerCase(locale2);
                AbstractC0348nb.q(lowerCase4, "toLowerCase(...)");
                return AbstractC0152fm.g(lowerCase3, lowerCase4);
            case 3:
                MaterialButton materialButton = (MaterialButton) obj;
                MaterialButton materialButton2 = (MaterialButton) obj2;
                int compareTo = Boolean.valueOf(materialButton.o).compareTo(Boolean.valueOf(materialButton2.o));
                if (compareTo != 0) {
                    return compareTo;
                }
                int compareTo2 = Boolean.valueOf(materialButton.isPressed()).compareTo(Boolean.valueOf(materialButton2.isPressed()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) this.b;
                return Integer.valueOf(materialButtonToggleGroup.indexOfChild(materialButton)).compareTo(Integer.valueOf(materialButtonToggleGroup.indexOfChild(materialButton2)));
            default:
                RemoteApp remoteApp = (RemoteApp) obj2;
                RemoteApp remoteApp2 = (RemoteApp) this.b;
                return AbstractC0152fm.g(Boolean.valueOf(remoteApp2 != null && remoteApp.getId() == remoteApp2.getId()), Boolean.valueOf(remoteApp2 != null && ((RemoteApp) obj).getId() == remoteApp2.getId()));
        }
    }
}
