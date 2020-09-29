//
//  MSBHttpTool.m
//  test
//
//  Created by yanzhen on 2020/9/26.
//  Copyright © 2020 yanzhen. All rights reserved.
//

#import "MSBHttpTool.h"
#import <AFNetworking/AFNetworking.h>
#import "MSBUserInfoModel.h"

/**
 http://1v1k8s.meishubao.com/vip-app-default/api/backend/api/login/
 http://1v1k8s.meishubao.com/vip-app-dev/api/backend/api/login/
 http://1v1k8s.meishubao.com/vip-app-test/api/backend/api/login/
 http://1v1k8s.meishubao.com/vip-app-prod/api/backend/api/login/

 http://msi.yiqimeishu.com/vip-app-live/api/backend/api/login/
 
 第一个开发环境，第二个测试环境，第三个预发环境，最后两个生产环境

 
 
 
 网易云信测试环境配置
 appKey：d1ff2153e817bdac8e9a9351c29c107d
 appSecret：2aee63d802e2
 
 
 
 
 获取im信息的域名https://smbimtest.meishubao.com
 接口/im/getRegisterYxUserInfo
 界面我们自己先照着1对1的界面写个，聊天界面先用网易云信demo里面的
 
 这里有个展示需要注意一下，因为我们都是以群组的形式创建聊天，但是要求客户端展示会话列表里面是按个人聊天的样式来展示，就是cell里面头像是用户的头像，昵称是用户昵称，不是群组的头像和昵称，这块要注意处理下
 
 */

static NSString *const MSB = @"http://1v1k8s.meishubao.com/vip-app-default/api/backend/api/login/";
/*
 {
     code = 0;
     payload =     {
         token =         {
             expire = 604800;
             token = "Bearer eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIzNTIiLCJzdWIiOiIzNTIiLCJpYXQiOjE2MDEyNzk0ODEsImF1ZCI6ImJhY2tlbmQiLCJleHAiOjE2MDk5MTk0ODF9.q9EbBXo3b1sMG_ddb-0yVhVs9lGeYkAUBX7wQ3qMnpgWIowSCt8P7eiUli5qxR7cJS1pjrQWj4JoawGNOcDwGg";
         };
         user =         {
             
         };
     };
     status = OK;
 }

 */
@implementation MSBHttpTool
+ (void)getHttp {
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer.timeoutInterval = 10;
//    NSDictionary *params = @{
//        @"mobile" : @"15300000000",
//        @"password" : @"666666"
//    };
    NSDictionary *params = @{
        @"mobile" : @"352",
        @"password" : @"123456"
    };
    [manager POST:MSB parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        int code = [responseObject[@"code"] intValue];
        if (code == 0 || code == 200) {
            NSDictionary *user = responseObject[@"payload"][@"user"];
            MSBUserInfoModel *model = [[MSBUserInfoModel alloc] init];
            [model setValuesForKeysWithDictionary:user];
            [self getImInfo:[NSString stringWithFormat:@"%lld", model._id] identity:3 completion:nil];
        } else {
            NSLog(@"error:登录失败：%@", responseObject[@"errors"]);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"error:%@", error);
    }];
    
    
}


+ (void)getImInfo:(NSString *)userId identity:(int)identity completion:(void (^)(NSDictionary *obj, NSError *error))completion {
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer.timeoutInterval = 10;
    NSDictionary *params = @{
        @"userId" : userId,
        @"identity" : @(identity)
    };
    [manager GET:@"https://smbimtest.meishubao.com/im/getRegisterYxUserInfo" parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (completion) {
            completion(responseObject, nil);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (completion) {
            completion(nil, error);
        }
    }];
}
@end
