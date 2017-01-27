/* tools/mkbootimg/samsung_dtbh.h
**
** Copyright 2016, The LineageOS Project
**
** Licensed under the Apache License, Version 2.0 (the "License");
** you may not use this file except in compliance with the License.
** You may obtain a copy of the License at
**
**     http://www.apache.org/licenses/LICENSE-2.0
**
** Unless required by applicable law or agreed to in writing, software
** distributed under the License is distributed on an "AS IS" BASIS,
** WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
** See the License for the specific language governing permissions and
** limitations under the License.
*/

#ifndef _SAMSUNG_DTBH_H_
#define _SAMSUNG_DTBH_H_

#define DTBH_MAGIC         "DTBH"
#define DTBH_VERSION       2
 /* taken from stock dtb.image (strings dtb.img) */
#define DTBH_PLATFORM      "gts28"
#define DTBH_SUBTYPE       "gts28_eur_open"
 /* Hardcoded entry
  *
  * Taken from /proc/last_kmsg after 'reboot bootloader'
  */
#define DTBH_PLATFORM_CODE 0x3138
#define DTBH_SUBTYPE_CODE  0x36480ee3

/* DTBH_MAGIC + DTBH_VERSION + DTB counts */
#define DT_HEADER_PHYS_SIZE 12

/*
 * keep the eight uint32_t entries first in this struct so we can memcpy them to the file
 */
#define DT_ENTRY_PHYS_SIZE (sizeof(uint32_t) * 8)

#endif // _SAMSUNG_DTBH_H_
