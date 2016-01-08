//
//  SwiftyGCDAsyncSocket.swift
//  SwiftyGCDAsyncSocket
//
//  
// 
//

import Foundation

let  SwiftyGCDAsyncSocketException = "SwiftyGCDAsyncSocketException"
let SwiftyGCDAsyncSocketErrorDomain = "SwiftyGCDAsyncSocketErrorDomain"

let SwiftyGCDAsyncSocketQueueName = "SwiftyGCDAsyncSocketQueueName"
let SwiftyGCDAsyncSocketThreadName = "SwiftyGCDAsyncSocketThreadName"

let SwiftyGCDAsyncSocketManuallyEvaluateTrust = "SwiftyGCDAsyncSocketManuallyEvaluateTrust"
let SwiftyGCDAsyncSocketUseCFStreamForTLS = "SwiftyGCDAsyncSocketUseCFStreamForTLS"

let SwiftyGCDAsyncSocketSSLPeerID = "SwiftyGCDAsyncSocketSSLPeerID"
let SwiftyGCDAsyncSocketSSLProtocolVersionMin = "SwiftyGCDAsyncSocketSSLProtocolVersionMin"
let SwiftyGCDAsyncSocketSSLProtocolVersionMax = "SwiftyGCDAsyncSocketSSLProtocolVersionMax"
let SwiftyGCDAsyncSocketSSLSessionOptionFalseStart = "SwiftyGCDAsyncSocketSSLSessionOptionFalseStart"
let SwiftyGCDAsyncSocketSSLSessionOptionSendOneByteRecord = "SwiftyGCDAsyncSocketSSLSessionOptionSendOneByteRecord"
let SwiftyGCDAsyncSocketSSLCipherSuites = "SwiftyGCDAsyncSocketSSLCipherSuites"

let GCDAsyncSocketLoggingContext = 65535


enum SwiftyGCDAsyncSocketError:Int{
    case NoError = 0,           // Never used
     BadConfigError,        // Invalid configuration
     BadParamError,         // Invalid parameter was passed
     ConnectTimeoutError,   // A connect operation timed out
     ReadTimeoutError,      // A read operation timed out
     WriteTimeoutError,     // A write operation timed out
     ReadMaxedOutError,     // Reached set maxLength without completing
     ClosedError,           // The remote peer closed the connection
    OtherError;            // Description provided in userInfo
}


class SwiftyGCDAsyncSocket:NSObject {
    
}
