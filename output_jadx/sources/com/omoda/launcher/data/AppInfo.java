package com.omoda.launcher.data;

import android.graphics.drawable.Drawable;
import defpackage.AbstractC0348nb;
import defpackage.AbstractC0407pi;
import defpackage.F6;
import defpackage.P8;

/* loaded from: classes.dex */
public final class AppInfo {
    private final boolean dimmed;
    private final Drawable icon;
    private final String label;
    private final long lastUpdateTime;
    private final String packageName;
    private final P8 tile;

    public AppInfo(String str, String str2, Drawable drawable, long j, P8 p8, boolean z) {
        AbstractC0348nb.r(str, "packageName");
        AbstractC0348nb.r(str2, "label");
        AbstractC0348nb.r(drawable, "icon");
        this.packageName = str;
        this.label = str2;
        this.icon = drawable;
        this.lastUpdateTime = j;
        this.tile = p8;
        this.dimmed = z;
    }

    public static /* synthetic */ AppInfo copy$default(AppInfo appInfo, String str, String str2, Drawable drawable, long j, P8 p8, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = appInfo.packageName;
        }
        if ((i & 2) != 0) {
            str2 = appInfo.label;
        }
        String str3 = str2;
        if ((i & 4) != 0) {
            drawable = appInfo.icon;
        }
        Drawable drawable2 = drawable;
        if ((i & 8) != 0) {
            j = appInfo.lastUpdateTime;
        }
        long j2 = j;
        if ((i & 16) != 0) {
            p8 = appInfo.tile;
        }
        P8 p82 = p8;
        if ((i & 32) != 0) {
            z = appInfo.dimmed;
        }
        return appInfo.copy(str, str3, drawable2, j2, p82, z);
    }

    public final String component1() {
        return this.packageName;
    }

    public final String component2() {
        return this.label;
    }

    public final Drawable component3() {
        return this.icon;
    }

    public final long component4() {
        return this.lastUpdateTime;
    }

    public final P8 component5() {
        return this.tile;
    }

    public final boolean component6() {
        return this.dimmed;
    }

    public final AppInfo copy(String str, String str2, Drawable drawable, long j, P8 p8, boolean z) {
        AbstractC0348nb.r(str, "packageName");
        AbstractC0348nb.r(str2, "label");
        AbstractC0348nb.r(drawable, "icon");
        return new AppInfo(str, str2, drawable, j, p8, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AppInfo)) {
            return false;
        }
        AppInfo appInfo = (AppInfo) obj;
        return AbstractC0348nb.g(this.packageName, appInfo.packageName) && AbstractC0348nb.g(this.label, appInfo.label) && AbstractC0348nb.g(this.icon, appInfo.icon) && this.lastUpdateTime == appInfo.lastUpdateTime && AbstractC0348nb.g(this.tile, appInfo.tile) && this.dimmed == appInfo.dimmed;
    }

    public final boolean getDimmed() {
        return this.dimmed;
    }

    public final Drawable getIcon() {
        return this.icon;
    }

    public final String getKey() {
        String str;
        P8 p8 = this.tile;
        return (p8 == null || (str = p8.a) == null) ? this.packageName : str;
    }

    public final String getLabel() {
        return this.label;
    }

    public final long getLastUpdateTime() {
        return this.lastUpdateTime;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final P8 getTile() {
        return this.tile;
    }

    public int hashCode() {
        int hashCode = (Long.hashCode(this.lastUpdateTime) + ((this.icon.hashCode() + AbstractC0407pi.e(this.label, this.packageName.hashCode() * 31, 31)) * 31)) * 31;
        P8 p8 = this.tile;
        return Boolean.hashCode(this.dimmed) + ((hashCode + (p8 == null ? 0 : p8.hashCode())) * 31);
    }

    public String toString() {
        return "AppInfo(packageName=" + this.packageName + ", label=" + this.label + ", icon=" + this.icon + ", lastUpdateTime=" + this.lastUpdateTime + ", tile=" + this.tile + ", dimmed=" + this.dimmed + ')';
    }

    public /* synthetic */ AppInfo(String str, String str2, Drawable drawable, long j, P8 p8, boolean z, int i, F6 f6) {
        this(str, str2, drawable, (i & 8) != 0 ? 0L : j, (i & 16) != 0 ? null : p8, (i & 32) != 0 ? false : z);
    }
}
