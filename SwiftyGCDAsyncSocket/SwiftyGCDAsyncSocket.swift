//
//  SwiftyGCDAsyncSocket.swift
//  SwiftyGCDAsyncSocket
//
//  
// 
//


//#if TARGET_OS_IPHONE
//    #import <CFNetwork/CFNetwork.h>
//#endif
//
//#import <TargetConditionals.h>
//#import <arpa/inet.h>
//#import <fcntl.h>
//#import <ifaddrs.h>
//#import <netdb.h>
//#import <netinet/in.h>
//#import <net/if.h>
//#import <sys/socket.h>
//#import <sys/types.h>
//#import <sys/ioctl.h>
//#import <sys/poll.h>
//#import <sys/uio.h>
//#import <sys/un.h>
//#import <unistd.h>
import Foundation
import Darwin

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

protocol SwiftyGCDAsyncSocketDelegate:AnyObject{
    
  
    
    func newSocketQueueForConnectionFromAddress(address:NSData,onSocket sock:SwiftyGCDAsyncSocket)->dispatch_queue_t;
    func socket(sock:SwiftyGCDAsyncSocket,didAcceptNewSocket newSocket:SwiftyGCDAsyncSocket)
    func socket(sock:SwiftyGCDAsyncSocket,didConnectToHost host:String,port:Int16)
    func socket(sock:SwiftyGCDAsyncSocket,didConnectToUrl url:NSURL)
    func socket(sock:SwiftyGCDAsyncSocket, didReadData data:NSData, withTag tag:Int)
     func socket(sock:SwiftyGCDAsyncSocket, didReadPartialDataOfLength partialLength:Int, tag:Int)
    func socket(sock:SwiftyGCDAsyncSocket, didWriteDataWithTag tag:Int)
    func socket(sock:SwiftyGCDAsyncSocket,didWritePartialDataOfLength partialLength:Int, tag:Int)
    func socket(sock:SwiftyGCDAsyncSocket, shouldTimeoutReadWithTag tag:Int, elapsed:NSTimeInterval,bytesDone length:Int)->NSTimeInterval
     func socket(sock:SwiftyGCDAsyncSocket, shouldTimeoutWriteWithTag tag:Int, elapsed:NSTimeInterval,bytesDone length:Int)->NSTimeInterval
    func socketDidCloseReadStream(sock:SwiftyGCDAsyncSocket)
    func socketDidDisconnect(sock:SwiftyGCDAsyncSocket,withError err:NSError)
    func socketDidSecure(sock:SwiftyGCDAsyncSocket)
    func socket(sock:SwiftyGCDAsyncSocket,didReceiveTrust trust:SecTrustRef ,completionHandler:((shouldTrustPeer:Bool)->()))
    
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
    
    func startTLS(tlsSettings:[String:AnyObject]){
    
    }
    
    var autoDisconnectOnClosedReadStream:Bool = true
    

    
    func markSocketQueueTargetQueue(socketQueuesPreConfiguredTargetQueue:dispatch_queue_t){
    
    }
    

    func unmarkSocketQueueTargetQueue(socketQueuesPreviouslyConfiguredTargetQueue:dispatch_queue_t){
    
    }

    func performBlock(block:dispatch_block_t){
    
    }
   
    
    func socketFD()->Int{
        return 0;
    }
    
    func socket4FD()->Int{
     return 0
    }
    
    func socket6FD()->Int{
    return 0
    }
    
    //- (CFReadStreamRef)readStream;
    //- (CFWriteStreamRef)writeStream;
    
    func readStream()->CFReadStreamRef{
        let readStream:CFReadStreamRef! = nil;

    return readStream
    }
    func writeStream()->CFWriteStreamRef{
        let readStream:CFWriteStreamRef! = nil;
        
        return readStream
    }
    
    func enableBackgroundingOnSocket()->Bool{
        return true;
    }
    func sslContext()->SSLContextRef{
        let sSLContextTemp:SSLContext! = nil
    return sSLContextTemp
    }
    
    
    class func lookup(host:String,port:Int16,error errorPtr:AutoreleasingUnsafeMutablePointer<NSError>)->[String:AnyObject]{
        
        return [:];
    }
    class func hostFromAddress(address:NSData)->String{
    return ""
    }
    class func portFromAddress(address:NSData)->Int16{
        return 0
    }
    class func isIPv4Address(address:NSData)->Bool{
        return true
    }
    class func isIPv6Address(address:NSData)->Bool{
        return true
    }
    class func get(host hostPtr:AutoreleasingUnsafeMutablePointer<String>,port portPtr:AutoreleasingUnsafeMutablePointer<Int16>,fromAddress address:AutoreleasingUnsafeMutablePointer<NSData>)->Bool{
    return true
    }
    class func get(host hostPtr:AutoreleasingUnsafeMutablePointer<String>,port portPtr:AutoreleasingUnsafeMutablePointer<Int16>,family afPtr:sa_family_t,fromAddress address:AutoreleasingUnsafeMutablePointer<NSData>)->Bool{
        return true
    }
    
    class func CRLFData()->NSData{
        return NSData()
    }
    class func CRData()->NSData{
        return NSData()
    }
    class func LFData()->NSData{
        return NSData()
    }
    class func ZeroData()->NSData{
        return NSData()
    }
    
    
}



