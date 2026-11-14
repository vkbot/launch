package com.omoda.launcher.data;

import defpackage.AbstractC0348nb;
import defpackage.AbstractC0407pi;
import defpackage.F6;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class RemoteApp {
    public static final Companion Companion = new Companion(null);
    private final boolean available;
    private final String description;
    private final long fileSize;
    private final String fileSizeHuman;
    private final String iconUrl;
    private final int id;
    private final boolean isDemo;
    private final String modVersion;
    private final String name;
    private final String packageName;
    private final String version;

    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(F6 f6) {
            this();
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0039, code lost:
        
            if (defpackage.Si.M(r5) != false) goto L4;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.omoda.launcher.data.RemoteApp fromJson(org.json.JSONObject r14) {
            /*
                r13 = this;
                java.lang.String r13 = "obj"
                defpackage.AbstractC0348nb.r(r14, r13)
                java.lang.String r13 = "id"
                int r1 = r14.getInt(r13)
                java.lang.String r13 = "package_name"
                java.lang.String r0 = ""
                java.lang.String r2 = r14.optString(r13, r0)
                java.lang.String r13 = "optString(...)"
                java.lang.String r3 = "name"
                java.lang.String r4 = "getString(...)"
                java.lang.String r3 = defpackage.AbstractC0407pi.j(r2, r13, r14, r3, r4)
                java.lang.String r4 = "version"
                java.lang.String r4 = r14.optString(r4, r0)
                defpackage.AbstractC0348nb.q(r4, r13)
                java.lang.String r5 = "mod_version"
                boolean r6 = r14.isNull(r5)
                r7 = 0
                if (r6 == 0) goto L31
            L2f:
                r5 = r7
                goto L3c
            L31:
                java.lang.String r5 = r14.optString(r5, r0)
                boolean r6 = defpackage.Si.M(r5)
                if (r6 == 0) goto L3c
                goto L2f
            L3c:
                java.lang.String r6 = "description"
                java.lang.String r6 = r14.optString(r6, r0)
                defpackage.AbstractC0348nb.q(r6, r13)
                java.lang.String r8 = "file_size"
                r9 = 0
                long r8 = r14.optLong(r8, r9)
                java.lang.String r10 = "file_size_human"
                java.lang.String r10 = r14.optString(r10, r0)
                defpackage.AbstractC0348nb.q(r10, r13)
                java.lang.String r13 = "icon_url"
                boolean r11 = r14.isNull(r13)
                if (r11 == 0) goto L60
            L5e:
                r13 = r7
                goto L6d
            L60:
                java.lang.String r13 = r14.optString(r13, r0)
                boolean r0 = defpackage.Si.M(r13)
                if (r0 == 0) goto L6b
                goto L5e
            L6b:
                r7 = r13
                goto L5e
            L6d:
                java.lang.String r0 = "is_demo"
                r7 = 0
                boolean r11 = r14.optBoolean(r0, r7)
                java.lang.String r0 = "available"
                boolean r12 = r14.optBoolean(r0, r7)
                com.omoda.launcher.data.RemoteApp r14 = new com.omoda.launcher.data.RemoteApp
                r0 = r14
                r7 = r8
                r9 = r10
                r10 = r13
                r0.<init>(r1, r2, r3, r4, r5, r6, r7, r9, r10, r11, r12)
                return r14
            */
            throw new UnsupportedOperationException("Method not decompiled: com.omoda.launcher.data.RemoteApp.Companion.fromJson(org.json.JSONObject):com.omoda.launcher.data.RemoteApp");
        }

        private Companion() {
        }
    }

    public RemoteApp(int i, String str, String str2, String str3, String str4, String str5, long j, String str6, String str7, boolean z, boolean z2) {
        AbstractC0348nb.r(str, "packageName");
        AbstractC0348nb.r(str2, "name");
        AbstractC0348nb.r(str3, "version");
        AbstractC0348nb.r(str5, "description");
        AbstractC0348nb.r(str6, "fileSizeHuman");
        this.id = i;
        this.packageName = str;
        this.name = str2;
        this.version = str3;
        this.modVersion = str4;
        this.description = str5;
        this.fileSize = j;
        this.fileSizeHuman = str6;
        this.iconUrl = str7;
        this.isDemo = z;
        this.available = z2;
    }

    public final int component1() {
        return this.id;
    }

    public final boolean component10() {
        return this.isDemo;
    }

    public final boolean component11() {
        return this.available;
    }

    public final String component2() {
        return this.packageName;
    }

    public final String component3() {
        return this.name;
    }

    public final String component4() {
        return this.version;
    }

    public final String component5() {
        return this.modVersion;
    }

    public final String component6() {
        return this.description;
    }

    public final long component7() {
        return this.fileSize;
    }

    public final String component8() {
        return this.fileSizeHuman;
    }

    public final String component9() {
        return this.iconUrl;
    }

    public final RemoteApp copy(int i, String str, String str2, String str3, String str4, String str5, long j, String str6, String str7, boolean z, boolean z2) {
        AbstractC0348nb.r(str, "packageName");
        AbstractC0348nb.r(str2, "name");
        AbstractC0348nb.r(str3, "version");
        AbstractC0348nb.r(str5, "description");
        AbstractC0348nb.r(str6, "fileSizeHuman");
        return new RemoteApp(i, str, str2, str3, str4, str5, j, str6, str7, z, z2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RemoteApp)) {
            return false;
        }
        RemoteApp remoteApp = (RemoteApp) obj;
        return this.id == remoteApp.id && AbstractC0348nb.g(this.packageName, remoteApp.packageName) && AbstractC0348nb.g(this.name, remoteApp.name) && AbstractC0348nb.g(this.version, remoteApp.version) && AbstractC0348nb.g(this.modVersion, remoteApp.modVersion) && AbstractC0348nb.g(this.description, remoteApp.description) && this.fileSize == remoteApp.fileSize && AbstractC0348nb.g(this.fileSizeHuman, remoteApp.fileSizeHuman) && AbstractC0348nb.g(this.iconUrl, remoteApp.iconUrl) && this.isDemo == remoteApp.isDemo && this.available == remoteApp.available;
    }

    public final boolean getAvailable() {
        return this.available;
    }

    public final String getDescription() {
        return this.description;
    }

    public final long getFileSize() {
        return this.fileSize;
    }

    public final String getFileSizeHuman() {
        return this.fileSizeHuman;
    }

    public final String getIconUrl() {
        return this.iconUrl;
    }

    public final int getId() {
        return this.id;
    }

    public final String getModVersion() {
        return this.modVersion;
    }

    public final String getName() {
        return this.name;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final String getVersion() {
        return this.version;
    }

    public int hashCode() {
        int e = AbstractC0407pi.e(this.version, AbstractC0407pi.e(this.name, AbstractC0407pi.e(this.packageName, Integer.hashCode(this.id) * 31, 31), 31), 31);
        String str = this.modVersion;
        int e2 = AbstractC0407pi.e(this.fileSizeHuman, (Long.hashCode(this.fileSize) + AbstractC0407pi.e(this.description, (e + (str == null ? 0 : str.hashCode())) * 31, 31)) * 31, 31);
        String str2 = this.iconUrl;
        int hashCode = str2 != null ? str2.hashCode() : 0;
        return Boolean.hashCode(this.available) + ((Boolean.hashCode(this.isDemo) + ((e2 + hashCode) * 31)) * 31);
    }

    public final boolean isDemo() {
        return this.isDemo;
    }

    public final JSONObject toJson() {
        JSONObject put = new JSONObject().put("id", this.id).put("package_name", this.packageName).put("name", this.name).put("version", this.version);
        Object obj = this.modVersion;
        if (obj == null) {
            obj = JSONObject.NULL;
        }
        JSONObject put2 = put.put("mod_version", obj).put("description", this.description).put("file_size", this.fileSize).put("file_size_human", this.fileSizeHuman);
        Object obj2 = this.iconUrl;
        if (obj2 == null) {
            obj2 = JSONObject.NULL;
        }
        JSONObject put3 = put2.put("icon_url", obj2).put("is_demo", this.isDemo).put("available", this.available);
        AbstractC0348nb.q(put3, "put(...)");
        return put3;
    }

    public String toString() {
        return "RemoteApp(id=" + this.id + ", packageName=" + this.packageName + ", name=" + this.name + ", version=" + this.version + ", modVersion=" + this.modVersion + ", description=" + this.description + ", fileSize=" + this.fileSize + ", fileSizeHuman=" + this.fileSizeHuman + ", iconUrl=" + this.iconUrl + ", isDemo=" + this.isDemo + ", available=" + this.available + ')';
    }
}
