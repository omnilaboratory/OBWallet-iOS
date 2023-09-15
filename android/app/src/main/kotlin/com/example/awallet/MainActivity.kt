package com.example.awallet

import android.os.Bundle
import io.flutter.embedding.android.FlutterActivity
import io.flutter.plugin.common.MethodChannel
import java.io.File

class MainActivity: FlutterActivity() {
    private val CHANNEL = "samples.flutter.io/battery"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val messenger = flutterEngine?.dartExecutor
        messenger?.let { MethodChannel(it, CHANNEL) }?.setMethodCallHandler { call, result ->
            run {
                println(call.method)
                when (call.method) {
//                    "start" -> {
//                        val filePath =
//                            getExternalFilesDir(null)?.absolutePath + File.separator + "obd"
//                        Obdmobile.start("--lnddir=" + filePath + "--noseedbackup --nolisten --protocol.no-anchors --trickledelay=5000 " + "--debuglevel=error \n" + "--autopilot.active " + "--maxpendingchannels=100 " + "--bitcoin.active " + "--bitcoin.testnet " + "--bitcoin.node=neutrino " + "--enable-upfront-shutdown " + "--tlsdisableautofill " + "--norest " + "--accept-keysend " + "--spay-url=192.144.199.67:38332 " + "--neutrino.connect=192.144.199.67" + " --omnicoreproxy.rpchost=192.144.199.67:18332" + " --alias=",
//                            object : Callback {
//                                override fun onError(p0: Exception?) {
//                                    if (p0 != null) {
//                                        println(p0.message)
//                                        result.success("onError:" + p0.message)
//                                    } else {
//                                        result.success("onError")
//                                    }
//                                }
//
//                                override fun onResponse(p0: ByteArray?) {
//                                    var temp = p0?.let { String(it) }
//                                    println(temp)
//                                    result.success("onResponse" + temp)
//                                }
//                            })
//                    }

//                    "newAddress" -> {
//                        val param = call.arguments<String>()
//                        Obdmobile.oB_NewAddress(param?.toByteArray(),
//                            object : Callback {
//                                override fun onError(p0: Exception?) {
//                                    if (p0 != null) {
//                                        var message = p0.message
//                                        println(message)
////                                        result.error("400", message,"")
//                                    } else {
//                                        result.success("onError")
//                                    }
//                                }
//
//                                override fun onResponse(p0: ByteArray?) {
//                                    var temp = p0?.let { String(it) }
//                                    println(temp)
//                                    result.success(temp)
//                                }
//                            })
//                    }
                }
            }
        }
    }
}
