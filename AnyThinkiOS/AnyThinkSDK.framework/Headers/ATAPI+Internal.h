//
//  ATAPI+Internal.h
//  AnyThinkSDK
//
//  Created by Martin Lau on 08/05/2018.
//  Copyright © 2018 Martin Lau. All rights reserved.
//

#ifndef ATAPI_Internal_h
#define ATAPI_Internal_h
#import "ATAPI.h"
extern NSString *const kATNativeADAssetsAdvertiserKey;
extern NSString *const kATNativeADAssetsMainTextKey;
extern NSString *const kATNativeADAssetsMainTitleKey;
extern NSString *const kATNativeADAssetsMainImageKey;
extern NSString *const kATNativeADAssetsIconImageKey;
extern NSString *const kATNativeADAssetsLogoImageKey;
extern NSString *const kATNativeADAssetsCTATextKey;
extern NSString *const kATNativeADAssetsRatingKey;
extern NSString *const kATNativeADAssetsContainsVideoFlag;
extern NSString *const kATNativeADAssetsUnitIDKey;
extern NSString *const kATNativeADAssetsIconURLKey;
extern NSString *const kATNativeADAssetsImageURLKey;
extern NSString *const kATNativeADAssetsLogoURLKey;
extern NSString *const kATNativeADAssetsSponsoredImageKey;
extern NSString *const kATNativeADAssetsVideoUrlKey;
extern NSString *const kATAdAssetsCustomObjectKey;
extern NSString *const kATNativeADAssetsMediaViewKey;
extern NSString *const kATNativeADAssetsImageListKey;
extern NSString *const kATNativeADAssetsVideoDurationKey;

extern NSString *const kATADLoadingStartLoadNotification;
extern NSString *const kATADLoadingOfferSuccessfullyLoadedNotification;
extern NSString *const kATADLoadingFailedToLoadNotification;
extern NSString *const kATADLoadingNotificationUserInfoRequestIDKey;
extern NSString *const kATADLoadingNotificationUserInfoPlacementKey;//Not used
extern NSString *const kATADLoadingNotificationUserInfoUnitGroupKey;//Not used
extern NSString *const kATADLoadingNotificationUserInfoErrorKey;
extern NSString *const kATADLoadingNotificationUserInfoExtraKey;


extern NSString *const kATADUserAreaKey;



/**
 Adopters are expected to implement logic for network offers, for which storage mechanisms must be devise.
 */
@protocol ATNativeAdapter<NSObject>
/**
 The class of the renderer used to render the AD view. This method is a class-method because by the time this information is needed the adapter instance will have been released.
 */
+(Class) rendererClass;
/**
 Adopter should implement this method for the initialization of a adapter instance, which will store the passed info for further use.
 
 @param info contains the info specific to the network. Keys used to retrive the value in the info dictionary are pre-defined by the SDK
 */
-(instancetype) initWithNetworkCustomInfo:(NSDictionary*)serverInfo localInfo:(NSDictionary*)localInfo;

/**
 Adopter should implement this method to load network offers.
 
 @param info contains the info needed to load offers.
 @param completion might need to be stored and invoked after ad's succeffully loaded.
 Parameters passed to the completion block include a dictionary and an error objects. The error object encapsulates the error info if loading request failed somehow; the dictionary contains all publicly accessible assets (such as title and text) for the native ad, which should be stored using the keys predefined by the SDK.
 */
-(void) loadADWithInfo:(NSDictionary*)serverInfo localInfo:(NSDictionary*)localInfo completion:(void(^)(NSArray<NSDictionary*>* assets, NSError *error))completion;
@property (nonatomic,copy) void (^metaDataDidLoadedBlock)(void);
@end

@interface ATAPI(Internal)
+(BOOL)logEnabled;
+(BOOL)adLogoVisible;
+(NSString *)hbTestModeDeviceID;
+(ATNetworkTerritory)networkTerritory;
+(BOOL)isOfm;
-(void) setVersion:(NSString*)version forNetwork:(NSString*)network;
-(NSDictionary*)networkVersions;
-(NSString*)versionForNetworkFirmID:(NSInteger)networkFirmID;
-(BOOL) initFlagForNetwork:(NSString*)networkName;
-(void) setInitFlagForNetwork:(NSString*)networkName;
-(void) inspectInitFlagForNetwork:(NSString*)networkName usingBlock:(NSInteger(^)(NSInteger currentValue))block;
-(void) setInitFlag:(NSInteger)flag forNetwork:(NSString*)networkName;
-(BOOL) startWithAppID:(NSString*)appID appKey:(NSString*)appKey error:(NSError**)error isOfm:(BOOL) isOfm shouldUpdateOfm:(BOOL)shouldUpdateOfm completion:(void (^)(NSDictionary *, NSError *)) completion;
-(void) applyAppSettingWithCompletion:(void (^)(NSDictionary * setting, NSError * error)) completion shouldUpdateOfm:(BOOL)shouldUpdateOfm;

@property(nonatomic, readonly) NSString *userAgent;




@end

#endif /* ATAPI_Internal_h */
