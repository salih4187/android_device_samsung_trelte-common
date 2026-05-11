/*
 * Copyright (C) 2019 Exynos5433
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

namespace android {
    extern "C" ssize_t _ZN7android13SensorManager13getSensorListEPPKPKNS_6SensorE(void* thiz, void* list);

    extern "C" ssize_t _ZNK7android13SensorManager13getSensorListEPPKPKNS_6SensorE(void* thiz, void* list) {
      return _ZN7android13SensorManager13getSensorListEPPKPKNS_6SensorE(thiz, list);
    }

    //android::String16::String16(char const*)
    extern "C" void _ZN7android8String16C1EPKc(void **str16P, const char *str);

    //android::String16::~String16()
    extern "C" void _ZN7android8String16D1Ev(void **str16P);

    extern "C" void _ZN7android13SensorManager16createEventQueueENS_7String8EiNS_8String16E(void **retVal, void *sensorMgr, void **str8P, int mode, void **str16P);

    extern "C" void _ZN7android13SensorManager16createEventQueueENS_7String8Ei(void **retVal, void *sensorMgr, void **str8P, int mode)
    {
        void *string;

        _ZN7android8String16C1EPKc(&string, "");
        _ZN7android13SensorManager16createEventQueueENS_7String8EiNS_8String16E(retVal, sensorMgr, str8P, mode, &string);
        _ZN7android8String16D1Ev(&string);
    }

    extern "C" int _ZN7android13SensorManagerD1Ev();
    extern "C" int _ZN7android13SensorManagerC1Ev() {
      return _ZN7android13SensorManagerD1Ev();
    }
}
