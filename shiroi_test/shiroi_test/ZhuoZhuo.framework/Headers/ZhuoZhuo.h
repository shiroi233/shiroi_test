// Auto generated by kmgIosFramework. You should not edit it.

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wnullability-completeness"
#pragma clang diagnostic ignored "-Wstrict-prototypes"

// from: src/framework/zzzig_kmgRpcGoAndObjectiveC.h
// +build darwin
// Auto generated by kmgRpcGoAndObjectiveC , do not edit it.

#import <Foundation/Foundation.h>

@class RDMTCellData;
@class ImageData;
@interface RDMTCellData:NSObject
@property ImageData* Image;
@property NSString* TitleText;
@property NSString* SecondTitleText;
@property bool CanDel;
@end

@interface ImageData:NSObject
@property NSString* ImageUrl;
@property double ImageWidth;
@property double ImageHeight;
@end

NSArray<RDMTCellData*>* GetListData__NotAllowInMainThread();


// from: src/framework/MachineTest.h
//+build ios,darwin

//  MachineTest.h
//  6jkbyghv23 2020/11/24: Created
//  iosmachinetest
    

#import <UIKit/UIKit.h>



#pragma clang diagnostic pop
