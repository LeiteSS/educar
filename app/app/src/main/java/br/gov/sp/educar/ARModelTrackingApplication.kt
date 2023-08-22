package br.gov.sp.educar

import android.app.Application;
import android.content.Context;

import org.artoolkitx.arx.arxj.assets.AssetHelper;

class ARModelTrackingApplication extends Application {
    private Context modelContext;

    public Context getContext() {
        return modelContext;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        modelContext = getContext();
        this.initializeInstance();
    }

    protected void initializeInstance() {
        AssetHelper assetHelper = new AssetHelper(getAssets());
        assetHelper.cacheAssetFolder(this, "data");
        assetHelper.cacheAssetFolder(this, "cparam_cache");
    }
}