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

class SwiftyGCDAsyncSocketDelegate:AnyObject{

}
class SwiftyGCDAsyncSocket:NSObject {
    
    override init(){
    
    }
    
    init(socketQueue sq:dispatch_queue_t) {
        
    }
    init(delegate adelegate:AnyObject, delegateQueue dq:dispatch_queue_t) {

    }
    
    init(delegate adelegate:AnyObject, delegateQueue dq:dispatch_queue_t, socketQueue sq:dispatch_queue_t){
    
    }
    
    weak var delegate:SwiftyGCDAsyncSocketDelegate!
    var delegateQueue:dispatch_queue_t!
    
    
    func getDelegate(delegatePtr:UnsafeMutablePointer<SwiftyGCDAsyncSocketDelegate>, delegateQueue delegateQueuePtr:UnsafeMutablePointer<dispatch_queue_t>){
        
    }
    func setDelegate(delegate:SwiftyGCDAsyncSocketDelegate , delegateQueue:dispatch_queue_t){
    
    }
    
    private(set) var isIPv4Enabled:Bool = true
    private(set) var isIPv6Enabled:Bool = true
    private(set) var isIPv4PreferredOverIPv6:Bool = true
    var userData:AnyObject!;
    
    func accept(onPort port:UInt16, error errPtr:AutoreleasingUnsafeMutablePointer<NSError>) ->Bool{
        
        return false
        
    }

    func accept(onInterface interface:String, port:Int16,error errPtr:AutoreleasingUnsafeMutablePointer<NSError>)->Bool{
    return false
    }
    
    func accept(onUrl url:NSURL, error errPtr:AutoreleasingUnsafeMutablePointer<NSError>)->Bool{
   
        return false
    }
    
    
    func connect(toHost host:String, onPort port:Int16, error errorPtr:AutoreleasingUnsafeMutablePointer<NSError>)->Bool{
    return false
    }


    func connect(toHost host:String, onPort port:Int16, withTimeout timeout:NSTimeInterval, error errorPtr:AutoreleasingUnsafeMutablePointer<NSError>)->Bool{
    
        return false
        
    }
    

    
    func connect(toHost host:String, onPort port:Int16, viaInterface interface:String,withTimeout timeout:NSTimeInterval, error errorPtr:AutoreleasingUnsafeMutablePointer<NSError>)->Bool{
        
        return false
        
    }
    
    func connect(toAddress remoteAddr:NSData,  error errorPtr:AutoreleasingUnsafeMutablePointer<NSError>)->Bool{
        return false
    }
    
    func connect(toAddress remoteAddr:NSData,withTimeout timeout:NSTimeInterval, error errorPtr:AutoreleasingUnsafeMutablePointer<NSError>)->Bool{
        return false
    }
    func connect(toAddress remoteAddr:NSData, viaInterface interface:String,withTimeout timeout:NSTimeInterval, error errorPtr:AutoreleasingUnsafeMutablePointer<NSError>)->Bool{
        return false
    }
    
    func connect(toUrl url:NSURL,withTimeout timeout:NSTimeInterval, error errorPtr:AutoreleasingUnsafeMutablePointer<NSError>)->Bool{
        return false
    }
    
    func disconnect(){
    
    }
    
    func disconnectAfterReading(){
    
    }
    
    func disconnectAfterWriting(){
    
    
    }
    
    func disconnectAfterReadingAndWriting(){
    
    }
    
    var isDisconnected:Bool = true;
    var isConnected:Bool = false;

    
    private(set) var connectedHost:String!
     private(set) var connectedPort:Int16!
    private(set) var connectedURl:NSURL!
    private(set) var localHost:String!
    private(set) var localPort:Int16!
    private(set) var  ConnectedAddress:NSData!
    private(set) var  localAddress:NSData!
    private(set) var isIPV4:Bool!
    private(set) var isIPV6:Bool!
    private(set) var isSecure:Bool!
    

    func readData(timeout:NSTimeInterval,tag:Int){
    
    }

    func readData(timeout:NSTimeInterval,buffer:NSMutableData,bufferOffset offset:Int,tag:Int){
        
    }
    
    func readData(timeout:NSTimeInterval,buffer:NSMutableData,bufferOffset offset:Int,maxLength length:Int,tag:Int){
        
    }
    func readData(toLength length:Int, withTimeout timeout:NSTimeInterval,tag:Int){
    
    }

    func readData(toLength length:Int, withTimeout timeout:NSTimeInterval,buffer:NSMutableData,bufferOffset offset:Int,tag:Int){
        
    }
    

    func readData(toData data:NSData, withTimeout timeout:NSTimeInterval,tag:Int){
        
    }
    
    func readData(toData data:NSData, withTimeout timeout:NSTimeInterval,buffer:NSMutableData,bufferOffset offset:Int,tag:Int){
        
    }
    
    func readData(toData data:NSData, withTimeout timeout:NSTimeInterval, maxLength length:Int,tag:Int){
        
    }
    
    func readData(toData data:NSData, withTimeout timeout:NSTimeInterval,buffer:NSMutableData,bufferOffset offset:Int,maxLength length:Int,tag:Int){
        
    }
    
    func progressOfWrite(returningTag tagPtr:UnsafeMutablePointer<Int>,bytesDone donePtr:UnsafeMutablePointer<Int>, total totalPtr:UnsafeMutablePointer<Int>){
    
    }
    
}

