package com.wunwun.plugins.bundleidentifier;

import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaPlugin;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONException;

import android.content.pm.PackageManager;

public class BundleIdentifier extends CordovaPlugin {

    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callback) {
        try {
            JSONObject r = new JSONObject();
            r.put("bundleId", this.cordova.getActivity().getApplicationContext().getPackageName());
            if(this.cordova.getActivity().getPackageManager().hasSystemFeature(PackageManager.FEATURE_TELEPHONY)){
                // THIS PHONE HAS SMS FUNCTIONALITY
            	 r.put("hasSMS", true);
            }else{
                 r.put("hasSMS", false);
            }
            callback.success(r);
            return true;
        } catch (JSONException ex) {
            return false;
        }
    }
}
