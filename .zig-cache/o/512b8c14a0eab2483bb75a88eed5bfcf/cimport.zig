pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_labs = @import("std").zig.c_builtins.__builtin_labs;
pub const __builtin_llabs = @import("std").zig.c_builtins.__builtin_llabs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub const struct___va_list_tag_1 = extern struct {
    gp_offset: c_uint = @import("std").mem.zeroes(c_uint),
    fp_offset: c_uint = @import("std").mem.zeroes(c_uint),
    overflow_arg_area: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    reg_save_area: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const __builtin_va_list = [1]struct___va_list_tag_1;
pub const __gnuc_va_list = __builtin_va_list;
pub const va_list = __builtin_va_list;
pub const __u_char = u8;
pub const __u_short = c_ushort;
pub const __u_int = c_uint;
pub const __u_long = c_ulong;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_long;
pub const __uint64_t = c_ulong;
pub const __int_least8_t = __int8_t;
pub const __uint_least8_t = __uint8_t;
pub const __int_least16_t = __int16_t;
pub const __uint_least16_t = __uint16_t;
pub const __int_least32_t = __int32_t;
pub const __uint_least32_t = __uint32_t;
pub const __int_least64_t = __int64_t;
pub const __uint_least64_t = __uint64_t;
pub const __quad_t = c_long;
pub const __u_quad_t = c_ulong;
pub const __intmax_t = c_long;
pub const __uintmax_t = c_ulong;
pub const __dev_t = c_ulong;
pub const __uid_t = c_uint;
pub const __gid_t = c_uint;
pub const __ino_t = c_ulong;
pub const __ino64_t = c_ulong;
pub const __mode_t = c_uint;
pub const __nlink_t = c_ulong;
pub const __off_t = c_long;
pub const __off64_t = c_long;
pub const __pid_t = c_int;
pub const __fsid_t = extern struct {
    __val: [2]c_int = @import("std").mem.zeroes([2]c_int),
};
pub const __clock_t = c_long;
pub const __rlim_t = c_ulong;
pub const __rlim64_t = c_ulong;
pub const __id_t = c_uint;
pub const __time_t = c_long;
pub const __useconds_t = c_uint;
pub const __suseconds_t = c_long;
pub const __suseconds64_t = c_long;
pub const __daddr_t = c_int;
pub const __key_t = c_int;
pub const __clockid_t = c_int;
pub const __timer_t = ?*anyopaque;
pub const __blksize_t = c_long;
pub const __blkcnt_t = c_long;
pub const __blkcnt64_t = c_long;
pub const __fsblkcnt_t = c_ulong;
pub const __fsblkcnt64_t = c_ulong;
pub const __fsfilcnt_t = c_ulong;
pub const __fsfilcnt64_t = c_ulong;
pub const __fsword_t = c_long;
pub const __ssize_t = c_long;
pub const __syscall_slong_t = c_long;
pub const __syscall_ulong_t = c_ulong;
pub const __loff_t = __off64_t;
pub const __caddr_t = [*c]u8;
pub const __intptr_t = c_long;
pub const __socklen_t = c_uint;
pub const __sig_atomic_t = c_int;
pub const u_char = __u_char;
pub const u_short = __u_short;
pub const u_int = __u_int;
pub const u_long = __u_long;
pub const quad_t = __quad_t;
pub const u_quad_t = __u_quad_t;
pub const fsid_t = __fsid_t;
pub const loff_t = __loff_t;
pub const ino_t = __ino_t;
pub const dev_t = __dev_t;
pub const gid_t = __gid_t;
pub const mode_t = __mode_t;
pub const nlink_t = __nlink_t;
pub const uid_t = __uid_t;
pub const off_t = __off_t;
pub const pid_t = __pid_t;
pub const id_t = __id_t;
pub const daddr_t = __daddr_t;
pub const caddr_t = __caddr_t;
pub const key_t = __key_t;
pub const clock_t = __clock_t;
pub const clockid_t = __clockid_t;
pub const time_t = __time_t;
pub const timer_t = __timer_t;
pub const ulong = c_ulong;
pub const ushort = c_ushort;
pub const uint = c_uint;
pub const u_int8_t = __uint8_t;
pub const u_int16_t = __uint16_t;
pub const u_int32_t = __uint32_t;
pub const u_int64_t = __uint64_t;
pub const register_t = c_long;
pub fn __bswap_16(arg___bsx: __uint16_t) callconv(.c) __uint16_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @as(__uint16_t, @bitCast(@as(c_short, @truncate(((@as(c_int, @bitCast(@as(c_uint, __bsx))) >> @intCast(8)) & @as(c_int, 255)) | ((@as(c_int, @bitCast(@as(c_uint, __bsx))) & @as(c_int, 255)) << @intCast(8))))));
}
pub fn __bswap_32(arg___bsx: __uint32_t) callconv(.c) __uint32_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return ((((__bsx & @as(c_uint, 4278190080)) >> @intCast(24)) | ((__bsx & @as(c_uint, 16711680)) >> @intCast(8))) | ((__bsx & @as(c_uint, 65280)) << @intCast(8))) | ((__bsx & @as(c_uint, 255)) << @intCast(24));
}
pub fn __bswap_64(arg___bsx: __uint64_t) callconv(.c) __uint64_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @as(__uint64_t, @bitCast(@as(c_ulong, @truncate(((((((((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 18374686479671623680)) >> @intCast(56)) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 71776119061217280)) >> @intCast(40))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 280375465082880)) >> @intCast(24))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 1095216660480)) >> @intCast(8))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 4278190080)) << @intCast(8))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 16711680)) << @intCast(24))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 65280)) << @intCast(40))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 255)) << @intCast(56))))));
}
pub fn __uint16_identity(arg___x: __uint16_t) callconv(.c) __uint16_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub fn __uint32_identity(arg___x: __uint32_t) callconv(.c) __uint32_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub fn __uint64_identity(arg___x: __uint64_t) callconv(.c) __uint64_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub const __sigset_t = extern struct {
    __val: [16]c_ulong = @import("std").mem.zeroes([16]c_ulong),
};
pub const sigset_t = __sigset_t;
pub const struct_timeval = extern struct {
    tv_sec: __time_t = @import("std").mem.zeroes(__time_t),
    tv_usec: __suseconds_t = @import("std").mem.zeroes(__suseconds_t),
};
pub const struct_timespec = extern struct {
    tv_sec: __time_t = @import("std").mem.zeroes(__time_t),
    tv_nsec: __syscall_slong_t = @import("std").mem.zeroes(__syscall_slong_t),
};
pub const suseconds_t = __suseconds_t;
pub const __fd_mask = c_long;
pub const fd_set = extern struct {
    __fds_bits: [16]__fd_mask = @import("std").mem.zeroes([16]__fd_mask),
};
pub const fd_mask = __fd_mask;
pub extern fn select(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]struct_timeval) c_int;
pub extern fn pselect(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]const struct_timespec, noalias __sigmask: [*c]const __sigset_t) c_int;
pub const blksize_t = __blksize_t;
pub const blkcnt_t = __blkcnt_t;
pub const fsblkcnt_t = __fsblkcnt_t;
pub const fsfilcnt_t = __fsfilcnt_t;
const struct_unnamed_2 = extern struct {
    __low: c_uint = @import("std").mem.zeroes(c_uint),
    __high: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const __atomic_wide_counter = extern union {
    __value64: c_ulonglong,
    __value32: struct_unnamed_2,
};
pub const struct___pthread_internal_list = extern struct {
    __prev: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
    __next: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
};
pub const __pthread_list_t = struct___pthread_internal_list;
pub const struct___pthread_internal_slist = extern struct {
    __next: [*c]struct___pthread_internal_slist = @import("std").mem.zeroes([*c]struct___pthread_internal_slist),
};
pub const __pthread_slist_t = struct___pthread_internal_slist;
pub const struct___pthread_mutex_s = extern struct {
    __lock: c_int = @import("std").mem.zeroes(c_int),
    __count: c_uint = @import("std").mem.zeroes(c_uint),
    __owner: c_int = @import("std").mem.zeroes(c_int),
    __nusers: c_uint = @import("std").mem.zeroes(c_uint),
    __kind: c_int = @import("std").mem.zeroes(c_int),
    __spins: c_short = @import("std").mem.zeroes(c_short),
    __elision: c_short = @import("std").mem.zeroes(c_short),
    __list: __pthread_list_t = @import("std").mem.zeroes(__pthread_list_t),
};
pub const struct___pthread_rwlock_arch_t = extern struct {
    __readers: c_uint = @import("std").mem.zeroes(c_uint),
    __writers: c_uint = @import("std").mem.zeroes(c_uint),
    __wrphase_futex: c_uint = @import("std").mem.zeroes(c_uint),
    __writers_futex: c_uint = @import("std").mem.zeroes(c_uint),
    __pad3: c_uint = @import("std").mem.zeroes(c_uint),
    __pad4: c_uint = @import("std").mem.zeroes(c_uint),
    __cur_writer: c_int = @import("std").mem.zeroes(c_int),
    __shared: c_int = @import("std").mem.zeroes(c_int),
    __rwelision: i8 = @import("std").mem.zeroes(i8),
    __pad1: [7]u8 = @import("std").mem.zeroes([7]u8),
    __pad2: c_ulong = @import("std").mem.zeroes(c_ulong),
    __flags: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const struct___pthread_cond_s = extern struct {
    __wseq: __atomic_wide_counter = @import("std").mem.zeroes(__atomic_wide_counter),
    __g1_start: __atomic_wide_counter = @import("std").mem.zeroes(__atomic_wide_counter),
    __g_size: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
    __g1_orig_size: c_uint = @import("std").mem.zeroes(c_uint),
    __wrefs: c_uint = @import("std").mem.zeroes(c_uint),
    __g_signals: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
    __unused_initialized_1: c_uint = @import("std").mem.zeroes(c_uint),
    __unused_initialized_2: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const __tss_t = c_uint;
pub const __thrd_t = c_ulong;
pub const __once_flag = extern struct {
    __data: c_int = @import("std").mem.zeroes(c_int),
};
pub const pthread_t = c_ulong;
pub const pthread_mutexattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_condattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_key_t = c_uint;
pub const pthread_once_t = c_int;
pub const union_pthread_attr_t = extern union {
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_attr_t = union_pthread_attr_t;
pub const pthread_mutex_t = extern union {
    __data: struct___pthread_mutex_s,
    __size: [40]u8,
    __align: c_long,
};
pub const pthread_cond_t = extern union {
    __data: struct___pthread_cond_s,
    __size: [48]u8,
    __align: c_longlong,
};
pub const pthread_rwlock_t = extern union {
    __data: struct___pthread_rwlock_arch_t,
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_rwlockattr_t = extern union {
    __size: [8]u8,
    __align: c_long,
};
pub const pthread_spinlock_t = c_int;
pub const pthread_barrier_t = extern union {
    __size: [32]u8,
    __align: c_long,
};
pub const pthread_barrierattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const int_least8_t = __int_least8_t;
pub const int_least16_t = __int_least16_t;
pub const int_least32_t = __int_least32_t;
pub const int_least64_t = __int_least64_t;
pub const uint_least8_t = __uint_least8_t;
pub const uint_least16_t = __uint_least16_t;
pub const uint_least32_t = __uint_least32_t;
pub const uint_least64_t = __uint_least64_t;
pub const int_fast8_t = i8;
pub const int_fast16_t = c_long;
pub const int_fast32_t = c_long;
pub const int_fast64_t = c_long;
pub const uint_fast8_t = u8;
pub const uint_fast16_t = c_ulong;
pub const uint_fast32_t = c_ulong;
pub const uint_fast64_t = c_ulong;
pub const intmax_t = __intmax_t;
pub const uintmax_t = __uintmax_t;
pub const __s8 = i8;
pub const __u8 = u8;
pub const __s16 = c_short;
pub const __u16 = c_ushort;
pub const __s32 = c_int;
pub const __u32 = c_uint;
pub const __s64 = c_longlong;
pub const __u64 = c_ulonglong;
pub const __kernel_fd_set = extern struct {
    fds_bits: [16]c_ulong = @import("std").mem.zeroes([16]c_ulong),
};
pub const __kernel_sighandler_t = ?*const fn (c_int) callconv(.c) void;
pub const __kernel_key_t = c_int;
pub const __kernel_mqd_t = c_int;
pub const __kernel_old_uid_t = c_ushort;
pub const __kernel_old_gid_t = c_ushort;
pub const __kernel_old_dev_t = c_ulong;
pub const __kernel_long_t = c_long;
pub const __kernel_ulong_t = c_ulong;
pub const __kernel_ino_t = __kernel_ulong_t;
pub const __kernel_mode_t = c_uint;
pub const __kernel_pid_t = c_int;
pub const __kernel_ipc_pid_t = c_int;
pub const __kernel_uid_t = c_uint;
pub const __kernel_gid_t = c_uint;
pub const __kernel_suseconds_t = __kernel_long_t;
pub const __kernel_daddr_t = c_int;
pub const __kernel_uid32_t = c_uint;
pub const __kernel_gid32_t = c_uint;
pub const __kernel_size_t = __kernel_ulong_t;
pub const __kernel_ssize_t = __kernel_long_t;
pub const __kernel_ptrdiff_t = __kernel_long_t;
pub const __kernel_fsid_t = extern struct {
    val: [2]c_int = @import("std").mem.zeroes([2]c_int),
};
pub const __kernel_off_t = __kernel_long_t;
pub const __kernel_loff_t = c_longlong;
pub const __kernel_old_time_t = __kernel_long_t;
pub const __kernel_time_t = __kernel_long_t;
pub const __kernel_time64_t = c_longlong;
pub const __kernel_clock_t = __kernel_long_t;
pub const __kernel_timer_t = c_int;
pub const __kernel_clockid_t = c_int;
pub const __kernel_caddr_t = [*c]u8;
pub const __kernel_uid16_t = c_ushort;
pub const __kernel_gid16_t = c_ushort;
pub const __s128 = i128;
pub const __u128 = u128;
pub const __le16 = __u16;
pub const __be16 = __u16;
pub const __le32 = __u32;
pub const __be32 = __u32;
pub const __le64 = __u64;
pub const __be64 = __u64;
pub const __sum16 = __u16;
pub const __wsum = __u32;
pub const __poll_t = c_uint;
pub const drm_handle_t = c_uint;
pub const drm_context_t = c_uint;
pub const drm_drawable_t = c_uint;
pub const drm_magic_t = c_uint;
pub const struct_drm_clip_rect = extern struct {
    x1: c_ushort = @import("std").mem.zeroes(c_ushort),
    y1: c_ushort = @import("std").mem.zeroes(c_ushort),
    x2: c_ushort = @import("std").mem.zeroes(c_ushort),
    y2: c_ushort = @import("std").mem.zeroes(c_ushort),
};
pub const struct_drm_drawable_info = extern struct {
    num_rects: c_uint = @import("std").mem.zeroes(c_uint),
    rects: [*c]struct_drm_clip_rect = @import("std").mem.zeroes([*c]struct_drm_clip_rect),
};
pub const struct_drm_tex_region = extern struct {
    next: u8 = @import("std").mem.zeroes(u8),
    prev: u8 = @import("std").mem.zeroes(u8),
    in_use: u8 = @import("std").mem.zeroes(u8),
    padding: u8 = @import("std").mem.zeroes(u8),
    age: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const struct_drm_hw_lock = extern struct {
    lock: c_uint = @import("std").mem.zeroes(c_uint),
    padding: [60]u8 = @import("std").mem.zeroes([60]u8),
};
pub const struct_drm_version = extern struct {
    version_major: c_int = @import("std").mem.zeroes(c_int),
    version_minor: c_int = @import("std").mem.zeroes(c_int),
    version_patchlevel: c_int = @import("std").mem.zeroes(c_int),
    name_len: __kernel_size_t = @import("std").mem.zeroes(__kernel_size_t),
    name: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    date_len: __kernel_size_t = @import("std").mem.zeroes(__kernel_size_t),
    date: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    desc_len: __kernel_size_t = @import("std").mem.zeroes(__kernel_size_t),
    desc: [*c]u8 = @import("std").mem.zeroes([*c]u8),
};
pub const struct_drm_unique = extern struct {
    unique_len: __kernel_size_t = @import("std").mem.zeroes(__kernel_size_t),
    unique: [*c]u8 = @import("std").mem.zeroes([*c]u8),
};
pub const struct_drm_list = extern struct {
    count: c_int = @import("std").mem.zeroes(c_int),
    version: [*c]struct_drm_version = @import("std").mem.zeroes([*c]struct_drm_version),
};
pub const struct_drm_block = extern struct {
    unused: c_int = @import("std").mem.zeroes(c_int),
};
pub const DRM_ADD_COMMAND: c_int = 0;
pub const DRM_RM_COMMAND: c_int = 1;
pub const DRM_INST_HANDLER: c_int = 2;
pub const DRM_UNINST_HANDLER: c_int = 3;
const enum_unnamed_3 = c_uint;
pub const struct_drm_control = extern struct {
    func: enum_unnamed_3 = @import("std").mem.zeroes(enum_unnamed_3),
    irq: c_int = @import("std").mem.zeroes(c_int),
};
pub const _DRM_FRAME_BUFFER: c_int = 0;
pub const _DRM_REGISTERS: c_int = 1;
pub const _DRM_SHM: c_int = 2;
pub const _DRM_AGP: c_int = 3;
pub const _DRM_SCATTER_GATHER: c_int = 4;
pub const _DRM_CONSISTENT: c_int = 5;
pub const enum_drm_map_type = c_uint;
pub const _DRM_RESTRICTED: c_int = 1;
pub const _DRM_READ_ONLY: c_int = 2;
pub const _DRM_LOCKED: c_int = 4;
pub const _DRM_KERNEL: c_int = 8;
pub const _DRM_WRITE_COMBINING: c_int = 16;
pub const _DRM_CONTAINS_LOCK: c_int = 32;
pub const _DRM_REMOVABLE: c_int = 64;
pub const _DRM_DRIVER: c_int = 128;
pub const enum_drm_map_flags = c_uint;
pub const struct_drm_ctx_priv_map = extern struct {
    ctx_id: c_uint = @import("std").mem.zeroes(c_uint),
    handle: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const struct_drm_map = extern struct {
    offset: c_ulong = @import("std").mem.zeroes(c_ulong),
    size: c_ulong = @import("std").mem.zeroes(c_ulong),
    type: enum_drm_map_type = @import("std").mem.zeroes(enum_drm_map_type),
    flags: enum_drm_map_flags = @import("std").mem.zeroes(enum_drm_map_flags),
    handle: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    mtrr: c_int = @import("std").mem.zeroes(c_int),
};
pub const struct_drm_client = extern struct {
    idx: c_int = @import("std").mem.zeroes(c_int),
    auth: c_int = @import("std").mem.zeroes(c_int),
    pid: c_ulong = @import("std").mem.zeroes(c_ulong),
    uid: c_ulong = @import("std").mem.zeroes(c_ulong),
    magic: c_ulong = @import("std").mem.zeroes(c_ulong),
    iocs: c_ulong = @import("std").mem.zeroes(c_ulong),
};
pub const _DRM_STAT_LOCK: c_int = 0;
pub const _DRM_STAT_OPENS: c_int = 1;
pub const _DRM_STAT_CLOSES: c_int = 2;
pub const _DRM_STAT_IOCTLS: c_int = 3;
pub const _DRM_STAT_LOCKS: c_int = 4;
pub const _DRM_STAT_UNLOCKS: c_int = 5;
pub const _DRM_STAT_VALUE: c_int = 6;
pub const _DRM_STAT_BYTE: c_int = 7;
pub const _DRM_STAT_COUNT: c_int = 8;
pub const _DRM_STAT_IRQ: c_int = 9;
pub const _DRM_STAT_PRIMARY: c_int = 10;
pub const _DRM_STAT_SECONDARY: c_int = 11;
pub const _DRM_STAT_DMA: c_int = 12;
pub const _DRM_STAT_SPECIAL: c_int = 13;
pub const _DRM_STAT_MISSED: c_int = 14;
pub const enum_drm_stat_type = c_uint;
const struct_unnamed_4 = extern struct {
    value: c_ulong = @import("std").mem.zeroes(c_ulong),
    type: enum_drm_stat_type = @import("std").mem.zeroes(enum_drm_stat_type),
};
pub const struct_drm_stats = extern struct {
    count: c_ulong = @import("std").mem.zeroes(c_ulong),
    data: [15]struct_unnamed_4 = @import("std").mem.zeroes([15]struct_unnamed_4),
};
pub const _DRM_LOCK_READY: c_int = 1;
pub const _DRM_LOCK_QUIESCENT: c_int = 2;
pub const _DRM_LOCK_FLUSH: c_int = 4;
pub const _DRM_LOCK_FLUSH_ALL: c_int = 8;
pub const _DRM_HALT_ALL_QUEUES: c_int = 16;
pub const _DRM_HALT_CUR_QUEUES: c_int = 32;
pub const enum_drm_lock_flags = c_uint;
pub const struct_drm_lock = extern struct {
    context: c_int = @import("std").mem.zeroes(c_int),
    flags: enum_drm_lock_flags = @import("std").mem.zeroes(enum_drm_lock_flags),
};
pub const _DRM_DMA_BLOCK: c_int = 1;
pub const _DRM_DMA_WHILE_LOCKED: c_int = 2;
pub const _DRM_DMA_PRIORITY: c_int = 4;
pub const _DRM_DMA_WAIT: c_int = 16;
pub const _DRM_DMA_SMALLER_OK: c_int = 32;
pub const _DRM_DMA_LARGER_OK: c_int = 64;
pub const enum_drm_dma_flags = c_uint;
pub const _DRM_PAGE_ALIGN: c_int = 1;
pub const _DRM_AGP_BUFFER: c_int = 2;
pub const _DRM_SG_BUFFER: c_int = 4;
pub const _DRM_FB_BUFFER: c_int = 8;
pub const _DRM_PCI_BUFFER_RO: c_int = 16;
const enum_unnamed_5 = c_uint;
pub const struct_drm_buf_desc = extern struct {
    count: c_int = @import("std").mem.zeroes(c_int),
    size: c_int = @import("std").mem.zeroes(c_int),
    low_mark: c_int = @import("std").mem.zeroes(c_int),
    high_mark: c_int = @import("std").mem.zeroes(c_int),
    flags: enum_unnamed_5 = @import("std").mem.zeroes(enum_unnamed_5),
    agp_start: c_ulong = @import("std").mem.zeroes(c_ulong),
};
pub const struct_drm_buf_info = extern struct {
    count: c_int = @import("std").mem.zeroes(c_int),
    list: [*c]struct_drm_buf_desc = @import("std").mem.zeroes([*c]struct_drm_buf_desc),
};
pub const struct_drm_buf_free = extern struct {
    count: c_int = @import("std").mem.zeroes(c_int),
    list: [*c]c_int = @import("std").mem.zeroes([*c]c_int),
};
pub const struct_drm_buf_pub = extern struct {
    idx: c_int = @import("std").mem.zeroes(c_int),
    total: c_int = @import("std").mem.zeroes(c_int),
    used: c_int = @import("std").mem.zeroes(c_int),
    address: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const struct_drm_buf_map = extern struct {
    count: c_int = @import("std").mem.zeroes(c_int),
    virtual: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    list: [*c]struct_drm_buf_pub = @import("std").mem.zeroes([*c]struct_drm_buf_pub),
};
pub const struct_drm_dma = extern struct {
    context: c_int = @import("std").mem.zeroes(c_int),
    send_count: c_int = @import("std").mem.zeroes(c_int),
    send_indices: [*c]c_int = @import("std").mem.zeroes([*c]c_int),
    send_sizes: [*c]c_int = @import("std").mem.zeroes([*c]c_int),
    flags: enum_drm_dma_flags = @import("std").mem.zeroes(enum_drm_dma_flags),
    request_count: c_int = @import("std").mem.zeroes(c_int),
    request_size: c_int = @import("std").mem.zeroes(c_int),
    request_indices: [*c]c_int = @import("std").mem.zeroes([*c]c_int),
    request_sizes: [*c]c_int = @import("std").mem.zeroes([*c]c_int),
    granted_count: c_int = @import("std").mem.zeroes(c_int),
};
pub const _DRM_CONTEXT_PRESERVED: c_int = 1;
pub const _DRM_CONTEXT_2DONLY: c_int = 2;
pub const enum_drm_ctx_flags = c_uint;
pub const struct_drm_ctx = extern struct {
    handle: drm_context_t = @import("std").mem.zeroes(drm_context_t),
    flags: enum_drm_ctx_flags = @import("std").mem.zeroes(enum_drm_ctx_flags),
};
pub const struct_drm_ctx_res = extern struct {
    count: c_int = @import("std").mem.zeroes(c_int),
    contexts: [*c]struct_drm_ctx = @import("std").mem.zeroes([*c]struct_drm_ctx),
};
pub const struct_drm_draw = extern struct {
    handle: drm_drawable_t = @import("std").mem.zeroes(drm_drawable_t),
};
pub const DRM_DRAWABLE_CLIPRECTS: c_int = 0;
pub const drm_drawable_info_type_t = c_uint;
pub const struct_drm_update_draw = extern struct {
    handle: drm_drawable_t = @import("std").mem.zeroes(drm_drawable_t),
    type: c_uint = @import("std").mem.zeroes(c_uint),
    num: c_uint = @import("std").mem.zeroes(c_uint),
    data: c_ulonglong = @import("std").mem.zeroes(c_ulonglong),
};
pub const struct_drm_auth = extern struct {
    magic: drm_magic_t = @import("std").mem.zeroes(drm_magic_t),
};
pub const struct_drm_irq_busid = extern struct {
    irq: c_int = @import("std").mem.zeroes(c_int),
    busnum: c_int = @import("std").mem.zeroes(c_int),
    devnum: c_int = @import("std").mem.zeroes(c_int),
    funcnum: c_int = @import("std").mem.zeroes(c_int),
};
pub const _DRM_VBLANK_ABSOLUTE: c_int = 0;
pub const _DRM_VBLANK_RELATIVE: c_int = 1;
pub const _DRM_VBLANK_HIGH_CRTC_MASK: c_int = 62;
pub const _DRM_VBLANK_EVENT: c_int = 67108864;
pub const _DRM_VBLANK_FLIP: c_int = 134217728;
pub const _DRM_VBLANK_NEXTONMISS: c_int = 268435456;
pub const _DRM_VBLANK_SECONDARY: c_int = 536870912;
pub const _DRM_VBLANK_SIGNAL: c_int = 1073741824;
pub const enum_drm_vblank_seq_type = c_uint;
pub const struct_drm_wait_vblank_request = extern struct {
    type: enum_drm_vblank_seq_type = @import("std").mem.zeroes(enum_drm_vblank_seq_type),
    sequence: c_uint = @import("std").mem.zeroes(c_uint),
    signal: c_ulong = @import("std").mem.zeroes(c_ulong),
};
pub const struct_drm_wait_vblank_reply = extern struct {
    type: enum_drm_vblank_seq_type = @import("std").mem.zeroes(enum_drm_vblank_seq_type),
    sequence: c_uint = @import("std").mem.zeroes(c_uint),
    tval_sec: c_long = @import("std").mem.zeroes(c_long),
    tval_usec: c_long = @import("std").mem.zeroes(c_long),
};
pub const union_drm_wait_vblank = extern union {
    request: struct_drm_wait_vblank_request,
    reply: struct_drm_wait_vblank_reply,
};
pub const struct_drm_modeset_ctl = extern struct {
    crtc: __u32 = @import("std").mem.zeroes(__u32),
    cmd: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_drm_agp_mode = extern struct {
    mode: c_ulong = @import("std").mem.zeroes(c_ulong),
};
pub const struct_drm_agp_buffer = extern struct {
    size: c_ulong = @import("std").mem.zeroes(c_ulong),
    handle: c_ulong = @import("std").mem.zeroes(c_ulong),
    type: c_ulong = @import("std").mem.zeroes(c_ulong),
    physical: c_ulong = @import("std").mem.zeroes(c_ulong),
};
pub const struct_drm_agp_binding = extern struct {
    handle: c_ulong = @import("std").mem.zeroes(c_ulong),
    offset: c_ulong = @import("std").mem.zeroes(c_ulong),
};
pub const struct_drm_agp_info = extern struct {
    agp_version_major: c_int = @import("std").mem.zeroes(c_int),
    agp_version_minor: c_int = @import("std").mem.zeroes(c_int),
    mode: c_ulong = @import("std").mem.zeroes(c_ulong),
    aperture_base: c_ulong = @import("std").mem.zeroes(c_ulong),
    aperture_size: c_ulong = @import("std").mem.zeroes(c_ulong),
    memory_allowed: c_ulong = @import("std").mem.zeroes(c_ulong),
    memory_used: c_ulong = @import("std").mem.zeroes(c_ulong),
    id_vendor: c_ushort = @import("std").mem.zeroes(c_ushort),
    id_device: c_ushort = @import("std").mem.zeroes(c_ushort),
};
pub const struct_drm_scatter_gather = extern struct {
    size: c_ulong = @import("std").mem.zeroes(c_ulong),
    handle: c_ulong = @import("std").mem.zeroes(c_ulong),
};
pub const struct_drm_set_version = extern struct {
    drm_di_major: c_int = @import("std").mem.zeroes(c_int),
    drm_di_minor: c_int = @import("std").mem.zeroes(c_int),
    drm_dd_major: c_int = @import("std").mem.zeroes(c_int),
    drm_dd_minor: c_int = @import("std").mem.zeroes(c_int),
};
pub const struct_drm_gem_close = extern struct {
    handle: __u32 = @import("std").mem.zeroes(__u32),
    pad: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_drm_gem_flink = extern struct {
    handle: __u32 = @import("std").mem.zeroes(__u32),
    name: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_drm_gem_open = extern struct {
    name: __u32 = @import("std").mem.zeroes(__u32),
    handle: __u32 = @import("std").mem.zeroes(__u32),
    size: __u64 = @import("std").mem.zeroes(__u64),
};
pub const struct_drm_gem_change_handle = extern struct {
    handle: __u32 = @import("std").mem.zeroes(__u32),
    new_handle: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_drm_get_cap = extern struct {
    capability: __u64 = @import("std").mem.zeroes(__u64),
    value: __u64 = @import("std").mem.zeroes(__u64),
};
pub const struct_drm_set_client_cap = extern struct {
    capability: __u64 = @import("std").mem.zeroes(__u64),
    value: __u64 = @import("std").mem.zeroes(__u64),
};
pub const struct_drm_prime_handle = extern struct {
    handle: __u32 = @import("std").mem.zeroes(__u32),
    flags: __u32 = @import("std").mem.zeroes(__u32),
    fd: __s32 = @import("std").mem.zeroes(__s32),
};
pub const struct_drm_syncobj_create = extern struct {
    handle: __u32 = @import("std").mem.zeroes(__u32),
    flags: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_drm_syncobj_destroy = extern struct {
    handle: __u32 = @import("std").mem.zeroes(__u32),
    pad: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_drm_syncobj_handle = extern struct {
    handle: __u32 = @import("std").mem.zeroes(__u32),
    flags: __u32 = @import("std").mem.zeroes(__u32),
    fd: __s32 = @import("std").mem.zeroes(__s32),
    pad: __u32 = @import("std").mem.zeroes(__u32),
    point: __u64 = @import("std").mem.zeroes(__u64),
};
pub const struct_drm_syncobj_transfer = extern struct {
    src_handle: __u32 = @import("std").mem.zeroes(__u32),
    dst_handle: __u32 = @import("std").mem.zeroes(__u32),
    src_point: __u64 = @import("std").mem.zeroes(__u64),
    dst_point: __u64 = @import("std").mem.zeroes(__u64),
    flags: __u32 = @import("std").mem.zeroes(__u32),
    pad: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_drm_syncobj_wait = extern struct {
    handles: __u64 = @import("std").mem.zeroes(__u64),
    timeout_nsec: __s64 = @import("std").mem.zeroes(__s64),
    count_handles: __u32 = @import("std").mem.zeroes(__u32),
    flags: __u32 = @import("std").mem.zeroes(__u32),
    first_signaled: __u32 = @import("std").mem.zeroes(__u32),
    pad: __u32 = @import("std").mem.zeroes(__u32),
    deadline_nsec: __u64 = @import("std").mem.zeroes(__u64),
};
pub const struct_drm_syncobj_timeline_wait = extern struct {
    handles: __u64 = @import("std").mem.zeroes(__u64),
    points: __u64 = @import("std").mem.zeroes(__u64),
    timeout_nsec: __s64 = @import("std").mem.zeroes(__s64),
    count_handles: __u32 = @import("std").mem.zeroes(__u32),
    flags: __u32 = @import("std").mem.zeroes(__u32),
    first_signaled: __u32 = @import("std").mem.zeroes(__u32),
    pad: __u32 = @import("std").mem.zeroes(__u32),
    deadline_nsec: __u64 = @import("std").mem.zeroes(__u64),
};
pub const struct_drm_syncobj_eventfd = extern struct {
    handle: __u32 = @import("std").mem.zeroes(__u32),
    flags: __u32 = @import("std").mem.zeroes(__u32),
    point: __u64 = @import("std").mem.zeroes(__u64),
    fd: __s32 = @import("std").mem.zeroes(__s32),
    pad: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_drm_syncobj_array = extern struct {
    handles: __u64 = @import("std").mem.zeroes(__u64),
    count_handles: __u32 = @import("std").mem.zeroes(__u32),
    pad: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_drm_syncobj_timeline_array = extern struct {
    handles: __u64 = @import("std").mem.zeroes(__u64),
    points: __u64 = @import("std").mem.zeroes(__u64),
    count_handles: __u32 = @import("std").mem.zeroes(__u32),
    flags: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_drm_crtc_get_sequence = extern struct {
    crtc_id: __u32 = @import("std").mem.zeroes(__u32),
    active: __u32 = @import("std").mem.zeroes(__u32),
    sequence: __u64 = @import("std").mem.zeroes(__u64),
    sequence_ns: __s64 = @import("std").mem.zeroes(__s64),
};
pub const struct_drm_crtc_queue_sequence = extern struct {
    crtc_id: __u32 = @import("std").mem.zeroes(__u32),
    flags: __u32 = @import("std").mem.zeroes(__u32),
    sequence: __u64 = @import("std").mem.zeroes(__u64),
    user_data: __u64 = @import("std").mem.zeroes(__u64),
};
pub const struct_drm_set_client_name = extern struct {
    name_len: __u64 = @import("std").mem.zeroes(__u64),
    name: __u64 = @import("std").mem.zeroes(__u64),
};
pub const struct_drm_mode_modeinfo = extern struct {
    clock: __u32 = @import("std").mem.zeroes(__u32),
    hdisplay: __u16 = @import("std").mem.zeroes(__u16),
    hsync_start: __u16 = @import("std").mem.zeroes(__u16),
    hsync_end: __u16 = @import("std").mem.zeroes(__u16),
    htotal: __u16 = @import("std").mem.zeroes(__u16),
    hskew: __u16 = @import("std").mem.zeroes(__u16),
    vdisplay: __u16 = @import("std").mem.zeroes(__u16),
    vsync_start: __u16 = @import("std").mem.zeroes(__u16),
    vsync_end: __u16 = @import("std").mem.zeroes(__u16),
    vtotal: __u16 = @import("std").mem.zeroes(__u16),
    vscan: __u16 = @import("std").mem.zeroes(__u16),
    vrefresh: __u32 = @import("std").mem.zeroes(__u32),
    flags: __u32 = @import("std").mem.zeroes(__u32),
    type: __u32 = @import("std").mem.zeroes(__u32),
    name: [32]u8 = @import("std").mem.zeroes([32]u8),
};
pub const struct_drm_mode_card_res = extern struct {
    fb_id_ptr: __u64 = @import("std").mem.zeroes(__u64),
    crtc_id_ptr: __u64 = @import("std").mem.zeroes(__u64),
    connector_id_ptr: __u64 = @import("std").mem.zeroes(__u64),
    encoder_id_ptr: __u64 = @import("std").mem.zeroes(__u64),
    count_fbs: __u32 = @import("std").mem.zeroes(__u32),
    count_crtcs: __u32 = @import("std").mem.zeroes(__u32),
    count_connectors: __u32 = @import("std").mem.zeroes(__u32),
    count_encoders: __u32 = @import("std").mem.zeroes(__u32),
    min_width: __u32 = @import("std").mem.zeroes(__u32),
    max_width: __u32 = @import("std").mem.zeroes(__u32),
    min_height: __u32 = @import("std").mem.zeroes(__u32),
    max_height: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_drm_mode_crtc = extern struct {
    set_connectors_ptr: __u64 = @import("std").mem.zeroes(__u64),
    count_connectors: __u32 = @import("std").mem.zeroes(__u32),
    crtc_id: __u32 = @import("std").mem.zeroes(__u32),
    fb_id: __u32 = @import("std").mem.zeroes(__u32),
    x: __u32 = @import("std").mem.zeroes(__u32),
    y: __u32 = @import("std").mem.zeroes(__u32),
    gamma_size: __u32 = @import("std").mem.zeroes(__u32),
    mode_valid: __u32 = @import("std").mem.zeroes(__u32),
    mode: struct_drm_mode_modeinfo = @import("std").mem.zeroes(struct_drm_mode_modeinfo),
};
pub const struct_drm_mode_set_plane = extern struct {
    plane_id: __u32 = @import("std").mem.zeroes(__u32),
    crtc_id: __u32 = @import("std").mem.zeroes(__u32),
    fb_id: __u32 = @import("std").mem.zeroes(__u32),
    flags: __u32 = @import("std").mem.zeroes(__u32),
    crtc_x: __s32 = @import("std").mem.zeroes(__s32),
    crtc_y: __s32 = @import("std").mem.zeroes(__s32),
    crtc_w: __u32 = @import("std").mem.zeroes(__u32),
    crtc_h: __u32 = @import("std").mem.zeroes(__u32),
    src_x: __u32 = @import("std").mem.zeroes(__u32),
    src_y: __u32 = @import("std").mem.zeroes(__u32),
    src_h: __u32 = @import("std").mem.zeroes(__u32),
    src_w: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_drm_mode_get_plane = extern struct {
    plane_id: __u32 = @import("std").mem.zeroes(__u32),
    crtc_id: __u32 = @import("std").mem.zeroes(__u32),
    fb_id: __u32 = @import("std").mem.zeroes(__u32),
    possible_crtcs: __u32 = @import("std").mem.zeroes(__u32),
    gamma_size: __u32 = @import("std").mem.zeroes(__u32),
    count_format_types: __u32 = @import("std").mem.zeroes(__u32),
    format_type_ptr: __u64 = @import("std").mem.zeroes(__u64),
};
pub const struct_drm_mode_get_plane_res = extern struct {
    plane_id_ptr: __u64 = @import("std").mem.zeroes(__u64),
    count_planes: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_drm_mode_get_encoder = extern struct {
    encoder_id: __u32 = @import("std").mem.zeroes(__u32),
    encoder_type: __u32 = @import("std").mem.zeroes(__u32),
    crtc_id: __u32 = @import("std").mem.zeroes(__u32),
    possible_crtcs: __u32 = @import("std").mem.zeroes(__u32),
    possible_clones: __u32 = @import("std").mem.zeroes(__u32),
};
pub const DRM_MODE_SUBCONNECTOR_Automatic: c_int = 0;
pub const DRM_MODE_SUBCONNECTOR_Unknown: c_int = 0;
pub const DRM_MODE_SUBCONNECTOR_VGA: c_int = 1;
pub const DRM_MODE_SUBCONNECTOR_DVID: c_int = 3;
pub const DRM_MODE_SUBCONNECTOR_DVIA: c_int = 4;
pub const DRM_MODE_SUBCONNECTOR_Composite: c_int = 5;
pub const DRM_MODE_SUBCONNECTOR_SVIDEO: c_int = 6;
pub const DRM_MODE_SUBCONNECTOR_Component: c_int = 8;
pub const DRM_MODE_SUBCONNECTOR_SCART: c_int = 9;
pub const DRM_MODE_SUBCONNECTOR_DisplayPort: c_int = 10;
pub const DRM_MODE_SUBCONNECTOR_HDMIA: c_int = 11;
pub const DRM_MODE_SUBCONNECTOR_Native: c_int = 15;
pub const DRM_MODE_SUBCONNECTOR_Wireless: c_int = 18;
pub const enum_drm_mode_subconnector = c_uint;
pub const struct_drm_mode_get_connector = extern struct {
    encoders_ptr: __u64 = @import("std").mem.zeroes(__u64),
    modes_ptr: __u64 = @import("std").mem.zeroes(__u64),
    props_ptr: __u64 = @import("std").mem.zeroes(__u64),
    prop_values_ptr: __u64 = @import("std").mem.zeroes(__u64),
    count_modes: __u32 = @import("std").mem.zeroes(__u32),
    count_props: __u32 = @import("std").mem.zeroes(__u32),
    count_encoders: __u32 = @import("std").mem.zeroes(__u32),
    encoder_id: __u32 = @import("std").mem.zeroes(__u32),
    connector_id: __u32 = @import("std").mem.zeroes(__u32),
    connector_type: __u32 = @import("std").mem.zeroes(__u32),
    connector_type_id: __u32 = @import("std").mem.zeroes(__u32),
    connection: __u32 = @import("std").mem.zeroes(__u32),
    mm_width: __u32 = @import("std").mem.zeroes(__u32),
    mm_height: __u32 = @import("std").mem.zeroes(__u32),
    subpixel: __u32 = @import("std").mem.zeroes(__u32),
    pad: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_drm_mode_property_enum = extern struct {
    value: __u64 = @import("std").mem.zeroes(__u64),
    name: [32]u8 = @import("std").mem.zeroes([32]u8),
};
pub const struct_drm_mode_get_property = extern struct {
    values_ptr: __u64 = @import("std").mem.zeroes(__u64),
    enum_blob_ptr: __u64 = @import("std").mem.zeroes(__u64),
    prop_id: __u32 = @import("std").mem.zeroes(__u32),
    flags: __u32 = @import("std").mem.zeroes(__u32),
    name: [32]u8 = @import("std").mem.zeroes([32]u8),
    count_values: __u32 = @import("std").mem.zeroes(__u32),
    count_enum_blobs: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_drm_mode_connector_set_property = extern struct {
    value: __u64 = @import("std").mem.zeroes(__u64),
    prop_id: __u32 = @import("std").mem.zeroes(__u32),
    connector_id: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_drm_mode_obj_get_properties = extern struct {
    props_ptr: __u64 = @import("std").mem.zeroes(__u64),
    prop_values_ptr: __u64 = @import("std").mem.zeroes(__u64),
    count_props: __u32 = @import("std").mem.zeroes(__u32),
    obj_id: __u32 = @import("std").mem.zeroes(__u32),
    obj_type: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_drm_mode_obj_set_property = extern struct {
    value: __u64 = @import("std").mem.zeroes(__u64),
    prop_id: __u32 = @import("std").mem.zeroes(__u32),
    obj_id: __u32 = @import("std").mem.zeroes(__u32),
    obj_type: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_drm_mode_get_blob = extern struct {
    blob_id: __u32 = @import("std").mem.zeroes(__u32),
    length: __u32 = @import("std").mem.zeroes(__u32),
    data: __u64 = @import("std").mem.zeroes(__u64),
};
pub const struct_drm_mode_fb_cmd = extern struct {
    fb_id: __u32 = @import("std").mem.zeroes(__u32),
    width: __u32 = @import("std").mem.zeroes(__u32),
    height: __u32 = @import("std").mem.zeroes(__u32),
    pitch: __u32 = @import("std").mem.zeroes(__u32),
    bpp: __u32 = @import("std").mem.zeroes(__u32),
    depth: __u32 = @import("std").mem.zeroes(__u32),
    handle: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_drm_mode_fb_cmd2 = extern struct {
    fb_id: __u32 = @import("std").mem.zeroes(__u32),
    width: __u32 = @import("std").mem.zeroes(__u32),
    height: __u32 = @import("std").mem.zeroes(__u32),
    pixel_format: __u32 = @import("std").mem.zeroes(__u32),
    flags: __u32 = @import("std").mem.zeroes(__u32),
    handles: [4]__u32 = @import("std").mem.zeroes([4]__u32),
    pitches: [4]__u32 = @import("std").mem.zeroes([4]__u32),
    offsets: [4]__u32 = @import("std").mem.zeroes([4]__u32),
    modifier: [4]__u64 = @import("std").mem.zeroes([4]__u64),
};
pub const struct_drm_mode_fb_dirty_cmd = extern struct {
    fb_id: __u32 = @import("std").mem.zeroes(__u32),
    flags: __u32 = @import("std").mem.zeroes(__u32),
    color: __u32 = @import("std").mem.zeroes(__u32),
    num_clips: __u32 = @import("std").mem.zeroes(__u32),
    clips_ptr: __u64 = @import("std").mem.zeroes(__u64),
};
pub const struct_drm_mode_mode_cmd = extern struct {
    connector_id: __u32 = @import("std").mem.zeroes(__u32),
    mode: struct_drm_mode_modeinfo = @import("std").mem.zeroes(struct_drm_mode_modeinfo),
};
pub const struct_drm_mode_cursor = extern struct {
    flags: __u32 = @import("std").mem.zeroes(__u32),
    crtc_id: __u32 = @import("std").mem.zeroes(__u32),
    x: __s32 = @import("std").mem.zeroes(__s32),
    y: __s32 = @import("std").mem.zeroes(__s32),
    width: __u32 = @import("std").mem.zeroes(__u32),
    height: __u32 = @import("std").mem.zeroes(__u32),
    handle: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_drm_mode_cursor2 = extern struct {
    flags: __u32 = @import("std").mem.zeroes(__u32),
    crtc_id: __u32 = @import("std").mem.zeroes(__u32),
    x: __s32 = @import("std").mem.zeroes(__s32),
    y: __s32 = @import("std").mem.zeroes(__s32),
    width: __u32 = @import("std").mem.zeroes(__u32),
    height: __u32 = @import("std").mem.zeroes(__u32),
    handle: __u32 = @import("std").mem.zeroes(__u32),
    hot_x: __s32 = @import("std").mem.zeroes(__s32),
    hot_y: __s32 = @import("std").mem.zeroes(__s32),
};
pub const struct_drm_mode_crtc_lut = extern struct {
    crtc_id: __u32 = @import("std").mem.zeroes(__u32),
    gamma_size: __u32 = @import("std").mem.zeroes(__u32),
    red: __u64 = @import("std").mem.zeroes(__u64),
    green: __u64 = @import("std").mem.zeroes(__u64),
    blue: __u64 = @import("std").mem.zeroes(__u64),
};
pub const struct_drm_color_ctm = extern struct {
    matrix: [9]__u64 = @import("std").mem.zeroes([9]__u64),
};
pub const struct_drm_color_ctm_3x4 = extern struct {
    matrix: [12]__u64 = @import("std").mem.zeroes([12]__u64),
};
pub const struct_drm_color_lut = extern struct {
    red: __u16 = @import("std").mem.zeroes(__u16),
    green: __u16 = @import("std").mem.zeroes(__u16),
    blue: __u16 = @import("std").mem.zeroes(__u16),
    reserved: __u16 = @import("std").mem.zeroes(__u16),
};
pub const struct_drm_color_lut32 = extern struct {
    red: __u32 = @import("std").mem.zeroes(__u32),
    green: __u32 = @import("std").mem.zeroes(__u32),
    blue: __u32 = @import("std").mem.zeroes(__u32),
    reserved: __u32 = @import("std").mem.zeroes(__u32),
};
pub const DRM_COLOROP_1D_CURVE: c_int = 0;
pub const DRM_COLOROP_1D_LUT: c_int = 1;
pub const DRM_COLOROP_CTM_3X4: c_int = 2;
pub const DRM_COLOROP_MULTIPLIER: c_int = 3;
pub const DRM_COLOROP_3D_LUT: c_int = 4;
pub const enum_drm_colorop_type = c_uint;
pub const DRM_COLOROP_LUT3D_INTERPOLATION_TETRAHEDRAL: c_int = 0;
pub const enum_drm_colorop_lut3d_interpolation_type = c_uint;
pub const DRM_COLOROP_LUT1D_INTERPOLATION_LINEAR: c_int = 0;
pub const enum_drm_colorop_lut1d_interpolation_type = c_uint;
pub const struct_drm_plane_size_hint = extern struct {
    width: __u16 = @import("std").mem.zeroes(__u16),
    height: __u16 = @import("std").mem.zeroes(__u16),
};
const struct_unnamed_6 = extern struct {
    x: __u16 = @import("std").mem.zeroes(__u16),
    y: __u16 = @import("std").mem.zeroes(__u16),
};
const struct_unnamed_7 = extern struct {
    x: __u16 = @import("std").mem.zeroes(__u16),
    y: __u16 = @import("std").mem.zeroes(__u16),
};
pub const struct_hdr_metadata_infoframe = extern struct {
    eotf: __u8 = @import("std").mem.zeroes(__u8),
    metadata_type: __u8 = @import("std").mem.zeroes(__u8),
    display_primaries: [3]struct_unnamed_6 = @import("std").mem.zeroes([3]struct_unnamed_6),
    white_point: struct_unnamed_7 = @import("std").mem.zeroes(struct_unnamed_7),
    max_display_mastering_luminance: __u16 = @import("std").mem.zeroes(__u16),
    min_display_mastering_luminance: __u16 = @import("std").mem.zeroes(__u16),
    max_cll: __u16 = @import("std").mem.zeroes(__u16),
    max_fall: __u16 = @import("std").mem.zeroes(__u16),
};
const union_unnamed_8 = extern union {
    hdmi_metadata_type1: struct_hdr_metadata_infoframe,
};
pub const struct_hdr_output_metadata = extern struct {
    metadata_type: __u32 = @import("std").mem.zeroes(__u32),
    unnamed_0: union_unnamed_8 = @import("std").mem.zeroes(union_unnamed_8),
};
pub const struct_drm_mode_crtc_page_flip = extern struct {
    crtc_id: __u32 = @import("std").mem.zeroes(__u32),
    fb_id: __u32 = @import("std").mem.zeroes(__u32),
    flags: __u32 = @import("std").mem.zeroes(__u32),
    reserved: __u32 = @import("std").mem.zeroes(__u32),
    user_data: __u64 = @import("std").mem.zeroes(__u64),
};
pub const struct_drm_mode_crtc_page_flip_target = extern struct {
    crtc_id: __u32 = @import("std").mem.zeroes(__u32),
    fb_id: __u32 = @import("std").mem.zeroes(__u32),
    flags: __u32 = @import("std").mem.zeroes(__u32),
    sequence: __u32 = @import("std").mem.zeroes(__u32),
    user_data: __u64 = @import("std").mem.zeroes(__u64),
};
pub const struct_drm_mode_create_dumb = extern struct {
    height: __u32 = @import("std").mem.zeroes(__u32),
    width: __u32 = @import("std").mem.zeroes(__u32),
    bpp: __u32 = @import("std").mem.zeroes(__u32),
    flags: __u32 = @import("std").mem.zeroes(__u32),
    handle: __u32 = @import("std").mem.zeroes(__u32),
    pitch: __u32 = @import("std").mem.zeroes(__u32),
    size: __u64 = @import("std").mem.zeroes(__u64),
};
pub const struct_drm_mode_map_dumb = extern struct {
    handle: __u32 = @import("std").mem.zeroes(__u32),
    pad: __u32 = @import("std").mem.zeroes(__u32),
    offset: __u64 = @import("std").mem.zeroes(__u64),
};
pub const struct_drm_mode_destroy_dumb = extern struct {
    handle: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_drm_mode_atomic = extern struct {
    flags: __u32 = @import("std").mem.zeroes(__u32),
    count_objs: __u32 = @import("std").mem.zeroes(__u32),
    objs_ptr: __u64 = @import("std").mem.zeroes(__u64),
    count_props_ptr: __u64 = @import("std").mem.zeroes(__u64),
    props_ptr: __u64 = @import("std").mem.zeroes(__u64),
    prop_values_ptr: __u64 = @import("std").mem.zeroes(__u64),
    reserved: __u64 = @import("std").mem.zeroes(__u64),
    user_data: __u64 = @import("std").mem.zeroes(__u64),
};
pub const struct_drm_format_modifier_blob = extern struct {
    version: __u32 = @import("std").mem.zeroes(__u32),
    flags: __u32 = @import("std").mem.zeroes(__u32),
    count_formats: __u32 = @import("std").mem.zeroes(__u32),
    formats_offset: __u32 = @import("std").mem.zeroes(__u32),
    count_modifiers: __u32 = @import("std").mem.zeroes(__u32),
    modifiers_offset: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_drm_format_modifier = extern struct {
    formats: __u64 = @import("std").mem.zeroes(__u64),
    offset: __u32 = @import("std").mem.zeroes(__u32),
    pad: __u32 = @import("std").mem.zeroes(__u32),
    modifier: __u64 = @import("std").mem.zeroes(__u64),
};
pub const struct_drm_mode_create_blob = extern struct {
    data: __u64 = @import("std").mem.zeroes(__u64),
    length: __u32 = @import("std").mem.zeroes(__u32),
    blob_id: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_drm_mode_destroy_blob = extern struct {
    blob_id: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_drm_mode_create_lease = extern struct {
    object_ids: __u64 = @import("std").mem.zeroes(__u64),
    object_count: __u32 = @import("std").mem.zeroes(__u32),
    flags: __u32 = @import("std").mem.zeroes(__u32),
    lessee_id: __u32 = @import("std").mem.zeroes(__u32),
    fd: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_drm_mode_list_lessees = extern struct {
    count_lessees: __u32 = @import("std").mem.zeroes(__u32),
    pad: __u32 = @import("std").mem.zeroes(__u32),
    lessees_ptr: __u64 = @import("std").mem.zeroes(__u64),
};
pub const struct_drm_mode_get_lease = extern struct {
    count_objects: __u32 = @import("std").mem.zeroes(__u32),
    pad: __u32 = @import("std").mem.zeroes(__u32),
    objects_ptr: __u64 = @import("std").mem.zeroes(__u64),
};
pub const struct_drm_mode_revoke_lease = extern struct {
    lessee_id: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_drm_mode_rect = extern struct {
    x1: __s32 = @import("std").mem.zeroes(__s32),
    y1: __s32 = @import("std").mem.zeroes(__s32),
    x2: __s32 = @import("std").mem.zeroes(__s32),
    y2: __s32 = @import("std").mem.zeroes(__s32),
};
pub const struct_drm_mode_closefb = extern struct {
    fb_id: __u32 = @import("std").mem.zeroes(__u32),
    pad: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_drm_event = extern struct {
    type: __u32 = @import("std").mem.zeroes(__u32),
    length: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_drm_event_vblank = extern struct {
    base: struct_drm_event = @import("std").mem.zeroes(struct_drm_event),
    user_data: __u64 = @import("std").mem.zeroes(__u64),
    tv_sec: __u32 = @import("std").mem.zeroes(__u32),
    tv_usec: __u32 = @import("std").mem.zeroes(__u32),
    sequence: __u32 = @import("std").mem.zeroes(__u32),
    crtc_id: __u32 = @import("std").mem.zeroes(__u32),
};
pub const struct_drm_event_crtc_sequence = extern struct {
    base: struct_drm_event = @import("std").mem.zeroes(struct_drm_event),
    user_data: __u64 = @import("std").mem.zeroes(__u64),
    time_ns: __s64 = @import("std").mem.zeroes(__s64),
    sequence: __u64 = @import("std").mem.zeroes(__u64),
};
pub const drm_clip_rect_t = struct_drm_clip_rect;
pub const drm_drawable_info_t = struct_drm_drawable_info;
pub const drm_tex_region_t = struct_drm_tex_region;
pub const drm_hw_lock_t = struct_drm_hw_lock;
pub const drm_version_t = struct_drm_version;
pub const drm_unique_t = struct_drm_unique;
pub const drm_list_t = struct_drm_list;
pub const drm_block_t = struct_drm_block;
pub const drm_control_t = struct_drm_control;
pub const drm_map_type_t = enum_drm_map_type;
pub const drm_map_flags_t = enum_drm_map_flags;
pub const drm_ctx_priv_map_t = struct_drm_ctx_priv_map;
pub const drm_map_t = struct_drm_map;
pub const drm_client_t = struct_drm_client;
pub const drm_stat_type_t = enum_drm_stat_type;
pub const drm_stats_t = struct_drm_stats;
pub const drm_lock_flags_t = enum_drm_lock_flags;
pub const drm_lock_t = struct_drm_lock;
pub const drm_dma_flags_t = enum_drm_dma_flags;
pub const drm_buf_desc_t = struct_drm_buf_desc;
pub const drm_buf_info_t = struct_drm_buf_info;
pub const drm_buf_free_t = struct_drm_buf_free;
pub const drm_buf_pub_t = struct_drm_buf_pub;
pub const drm_buf_map_t = struct_drm_buf_map;
pub const drm_dma_t = struct_drm_dma;
pub const drm_wait_vblank_t = union_drm_wait_vblank;
pub const drm_agp_mode_t = struct_drm_agp_mode;
pub const drm_ctx_flags_t = enum_drm_ctx_flags;
pub const drm_ctx_t = struct_drm_ctx;
pub const drm_ctx_res_t = struct_drm_ctx_res;
pub const drm_draw_t = struct_drm_draw;
pub const drm_update_draw_t = struct_drm_update_draw;
pub const drm_auth_t = struct_drm_auth;
pub const drm_irq_busid_t = struct_drm_irq_busid;
pub const drm_vblank_seq_type_t = enum_drm_vblank_seq_type;
pub const drm_agp_buffer_t = struct_drm_agp_buffer;
pub const drm_agp_binding_t = struct_drm_agp_binding;
pub const drm_agp_info_t = struct_drm_agp_info;
pub const drm_scatter_gather_t = struct_drm_scatter_gather;
pub const drm_set_version_t = struct_drm_set_version;
pub const drmSize = c_uint;
pub const drmSizePtr = [*c]c_uint;
pub const drmAddress = ?*anyopaque;
pub const drmAddressPtr = [*c]?*anyopaque;
pub const struct__drmServerInfo = extern struct {
    debug_print: ?*const fn ([*c]const u8, [*c]struct___va_list_tag_1) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, [*c]struct___va_list_tag_1) callconv(.c) c_int),
    load_module: ?*const fn ([*c]const u8) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8) callconv(.c) c_int),
    get_perms: ?*const fn ([*c]gid_t, [*c]mode_t) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]gid_t, [*c]mode_t) callconv(.c) void),
};
pub const drmServerInfo = struct__drmServerInfo;
pub const drmServerInfoPtr = [*c]struct__drmServerInfo;
pub const struct_drmHashEntry = extern struct {
    fd: c_int = @import("std").mem.zeroes(c_int),
    f: ?*const fn (c_int, ?*anyopaque, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (c_int, ?*anyopaque, ?*anyopaque) callconv(.c) void),
    tagTable: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const drmHashEntry = struct_drmHashEntry;
pub extern fn drmIoctl(fd: c_int, request: c_ulong, arg: ?*anyopaque) c_int;
pub extern fn drmGetHashTable() ?*anyopaque;
pub extern fn drmGetEntry(fd: c_int) [*c]drmHashEntry;
pub const struct__drmVersion = extern struct {
    version_major: c_int = @import("std").mem.zeroes(c_int),
    version_minor: c_int = @import("std").mem.zeroes(c_int),
    version_patchlevel: c_int = @import("std").mem.zeroes(c_int),
    name_len: c_int = @import("std").mem.zeroes(c_int),
    name: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    date_len: c_int = @import("std").mem.zeroes(c_int),
    date: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    desc_len: c_int = @import("std").mem.zeroes(c_int),
    desc: [*c]u8 = @import("std").mem.zeroes([*c]u8),
};
pub const drmVersion = struct__drmVersion;
pub const drmVersionPtr = [*c]struct__drmVersion;
const struct_unnamed_9 = extern struct {
    value: c_ulong = @import("std").mem.zeroes(c_ulong),
    long_format: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    long_name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    rate_format: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    rate_name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    isvalue: c_int = @import("std").mem.zeroes(c_int),
    mult_names: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    mult: c_int = @import("std").mem.zeroes(c_int),
    verbose: c_int = @import("std").mem.zeroes(c_int),
};
pub const struct__drmStats = extern struct {
    count: c_ulong = @import("std").mem.zeroes(c_ulong),
    data: [15]struct_unnamed_9 = @import("std").mem.zeroes([15]struct_unnamed_9),
};
pub const drmStatsT = struct__drmStats;
pub const DRM_FRAME_BUFFER: c_int = 0;
pub const DRM_REGISTERS: c_int = 1;
pub const DRM_SHM: c_int = 2;
pub const DRM_AGP: c_int = 3;
pub const DRM_SCATTER_GATHER: c_int = 4;
pub const DRM_CONSISTENT: c_int = 5;
pub const drmMapType = c_uint;
pub const DRM_RESTRICTED: c_int = 1;
pub const DRM_READ_ONLY: c_int = 2;
pub const DRM_LOCKED: c_int = 4;
pub const DRM_KERNEL: c_int = 8;
pub const DRM_WRITE_COMBINING: c_int = 16;
pub const DRM_CONTAINS_LOCK: c_int = 32;
pub const DRM_REMOVABLE: c_int = 64;
pub const drmMapFlags = c_uint;
pub const DRM_DMA_BLOCK: c_int = 1;
pub const DRM_DMA_WHILE_LOCKED: c_int = 2;
pub const DRM_DMA_PRIORITY: c_int = 4;
pub const DRM_DMA_WAIT: c_int = 16;
pub const DRM_DMA_SMALLER_OK: c_int = 32;
pub const DRM_DMA_LARGER_OK: c_int = 64;
pub const drmDMAFlags = c_uint;
pub const DRM_PAGE_ALIGN: c_int = 1;
pub const DRM_AGP_BUFFER: c_int = 2;
pub const DRM_SG_BUFFER: c_int = 4;
pub const DRM_FB_BUFFER: c_int = 8;
pub const DRM_PCI_BUFFER_RO: c_int = 16;
pub const drmBufDescFlags = c_uint;
pub const DRM_LOCK_READY: c_int = 1;
pub const DRM_LOCK_QUIESCENT: c_int = 2;
pub const DRM_LOCK_FLUSH: c_int = 4;
pub const DRM_LOCK_FLUSH_ALL: c_int = 8;
pub const DRM_HALT_ALL_QUEUES: c_int = 16;
pub const DRM_HALT_CUR_QUEUES: c_int = 32;
pub const drmLockFlags = c_uint;
pub const DRM_CONTEXT_PRESERVED: c_int = 1;
pub const DRM_CONTEXT_2DONLY: c_int = 2;
pub const drm_context_tFlags = c_uint;
pub const drm_context_tFlagsPtr = [*c]drm_context_tFlags;
pub const struct__drmBufDesc = extern struct {
    count: c_int = @import("std").mem.zeroes(c_int),
    size: c_int = @import("std").mem.zeroes(c_int),
    low_mark: c_int = @import("std").mem.zeroes(c_int),
    high_mark: c_int = @import("std").mem.zeroes(c_int),
};
pub const drmBufDesc = struct__drmBufDesc;
pub const drmBufDescPtr = [*c]struct__drmBufDesc;
pub const struct__drmBufInfo = extern struct {
    count: c_int = @import("std").mem.zeroes(c_int),
    list: drmBufDescPtr = @import("std").mem.zeroes(drmBufDescPtr),
};
pub const drmBufInfo = struct__drmBufInfo;
pub const drmBufInfoPtr = [*c]struct__drmBufInfo;
pub const struct__drmBuf = extern struct {
    idx: c_int = @import("std").mem.zeroes(c_int),
    total: c_int = @import("std").mem.zeroes(c_int),
    used: c_int = @import("std").mem.zeroes(c_int),
    address: drmAddress = @import("std").mem.zeroes(drmAddress),
};
pub const drmBuf = struct__drmBuf;
pub const drmBufPtr = [*c]struct__drmBuf;
pub const struct__drmBufMap = extern struct {
    count: c_int = @import("std").mem.zeroes(c_int),
    list: drmBufPtr = @import("std").mem.zeroes(drmBufPtr),
};
pub const drmBufMap = struct__drmBufMap;
pub const drmBufMapPtr = [*c]struct__drmBufMap;
pub const struct__drmLock = extern struct {
    lock: c_uint = @import("std").mem.zeroes(c_uint),
    padding: [60]u8 = @import("std").mem.zeroes([60]u8),
};
pub const drmLock = struct__drmLock;
pub const drmLockPtr = [*c]struct__drmLock;
pub const struct__drmDMAReq = extern struct {
    context: drm_context_t = @import("std").mem.zeroes(drm_context_t),
    send_count: c_int = @import("std").mem.zeroes(c_int),
    send_list: [*c]c_int = @import("std").mem.zeroes([*c]c_int),
    send_sizes: [*c]c_int = @import("std").mem.zeroes([*c]c_int),
    flags: drmDMAFlags = @import("std").mem.zeroes(drmDMAFlags),
    request_count: c_int = @import("std").mem.zeroes(c_int),
    request_size: c_int = @import("std").mem.zeroes(c_int),
    request_list: [*c]c_int = @import("std").mem.zeroes([*c]c_int),
    request_sizes: [*c]c_int = @import("std").mem.zeroes([*c]c_int),
    granted_count: c_int = @import("std").mem.zeroes(c_int),
};
pub const drmDMAReq = struct__drmDMAReq;
pub const drmDMAReqPtr = [*c]struct__drmDMAReq;
pub const struct__drmRegion = extern struct {
    handle: drm_handle_t = @import("std").mem.zeroes(drm_handle_t),
    offset: c_uint = @import("std").mem.zeroes(c_uint),
    size: drmSize = @import("std").mem.zeroes(drmSize),
    map: drmAddress = @import("std").mem.zeroes(drmAddress),
};
pub const drmRegion = struct__drmRegion;
pub const drmRegionPtr = [*c]struct__drmRegion;
pub const struct__drmTextureRegion = extern struct {
    next: u8 = @import("std").mem.zeroes(u8),
    prev: u8 = @import("std").mem.zeroes(u8),
    in_use: u8 = @import("std").mem.zeroes(u8),
    padding: u8 = @import("std").mem.zeroes(u8),
    age: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const drmTextureRegion = struct__drmTextureRegion;
pub const drmTextureRegionPtr = [*c]struct__drmTextureRegion;
pub const DRM_VBLANK_ABSOLUTE: c_int = 0;
pub const DRM_VBLANK_RELATIVE: c_int = 1;
pub const DRM_VBLANK_HIGH_CRTC_MASK: c_int = 62;
pub const DRM_VBLANK_EVENT: c_int = 67108864;
pub const DRM_VBLANK_FLIP: c_int = 134217728;
pub const DRM_VBLANK_NEXTONMISS: c_int = 268435456;
pub const DRM_VBLANK_SECONDARY: c_int = 536870912;
pub const DRM_VBLANK_SIGNAL: c_int = 1073741824;
pub const drmVBlankSeqType = c_uint;
pub const struct__drmVBlankReq = extern struct {
    type: drmVBlankSeqType = @import("std").mem.zeroes(drmVBlankSeqType),
    sequence: c_uint = @import("std").mem.zeroes(c_uint),
    signal: c_ulong = @import("std").mem.zeroes(c_ulong),
};
pub const drmVBlankReq = struct__drmVBlankReq;
pub const drmVBlankReqPtr = [*c]struct__drmVBlankReq;
pub const struct__drmVBlankReply = extern struct {
    type: drmVBlankSeqType = @import("std").mem.zeroes(drmVBlankSeqType),
    sequence: c_uint = @import("std").mem.zeroes(c_uint),
    tval_sec: c_long = @import("std").mem.zeroes(c_long),
    tval_usec: c_long = @import("std").mem.zeroes(c_long),
};
pub const drmVBlankReply = struct__drmVBlankReply;
pub const drmVBlankReplyPtr = [*c]struct__drmVBlankReply;
pub const union__drmVBlank = extern union {
    request: drmVBlankReq,
    reply: drmVBlankReply,
};
pub const drmVBlank = union__drmVBlank;
pub const drmVBlankPtr = [*c]union__drmVBlank;
pub const struct__drmSetVersion = extern struct {
    drm_di_major: c_int = @import("std").mem.zeroes(c_int),
    drm_di_minor: c_int = @import("std").mem.zeroes(c_int),
    drm_dd_major: c_int = @import("std").mem.zeroes(c_int),
    drm_dd_minor: c_int = @import("std").mem.zeroes(c_int),
};
pub const drmSetVersion = struct__drmSetVersion;
pub const drmSetVersionPtr = [*c]struct__drmSetVersion;
pub extern fn drmAvailable() c_int;
pub extern fn drmOpen(name: [*c]const u8, busid: [*c]const u8) c_int;
pub extern fn drmOpenWithType(name: [*c]const u8, busid: [*c]const u8, @"type": c_int) c_int;
pub extern fn drmOpenControl(minor: c_int) c_int;
pub extern fn drmOpenRender(minor: c_int) c_int;
pub extern fn drmClose(fd: c_int) c_int;
pub extern fn drmGetVersion(fd: c_int) drmVersionPtr;
pub extern fn drmGetLibVersion(fd: c_int) drmVersionPtr;
pub extern fn drmGetCap(fd: c_int, capability: u64, value: [*c]u64) c_int;
pub extern fn drmFreeVersion(drmVersionPtr) void;
pub extern fn drmGetMagic(fd: c_int, magic: [*c]drm_magic_t) c_int;
pub extern fn drmGetBusid(fd: c_int) [*c]u8;
pub extern fn drmGetInterruptFromBusID(fd: c_int, busnum: c_int, devnum: c_int, funcnum: c_int) c_int;
pub extern fn drmGetMap(fd: c_int, idx: c_int, offset: [*c]drm_handle_t, size: [*c]drmSize, @"type": [*c]drmMapType, flags: [*c]drmMapFlags, handle: [*c]drm_handle_t, mtrr: [*c]c_int) c_int;
pub extern fn drmGetClient(fd: c_int, idx: c_int, auth: [*c]c_int, pid: [*c]c_int, uid: [*c]c_int, magic: [*c]c_ulong, iocs: [*c]c_ulong) c_int;
pub extern fn drmGetStats(fd: c_int, stats: [*c]drmStatsT) c_int;
pub extern fn drmSetInterfaceVersion(fd: c_int, version: [*c]drmSetVersion) c_int;
pub extern fn drmCommandNone(fd: c_int, drmCommandIndex: c_ulong) c_int;
pub extern fn drmCommandRead(fd: c_int, drmCommandIndex: c_ulong, data: ?*anyopaque, size: c_ulong) c_int;
pub extern fn drmCommandWrite(fd: c_int, drmCommandIndex: c_ulong, data: ?*anyopaque, size: c_ulong) c_int;
pub extern fn drmCommandWriteRead(fd: c_int, drmCommandIndex: c_ulong, data: ?*anyopaque, size: c_ulong) c_int;
pub extern fn drmFreeBusid(busid: [*c]const u8) void;
pub extern fn drmSetBusid(fd: c_int, busid: [*c]const u8) c_int;
pub extern fn drmAuthMagic(fd: c_int, magic: drm_magic_t) c_int;
pub extern fn drmAddMap(fd: c_int, offset: drm_handle_t, size: drmSize, @"type": drmMapType, flags: drmMapFlags, handle: [*c]drm_handle_t) c_int;
pub extern fn drmRmMap(fd: c_int, handle: drm_handle_t) c_int;
pub extern fn drmAddContextPrivateMapping(fd: c_int, ctx_id: drm_context_t, handle: drm_handle_t) c_int;
pub extern fn drmAddBufs(fd: c_int, count: c_int, size: c_int, flags: drmBufDescFlags, agp_offset: c_int) c_int;
pub extern fn drmMarkBufs(fd: c_int, low: f64, high: f64) c_int;
pub extern fn drmCreateContext(fd: c_int, handle: [*c]drm_context_t) c_int;
pub extern fn drmSetContextFlags(fd: c_int, context: drm_context_t, flags: drm_context_tFlags) c_int;
pub extern fn drmGetContextFlags(fd: c_int, context: drm_context_t, flags: drm_context_tFlagsPtr) c_int;
pub extern fn drmAddContextTag(fd: c_int, context: drm_context_t, tag: ?*anyopaque) c_int;
pub extern fn drmDelContextTag(fd: c_int, context: drm_context_t) c_int;
pub extern fn drmGetContextTag(fd: c_int, context: drm_context_t) ?*anyopaque;
pub extern fn drmGetReservedContextList(fd: c_int, count: [*c]c_int) [*c]drm_context_t;
pub extern fn drmFreeReservedContextList([*c]drm_context_t) void;
pub extern fn drmSwitchToContext(fd: c_int, context: drm_context_t) c_int;
pub extern fn drmDestroyContext(fd: c_int, handle: drm_context_t) c_int;
pub extern fn drmCreateDrawable(fd: c_int, handle: [*c]drm_drawable_t) c_int;
pub extern fn drmDestroyDrawable(fd: c_int, handle: drm_drawable_t) c_int;
pub extern fn drmUpdateDrawableInfo(fd: c_int, handle: drm_drawable_t, @"type": drm_drawable_info_type_t, num: c_uint, data: ?*anyopaque) c_int;
pub extern fn drmCtlInstHandler(fd: c_int, irq: c_int) c_int;
pub extern fn drmCtlUninstHandler(fd: c_int) c_int;
pub extern fn drmSetClientCap(fd: c_int, capability: u64, value: u64) c_int;
pub extern fn drmCrtcGetSequence(fd: c_int, crtcId: u32, sequence: [*c]u64, ns: [*c]u64) c_int;
pub extern fn drmCrtcQueueSequence(fd: c_int, crtcId: u32, flags: u32, sequence: u64, sequence_queued: [*c]u64, user_data: u64) c_int;
pub extern fn drmMap(fd: c_int, handle: drm_handle_t, size: drmSize, address: drmAddressPtr) c_int;
pub extern fn drmUnmap(address: drmAddress, size: drmSize) c_int;
pub extern fn drmGetBufInfo(fd: c_int) drmBufInfoPtr;
pub extern fn drmMapBufs(fd: c_int) drmBufMapPtr;
pub extern fn drmUnmapBufs(bufs: drmBufMapPtr) c_int;
pub extern fn drmDMA(fd: c_int, request: drmDMAReqPtr) c_int;
pub extern fn drmFreeBufs(fd: c_int, count: c_int, list: [*c]c_int) c_int;
pub extern fn drmGetLock(fd: c_int, context: drm_context_t, flags: drmLockFlags) c_int;
pub extern fn drmUnlock(fd: c_int, context: drm_context_t) c_int;
pub extern fn drmFinish(fd: c_int, context: c_int, flags: drmLockFlags) c_int;
pub extern fn drmGetContextPrivateMapping(fd: c_int, ctx_id: drm_context_t, handle: [*c]drm_handle_t) c_int;
pub extern fn drmAgpAcquire(fd: c_int) c_int;
pub extern fn drmAgpRelease(fd: c_int) c_int;
pub extern fn drmAgpEnable(fd: c_int, mode: c_ulong) c_int;
pub extern fn drmAgpAlloc(fd: c_int, size: c_ulong, @"type": c_ulong, address: [*c]c_ulong, handle: [*c]drm_handle_t) c_int;
pub extern fn drmAgpFree(fd: c_int, handle: drm_handle_t) c_int;
pub extern fn drmAgpBind(fd: c_int, handle: drm_handle_t, offset: c_ulong) c_int;
pub extern fn drmAgpUnbind(fd: c_int, handle: drm_handle_t) c_int;
pub extern fn drmAgpVersionMajor(fd: c_int) c_int;
pub extern fn drmAgpVersionMinor(fd: c_int) c_int;
pub extern fn drmAgpGetMode(fd: c_int) c_ulong;
pub extern fn drmAgpBase(fd: c_int) c_ulong;
pub extern fn drmAgpSize(fd: c_int) c_ulong;
pub extern fn drmAgpMemoryUsed(fd: c_int) c_ulong;
pub extern fn drmAgpMemoryAvail(fd: c_int) c_ulong;
pub extern fn drmAgpVendorId(fd: c_int) c_uint;
pub extern fn drmAgpDeviceId(fd: c_int) c_uint;
pub extern fn drmScatterGatherAlloc(fd: c_int, size: c_ulong, handle: [*c]drm_handle_t) c_int;
pub extern fn drmScatterGatherFree(fd: c_int, handle: drm_handle_t) c_int;
pub extern fn drmWaitVBlank(fd: c_int, vbl: drmVBlankPtr) c_int;
pub extern fn drmSetServerInfo(info: drmServerInfoPtr) void;
pub extern fn drmError(err: c_int, label: [*c]const u8) c_int;
pub extern fn drmMalloc(size: c_int) ?*anyopaque;
pub extern fn drmFree(pt: ?*anyopaque) void;
pub extern fn drmHashCreate() ?*anyopaque;
pub extern fn drmHashDestroy(t: ?*anyopaque) c_int;
pub extern fn drmHashLookup(t: ?*anyopaque, key: c_ulong, value: [*c]?*anyopaque) c_int;
pub extern fn drmHashInsert(t: ?*anyopaque, key: c_ulong, value: ?*anyopaque) c_int;
pub extern fn drmHashDelete(t: ?*anyopaque, key: c_ulong) c_int;
pub extern fn drmHashFirst(t: ?*anyopaque, key: [*c]c_ulong, value: [*c]?*anyopaque) c_int;
pub extern fn drmHashNext(t: ?*anyopaque, key: [*c]c_ulong, value: [*c]?*anyopaque) c_int;
pub extern fn drmRandomCreate(seed: c_ulong) ?*anyopaque;
pub extern fn drmRandomDestroy(state: ?*anyopaque) c_int;
pub extern fn drmRandom(state: ?*anyopaque) c_ulong;
pub extern fn drmRandomDouble(state: ?*anyopaque) f64;
pub extern fn drmSLCreate() ?*anyopaque;
pub extern fn drmSLDestroy(l: ?*anyopaque) c_int;
pub extern fn drmSLLookup(l: ?*anyopaque, key: c_ulong, value: [*c]?*anyopaque) c_int;
pub extern fn drmSLInsert(l: ?*anyopaque, key: c_ulong, value: ?*anyopaque) c_int;
pub extern fn drmSLDelete(l: ?*anyopaque, key: c_ulong) c_int;
pub extern fn drmSLNext(l: ?*anyopaque, key: [*c]c_ulong, value: [*c]?*anyopaque) c_int;
pub extern fn drmSLFirst(l: ?*anyopaque, key: [*c]c_ulong, value: [*c]?*anyopaque) c_int;
pub extern fn drmSLDump(l: ?*anyopaque) void;
pub extern fn drmSLLookupNeighbors(l: ?*anyopaque, key: c_ulong, prev_key: [*c]c_ulong, prev_value: [*c]?*anyopaque, next_key: [*c]c_ulong, next_value: [*c]?*anyopaque) c_int;
pub extern fn drmOpenOnce(unused: ?*anyopaque, BusID: [*c]const u8, newlyopened: [*c]c_int) c_int;
pub extern fn drmOpenOnceWithType(BusID: [*c]const u8, newlyopened: [*c]c_int, @"type": c_int) c_int;
pub extern fn drmCloseOnce(fd: c_int) void;
pub extern fn drmMsg(format: [*c]const u8, ...) void;
pub extern fn drmSetMaster(fd: c_int) c_int;
pub extern fn drmDropMaster(fd: c_int) c_int;
pub extern fn drmIsMaster(fd: c_int) c_int;
pub const struct__drmEventContext = extern struct {
    version: c_int = @import("std").mem.zeroes(c_int),
    vblank_handler: ?*const fn (c_int, c_uint, c_uint, c_uint, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (c_int, c_uint, c_uint, c_uint, ?*anyopaque) callconv(.c) void),
    page_flip_handler: ?*const fn (c_int, c_uint, c_uint, c_uint, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (c_int, c_uint, c_uint, c_uint, ?*anyopaque) callconv(.c) void),
    page_flip_handler2: ?*const fn (c_int, c_uint, c_uint, c_uint, c_uint, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (c_int, c_uint, c_uint, c_uint, c_uint, ?*anyopaque) callconv(.c) void),
    sequence_handler: ?*const fn (c_int, u64, u64, u64) callconv(.c) void = @import("std").mem.zeroes(?*const fn (c_int, u64, u64, u64) callconv(.c) void),
};
pub const drmEventContext = struct__drmEventContext;
pub const drmEventContextPtr = [*c]struct__drmEventContext;
pub extern fn drmHandleEvent(fd: c_int, evctx: drmEventContextPtr) c_int;
pub extern fn drmGetDeviceNameFromFd(fd: c_int) [*c]u8;
pub extern fn drmGetDeviceNameFromFd2(fd: c_int) [*c]u8;
pub extern fn drmGetNodeTypeFromFd(fd: c_int) c_int;
pub extern fn drmPrimeHandleToFD(fd: c_int, handle: u32, flags: u32, prime_fd: [*c]c_int) c_int;
pub extern fn drmPrimeFDToHandle(fd: c_int, prime_fd: c_int, handle: [*c]u32) c_int;
pub extern fn drmCloseBufferHandle(fd: c_int, handle: u32) c_int;
pub extern fn drmGetPrimaryDeviceNameFromFd(fd: c_int) [*c]u8;
pub extern fn drmGetRenderDeviceNameFromFd(fd: c_int) [*c]u8;
pub const struct__drmPciBusInfo = extern struct {
    domain: u16 = @import("std").mem.zeroes(u16),
    bus: u8 = @import("std").mem.zeroes(u8),
    dev: u8 = @import("std").mem.zeroes(u8),
    func: u8 = @import("std").mem.zeroes(u8),
};
pub const drmPciBusInfo = struct__drmPciBusInfo;
pub const drmPciBusInfoPtr = [*c]struct__drmPciBusInfo;
pub const struct__drmPciDeviceInfo = extern struct {
    vendor_id: u16 = @import("std").mem.zeroes(u16),
    device_id: u16 = @import("std").mem.zeroes(u16),
    subvendor_id: u16 = @import("std").mem.zeroes(u16),
    subdevice_id: u16 = @import("std").mem.zeroes(u16),
    revision_id: u8 = @import("std").mem.zeroes(u8),
};
pub const drmPciDeviceInfo = struct__drmPciDeviceInfo;
pub const drmPciDeviceInfoPtr = [*c]struct__drmPciDeviceInfo;
pub const struct__drmUsbBusInfo = extern struct {
    bus: u8 = @import("std").mem.zeroes(u8),
    dev: u8 = @import("std").mem.zeroes(u8),
};
pub const drmUsbBusInfo = struct__drmUsbBusInfo;
pub const drmUsbBusInfoPtr = [*c]struct__drmUsbBusInfo;
pub const struct__drmUsbDeviceInfo = extern struct {
    vendor: u16 = @import("std").mem.zeroes(u16),
    product: u16 = @import("std").mem.zeroes(u16),
};
pub const drmUsbDeviceInfo = struct__drmUsbDeviceInfo;
pub const drmUsbDeviceInfoPtr = [*c]struct__drmUsbDeviceInfo;
pub const struct__drmPlatformBusInfo = extern struct {
    fullname: [512]u8 = @import("std").mem.zeroes([512]u8),
};
pub const drmPlatformBusInfo = struct__drmPlatformBusInfo;
pub const drmPlatformBusInfoPtr = [*c]struct__drmPlatformBusInfo;
pub const struct__drmPlatformDeviceInfo = extern struct {
    compatible: [*c][*c]u8 = @import("std").mem.zeroes([*c][*c]u8),
};
pub const drmPlatformDeviceInfo = struct__drmPlatformDeviceInfo;
pub const drmPlatformDeviceInfoPtr = [*c]struct__drmPlatformDeviceInfo;
pub const struct__drmHost1xBusInfo = extern struct {
    fullname: [512]u8 = @import("std").mem.zeroes([512]u8),
};
pub const drmHost1xBusInfo = struct__drmHost1xBusInfo;
pub const drmHost1xBusInfoPtr = [*c]struct__drmHost1xBusInfo;
pub const struct__drmHost1xDeviceInfo = extern struct {
    compatible: [*c][*c]u8 = @import("std").mem.zeroes([*c][*c]u8),
};
pub const drmHost1xDeviceInfo = struct__drmHost1xDeviceInfo;
pub const drmHost1xDeviceInfoPtr = [*c]struct__drmHost1xDeviceInfo;
pub const struct__drmFauxBusInfo = extern struct {
    name: [512]u8 = @import("std").mem.zeroes([512]u8),
};
pub const drmFauxBusInfo = struct__drmFauxBusInfo;
pub const drmFauxBusInfoPtr = [*c]struct__drmFauxBusInfo;
const union_unnamed_10 = extern union {
    pci: drmPciBusInfoPtr,
    usb: drmUsbBusInfoPtr,
    platform: drmPlatformBusInfoPtr,
    host1x: drmHost1xBusInfoPtr,
    faux: drmFauxBusInfoPtr,
};
const union_unnamed_11 = extern union {
    pci: drmPciDeviceInfoPtr,
    usb: drmUsbDeviceInfoPtr,
    platform: drmPlatformDeviceInfoPtr,
    host1x: drmHost1xDeviceInfoPtr,
};
pub const struct__drmDevice = extern struct {
    nodes: [*c][*c]u8 = @import("std").mem.zeroes([*c][*c]u8),
    available_nodes: c_int = @import("std").mem.zeroes(c_int),
    bustype: c_int = @import("std").mem.zeroes(c_int),
    businfo: union_unnamed_10 = @import("std").mem.zeroes(union_unnamed_10),
    deviceinfo: union_unnamed_11 = @import("std").mem.zeroes(union_unnamed_11),
};
pub const drmDevice = struct__drmDevice;
pub const drmDevicePtr = [*c]struct__drmDevice;
pub extern fn drmGetDevice(fd: c_int, device: [*c]drmDevicePtr) c_int;
pub extern fn drmFreeDevice(device: [*c]drmDevicePtr) void;
pub extern fn drmGetDevices(devices: [*c]drmDevicePtr, max_devices: c_int) c_int;
pub extern fn drmFreeDevices(devices: [*c]drmDevicePtr, count: c_int) void;
pub extern fn drmGetDevice2(fd: c_int, flags: u32, device: [*c]drmDevicePtr) c_int;
pub extern fn drmGetDevices2(flags: u32, devices: [*c]drmDevicePtr, max_devices: c_int) c_int;
pub extern fn drmGetDeviceFromDevId(dev_id: dev_t, flags: u32, device: [*c]drmDevicePtr) c_int;
pub extern fn drmGetNodeTypeFromDevId(devid: dev_t) c_int;
pub extern fn drmDevicesEqual(a: drmDevicePtr, b: drmDevicePtr) c_int;
pub extern fn drmSyncobjCreate(fd: c_int, flags: u32, handle: [*c]u32) c_int;
pub extern fn drmSyncobjDestroy(fd: c_int, handle: u32) c_int;
pub extern fn drmSyncobjHandleToFD(fd: c_int, handle: u32, obj_fd: [*c]c_int) c_int;
pub extern fn drmSyncobjFDToHandle(fd: c_int, obj_fd: c_int, handle: [*c]u32) c_int;
pub extern fn drmSyncobjImportSyncFile(fd: c_int, handle: u32, sync_file_fd: c_int) c_int;
pub extern fn drmSyncobjExportSyncFile(fd: c_int, handle: u32, sync_file_fd: [*c]c_int) c_int;
pub extern fn drmSyncobjWait(fd: c_int, handles: [*c]u32, num_handles: c_uint, timeout_nsec: i64, flags: c_uint, first_signaled: [*c]u32) c_int;
pub extern fn drmSyncobjReset(fd: c_int, handles: [*c]const u32, handle_count: u32) c_int;
pub extern fn drmSyncobjSignal(fd: c_int, handles: [*c]const u32, handle_count: u32) c_int;
pub extern fn drmSyncobjTimelineSignal(fd: c_int, handles: [*c]const u32, points: [*c]u64, handle_count: u32) c_int;
pub extern fn drmSyncobjTimelineWait(fd: c_int, handles: [*c]u32, points: [*c]u64, num_handles: c_uint, timeout_nsec: i64, flags: c_uint, first_signaled: [*c]u32) c_int;
pub extern fn drmSyncobjQuery(fd: c_int, handles: [*c]u32, points: [*c]u64, handle_count: u32) c_int;
pub extern fn drmSyncobjQuery2(fd: c_int, handles: [*c]u32, points: [*c]u64, handle_count: u32, flags: u32) c_int;
pub extern fn drmSyncobjTransfer(fd: c_int, dst_handle: u32, dst_point: u64, src_handle: u32, src_point: u64, flags: u32) c_int;
pub extern fn drmSyncobjEventfd(fd: c_int, handle: u32, point: u64, ev_fd: c_int, flags: u32) c_int;
pub extern fn drmGetFormatModifierVendor(modifier: u64) [*c]u8;
pub extern fn drmGetFormatModifierName(modifier: u64) [*c]u8;
pub extern fn drmGetFormatName(format: u32) [*c]u8;
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 20);
pub const __clang_minor__ = @as(c_int, 1);
pub const __clang_patchlevel__ = @as(c_int, 8);
pub const __clang_version__ = "20.1.8 ";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __MEMORY_SCOPE_SYSTEM = @as(c_int, 0);
pub const __MEMORY_SCOPE_DEVICE = @as(c_int, 1);
pub const __MEMORY_SCOPE_WRKGRP = @as(c_int, 2);
pub const __MEMORY_SCOPE_WVFRNT = @as(c_int, 3);
pub const __MEMORY_SCOPE_SINGLE = @as(c_int, 4);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __FPCLASS_SNAN = @as(c_int, 0x0001);
pub const __FPCLASS_QNAN = @as(c_int, 0x0002);
pub const __FPCLASS_NEGINF = @as(c_int, 0x0004);
pub const __FPCLASS_NEGNORMAL = @as(c_int, 0x0008);
pub const __FPCLASS_NEGSUBNORMAL = @as(c_int, 0x0010);
pub const __FPCLASS_NEGZERO = @as(c_int, 0x0020);
pub const __FPCLASS_POSZERO = @as(c_int, 0x0040);
pub const __FPCLASS_POSSUBNORMAL = @as(c_int, 0x0080);
pub const __FPCLASS_POSNORMAL = @as(c_int, 0x0100);
pub const __FPCLASS_POSINF = @as(c_int, 0x0200);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 20.1.8";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 1);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 8388608, .decimal);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`");
// (no file):95:9
pub const __INTMAX_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`");
// (no file):102:9
pub const __UINTMAX_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_uint;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_NORM_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_NORM_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_NORM_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_NORM_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub inline fn __INT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub inline fn __INT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub inline fn __INT32_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT64_TYPE__ = c_long;
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`");
// (no file):207:9
pub const __INT64_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub inline fn __UINT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub inline fn __UINT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`");
// (no file):232:9
pub const __UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulong;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`");
// (no file):241:9
pub const __UINT64_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const __UINT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __INT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_long;
pub const __INT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "ld";
pub const __INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_TYPE__ = c_ulong;
pub const __UINT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_LEAST64_FMTo__ = "lo";
pub const __UINT_LEAST64_FMTu__ = "lu";
pub const __UINT_LEAST64_FMTx__ = "lx";
pub const __UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_long;
pub const __INT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "ld";
pub const __INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_TYPE__ = c_ulong;
pub const __UINT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_FAST64_FMTo__ = "lo";
pub const __UINT_FAST64_FMTu__ = "lu";
pub const __UINT_FAST64_FMTx__ = "lx";
pub const __UINT_FAST64_FMTX__ = "lX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __GCC_DESTRUCTIVE_SIZE = @as(c_int, 64);
pub const __GCC_CONSTRUCTIVE_SIZE = @as(c_int, 64);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __NO_INLINE__ = @as(c_int, 1);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __ELF__ = @as(c_int, 1);
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `address_space`");
// (no file):375:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `address_space`");
// (no file):376:9
pub const __znver2 = @as(c_int, 1);
pub const __znver2__ = @as(c_int, 1);
pub const __tune_znver2__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MWAITX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __SSE4A__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __SHA__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __CLWB__ = @as(c_int, 1);
pub const __WBNOINVD__ = @as(c_int, 1);
pub const __CLZERO__ = @as(c_int, 1);
pub const __RDPID__ = @as(c_int, 1);
pub const __RDPRU__ = @as(c_int, 1);
pub const __CRC32__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const linux = @as(c_int, 1);
pub const __linux = @as(c_int, 1);
pub const __linux__ = @as(c_int, 1);
pub const __gnu_linux__ = @as(c_int, 1);
pub const __FLOAT128__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __STDC_EMBED_NOT_FOUND__ = @as(c_int, 0);
pub const __STDC_EMBED_FOUND__ = @as(c_int, 1);
pub const __STDC_EMBED_EMPTY__ = @as(c_int, 2);
pub const __GLIBC_MINOR__ = @as(c_int, 42);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const _XF86DRM_H_ = "";
pub const __need___va_list = "";
pub const __need_va_list = "";
pub const __need_va_arg = "";
pub const __need___va_copy = "";
pub const __need_va_copy = "";
pub const __STDARG_H = "";
pub const __GNUC_VA_LIST = "";
pub const _VA_LIST = "";
pub const va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`");
// /usr/lib/zig/include/__stdarg_va_arg.h:17:9
pub const va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`");
// /usr/lib/zig/include/__stdarg_va_arg.h:19:9
pub const va_arg = @compileError("unable to translate C expr: unexpected token 'an identifier'");
// /usr/lib/zig/include/__stdarg_va_arg.h:20:9
pub const __va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`");
// /usr/lib/zig/include/__stdarg___va_copy.h:11:9
pub const va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`");
// /usr/lib/zig/include/__stdarg_va_copy.h:11:9
pub const _SYS_TYPES_H = @as(c_int, 1);
pub const _FEATURES_H = @as(c_int, 1);
pub const __KERNEL_STRICT_NAMES = "";
pub inline fn __GNUC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub inline fn __glibc_clang_prereq(maj: anytype, min: anytype) @TypeOf(((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min);
}
pub const __GLIBC_USE = @compileError("unable to translate macro: undefined identifier `__GLIBC_USE_`");
// /usr/include/features.h:191:9
pub const _DEFAULT_SOURCE = @as(c_int, 1);
pub const __GLIBC_USE_ISOC2Y = @as(c_int, 0);
pub const __GLIBC_USE_ISOC23 = @as(c_int, 0);
pub const __USE_ISOC11 = @as(c_int, 1);
pub const __USE_ISOC99 = @as(c_int, 1);
pub const __USE_ISOC95 = @as(c_int, 1);
pub const __USE_POSIX_IMPLICITLY = @as(c_int, 1);
pub const _POSIX_SOURCE = @as(c_int, 1);
pub const _POSIX_C_SOURCE = @as(c_long, 200809);
pub const __USE_POSIX = @as(c_int, 1);
pub const __USE_POSIX2 = @as(c_int, 1);
pub const __USE_POSIX199309 = @as(c_int, 1);
pub const __USE_POSIX199506 = @as(c_int, 1);
pub const __USE_XOPEN2K = @as(c_int, 1);
pub const __USE_XOPEN2K8 = @as(c_int, 1);
pub const _ATFILE_SOURCE = @as(c_int, 1);
pub const __WORDSIZE = @as(c_int, 64);
pub const __WORDSIZE_TIME64_COMPAT32 = @as(c_int, 1);
pub const __SYSCALL_WORDSIZE = @as(c_int, 64);
pub const __TIMESIZE = __WORDSIZE;
pub const __USE_TIME_BITS64 = @as(c_int, 1);
pub const __USE_MISC = @as(c_int, 1);
pub const __USE_ATFILE = @as(c_int, 1);
pub const __USE_FORTIFY_LEVEL = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_GETS = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_SCANF = @as(c_int, 0);
pub const __GLIBC_USE_C23_STRTOL = @as(c_int, 0);
pub const _STDC_PREDEF_H = @as(c_int, 1);
pub const __STDC_IEC_559__ = @as(c_int, 1);
pub const __STDC_IEC_60559_BFP__ = @as(c_long, 201404);
pub const __STDC_IEC_559_COMPLEX__ = @as(c_int, 1);
pub const __STDC_IEC_60559_COMPLEX__ = @as(c_long, 201404);
pub const __STDC_ISO_10646__ = @as(c_long, 201706);
pub const __GNU_LIBRARY__ = @as(c_int, 6);
pub const __GLIBC__ = @as(c_int, 2);
pub inline fn __GLIBC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub const _SYS_CDEFS_H = @as(c_int, 1);
pub const __glibc_has_attribute = @compileError("unable to translate macro: undefined identifier `__has_attribute`");
// /usr/include/sys/cdefs.h:45:10
pub inline fn __glibc_has_builtin(name: anytype) @TypeOf(__has_builtin(name)) {
    _ = &name;
    return __has_builtin(name);
}
pub const __glibc_has_extension = @compileError("unable to translate macro: undefined identifier `__has_extension`");
// /usr/include/sys/cdefs.h:55:10
pub const __LEAF = "";
pub const __LEAF_ATTR = "";
pub const __THROW = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/sys/cdefs.h:79:11
pub const __THROWNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/sys/cdefs.h:80:11
pub const __NTH = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/sys/cdefs.h:81:11
pub const __NTHNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/sys/cdefs.h:82:11
pub const __COLD = @compileError("unable to translate macro: undefined identifier `__cold__`");
// /usr/include/sys/cdefs.h:102:11
pub inline fn __P(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub inline fn __PMT(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token '##'");
// /usr/include/sys/cdefs.h:131:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token '#'");
// /usr/include/sys/cdefs.h:132:9
pub const __ptr_t = ?*anyopaque;
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub const __attribute_overloadable__ = @compileError("unable to translate macro: undefined identifier `__overloadable__`");
// /usr/include/sys/cdefs.h:151:10
pub inline fn __bos(ptr: anytype) @TypeOf(__builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1))) {
    _ = &ptr;
    return __builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1));
}
pub inline fn __bos0(ptr: anytype) @TypeOf(__builtin_object_size(ptr, @as(c_int, 0))) {
    _ = &ptr;
    return __builtin_object_size(ptr, @as(c_int, 0));
}
pub inline fn __glibc_objsize0(__o: anytype) @TypeOf(__bos0(__o)) {
    _ = &__o;
    return __bos0(__o);
}
pub inline fn __glibc_objsize(__o: anytype) @TypeOf(__bos(__o)) {
    _ = &__o;
    return __bos(__o);
}
pub const __warnattr = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:370:10
pub const __errordecl = @compileError("unable to translate C expr: unexpected token 'extern'");
// /usr/include/sys/cdefs.h:371:10
pub const __flexarr = @compileError("unable to translate C expr: unexpected token '['");
// /usr/include/sys/cdefs.h:379:10
pub const __glibc_c99_flexarr_available = @as(c_int, 1);
pub const __REDIRECT = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /usr/include/sys/cdefs.h:410:10
pub const __REDIRECT_NTH = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /usr/include/sys/cdefs.h:417:11
pub const __REDIRECT_NTHNL = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /usr/include/sys/cdefs.h:419:11
pub const __ASMNAME = @compileError("unable to translate C expr: unexpected token ','");
// /usr/include/sys/cdefs.h:422:10
pub inline fn __ASMNAME2(prefix: anytype, cname: anytype) @TypeOf(__STRING(prefix) ++ cname) {
    _ = &prefix;
    _ = &cname;
    return __STRING(prefix) ++ cname;
}
pub const __REDIRECT_FORTIFY = __REDIRECT;
pub const __REDIRECT_FORTIFY_NTH = __REDIRECT_NTH;
pub const __attribute_malloc__ = @compileError("unable to translate macro: undefined identifier `__malloc__`");
// /usr/include/sys/cdefs.h:452:10
pub const __attribute_alloc_size__ = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:463:10
pub const __attribute_alloc_align__ = @compileError("unable to translate macro: undefined identifier `__alloc_align__`");
// /usr/include/sys/cdefs.h:469:10
pub const __attribute_pure__ = @compileError("unable to translate macro: undefined identifier `__pure__`");
// /usr/include/sys/cdefs.h:479:10
pub const __attribute_const__ = @compileError("unable to translate C expr: unexpected token '__attribute__'");
// /usr/include/sys/cdefs.h:486:10
pub const __attribute_maybe_unused__ = @compileError("unable to translate macro: undefined identifier `__unused__`");
// /usr/include/sys/cdefs.h:492:10
pub const __attribute_used__ = @compileError("unable to translate macro: undefined identifier `__used__`");
// /usr/include/sys/cdefs.h:501:10
pub const __attribute_noinline__ = @compileError("unable to translate macro: undefined identifier `__noinline__`");
// /usr/include/sys/cdefs.h:502:10
pub const __attribute_deprecated__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /usr/include/sys/cdefs.h:510:10
pub const __attribute_deprecated_msg__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /usr/include/sys/cdefs.h:520:10
pub const __attribute_format_arg__ = @compileError("unable to translate macro: undefined identifier `__format_arg__`");
// /usr/include/sys/cdefs.h:533:10
pub const __attribute_format_strfmon__ = @compileError("unable to translate macro: undefined identifier `__format__`");
// /usr/include/sys/cdefs.h:543:10
pub const __attribute_nonnull__ = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// /usr/include/sys/cdefs.h:555:11
pub inline fn __nonnull(params: anytype) @TypeOf(__attribute_nonnull__(params)) {
    _ = &params;
    return __attribute_nonnull__(params);
}
pub const __returns_nonnull = @compileError("unable to translate macro: undefined identifier `__returns_nonnull__`");
// /usr/include/sys/cdefs.h:568:10
pub const __attribute_warn_unused_result__ = @compileError("unable to translate macro: undefined identifier `__warn_unused_result__`");
// /usr/include/sys/cdefs.h:577:10
pub const __wur = "";
pub const __always_inline = @compileError("unable to translate macro: undefined identifier `__always_inline__`");
// /usr/include/sys/cdefs.h:595:10
pub const __attribute_artificial__ = @compileError("unable to translate macro: undefined identifier `__artificial__`");
// /usr/include/sys/cdefs.h:604:10
pub const __extern_inline = @compileError("unable to translate macro: undefined identifier `__gnu_inline__`");
// /usr/include/sys/cdefs.h:622:11
pub const __extern_always_inline = @compileError("unable to translate macro: undefined identifier `__gnu_inline__`");
// /usr/include/sys/cdefs.h:623:11
pub const __fortify_function = __extern_always_inline ++ __attribute_artificial__;
pub const __restrict_arr = @compileError("unable to translate C expr: unexpected token '__restrict'");
// /usr/include/sys/cdefs.h:666:10
pub inline fn __glibc_unlikely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 0))) {
    _ = &cond;
    return __builtin_expect(cond, @as(c_int, 0));
}
pub inline fn __glibc_likely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 1))) {
    _ = &cond;
    return __builtin_expect(cond, @as(c_int, 1));
}
pub const __attribute_nonstring__ = "";
pub const __attribute_copy__ = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:715:10
pub const __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI = @as(c_int, 0);
pub inline fn __LDBL_REDIR1(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR(name: anytype, proto: anytype) @TypeOf(name ++ proto) {
    _ = &name;
    _ = &proto;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR1_NTH(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return name ++ proto ++ __THROW;
}
pub inline fn __LDBL_REDIR_NTH(name: anytype, proto: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = &name;
    _ = &proto;
    return name ++ proto ++ __THROW;
}
pub const __LDBL_REDIR2_DECL = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:792:10
pub const __LDBL_REDIR_DECL = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:793:10
pub inline fn __REDIRECT_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT(name, proto, alias);
}
pub inline fn __REDIRECT_NTH_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT_NTH(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT_NTH(name, proto, alias);
}
pub const __glibc_macro_warning1 = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /usr/include/sys/cdefs.h:807:10
pub const __glibc_macro_warning = @compileError("unable to translate macro: undefined identifier `GCC`");
// /usr/include/sys/cdefs.h:808:10
pub const __HAVE_GENERIC_SELECTION = @as(c_int, 1);
pub const __fortified_attr_access = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:853:11
pub const __attr_access = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:854:11
pub const __attr_access_none = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:855:11
pub const __attr_dealloc = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:865:10
pub const __attr_dealloc_free = "";
pub const __attribute_returns_twice__ = @compileError("unable to translate macro: undefined identifier `__returns_twice__`");
// /usr/include/sys/cdefs.h:872:10
pub const __attribute_struct_may_alias__ = @compileError("unable to translate macro: undefined identifier `__may_alias__`");
// /usr/include/sys/cdefs.h:881:10
pub const __stub___compat_bdflush = "";
pub const __stub_chflags = "";
pub const __stub_fchflags = "";
pub const __stub_gtty = "";
pub const __stub_revoke = "";
pub const __stub_setlogin = "";
pub const __stub_sigreturn = "";
pub const __stub_stty = "";
pub const _BITS_TYPES_H = @as(c_int, 1);
pub const __S16_TYPE = c_short;
pub const __U16_TYPE = c_ushort;
pub const __S32_TYPE = c_int;
pub const __U32_TYPE = c_uint;
pub const __SLONGWORD_TYPE = c_long;
pub const __ULONGWORD_TYPE = c_ulong;
pub const __SQUAD_TYPE = c_long;
pub const __UQUAD_TYPE = c_ulong;
pub const __SWORD_TYPE = c_long;
pub const __UWORD_TYPE = c_ulong;
pub const __SLONG32_TYPE = c_int;
pub const __ULONG32_TYPE = c_uint;
pub const __S64_TYPE = c_long;
pub const __U64_TYPE = c_ulong;
pub const __STD_TYPE = @compileError("unable to translate C expr: unexpected token 'typedef'");
// /usr/include/bits/types.h:137:10
pub const _BITS_TYPESIZES_H = @as(c_int, 1);
pub const __SYSCALL_SLONG_TYPE = __SLONGWORD_TYPE;
pub const __SYSCALL_ULONG_TYPE = __ULONGWORD_TYPE;
pub const __DEV_T_TYPE = __UQUAD_TYPE;
pub const __UID_T_TYPE = __U32_TYPE;
pub const __GID_T_TYPE = __U32_TYPE;
pub const __INO_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __INO64_T_TYPE = __UQUAD_TYPE;
pub const __MODE_T_TYPE = __U32_TYPE;
pub const __NLINK_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSWORD_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF64_T_TYPE = __SQUAD_TYPE;
pub const __PID_T_TYPE = __S32_TYPE;
pub const __RLIM_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __RLIM64_T_TYPE = __UQUAD_TYPE;
pub const __BLKCNT_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __BLKCNT64_T_TYPE = __SQUAD_TYPE;
pub const __FSBLKCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSBLKCNT64_T_TYPE = __UQUAD_TYPE;
pub const __FSFILCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSFILCNT64_T_TYPE = __UQUAD_TYPE;
pub const __ID_T_TYPE = __U32_TYPE;
pub const __CLOCK_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __TIME_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __USECONDS_T_TYPE = __U32_TYPE;
pub const __SUSECONDS_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __SUSECONDS64_T_TYPE = __SQUAD_TYPE;
pub const __DADDR_T_TYPE = __S32_TYPE;
pub const __KEY_T_TYPE = __S32_TYPE;
pub const __CLOCKID_T_TYPE = __S32_TYPE;
pub const __TIMER_T_TYPE = ?*anyopaque;
pub const __BLKSIZE_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __FSID_T_TYPE = @compileError("unable to translate macro: undefined identifier `__val`");
// /usr/include/bits/typesizes.h:73:9
pub const __SSIZE_T_TYPE = __SWORD_TYPE;
pub const __CPU_MASK_TYPE = __SYSCALL_ULONG_TYPE;
pub const __OFF_T_MATCHES_OFF64_T = @as(c_int, 1);
pub const __INO_T_MATCHES_INO64_T = @as(c_int, 1);
pub const __RLIM_T_MATCHES_RLIM64_T = @as(c_int, 1);
pub const __STATFS_MATCHES_STATFS64 = @as(c_int, 1);
pub const __KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 = @as(c_int, 1);
pub const __FD_SETSIZE = @as(c_int, 1024);
pub const _BITS_TIME64_H = @as(c_int, 1);
pub const __TIME64_T_TYPE = __TIME_T_TYPE;
pub const __u_char_defined = "";
pub const __ino_t_defined = "";
pub const __dev_t_defined = "";
pub const __gid_t_defined = "";
pub const __mode_t_defined = "";
pub const __nlink_t_defined = "";
pub const __uid_t_defined = "";
pub const __off_t_defined = "";
pub const __pid_t_defined = "";
pub const __id_t_defined = "";
pub const __ssize_t_defined = "";
pub const __daddr_t_defined = "";
pub const __key_t_defined = "";
pub const __clock_t_defined = @as(c_int, 1);
pub const __clockid_t_defined = @as(c_int, 1);
pub const __time_t_defined = @as(c_int, 1);
pub const __timer_t_defined = @as(c_int, 1);
pub const __need_size_t = "";
pub const _SIZE_T = "";
pub const _BITS_STDINT_INTN_H = @as(c_int, 1);
pub const __BIT_TYPES_DEFINED__ = @as(c_int, 1);
pub const _ENDIAN_H = @as(c_int, 1);
pub const _BITS_ENDIAN_H = @as(c_int, 1);
pub const __LITTLE_ENDIAN = @as(c_int, 1234);
pub const __BIG_ENDIAN = @as(c_int, 4321);
pub const __PDP_ENDIAN = @as(c_int, 3412);
pub const _BITS_ENDIANNESS_H = @as(c_int, 1);
pub const __BYTE_ORDER = __LITTLE_ENDIAN;
pub const __FLOAT_WORD_ORDER = __BYTE_ORDER;
pub inline fn __LONG_LONG_PAIR(HI: anytype, LO: anytype) @TypeOf(HI) {
    _ = &HI;
    _ = &LO;
    return blk: {
        _ = &LO;
        break :blk HI;
    };
}
pub const LITTLE_ENDIAN = __LITTLE_ENDIAN;
pub const BIG_ENDIAN = __BIG_ENDIAN;
pub const PDP_ENDIAN = __PDP_ENDIAN;
pub const BYTE_ORDER = __BYTE_ORDER;
pub const _BITS_BYTESWAP_H = @as(c_int, 1);
pub inline fn __bswap_constant_16(x: anytype) __uint16_t {
    _ = &x;
    return @import("std").zig.c_translation.cast(__uint16_t, ((x >> @as(c_int, 8)) & @as(c_int, 0xff)) | ((x & @as(c_int, 0xff)) << @as(c_int, 8)));
}
pub inline fn __bswap_constant_32(x: anytype) @TypeOf(((((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hex)) >> @as(c_int, 24)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hex)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24))) {
    _ = &x;
    return ((((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hex)) >> @as(c_int, 24)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hex)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24));
}
pub inline fn __bswap_constant_64(x: anytype) @TypeOf(((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56))) {
    _ = &x;
    return ((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56));
}
pub const _BITS_UINTN_IDENTITY_H = @as(c_int, 1);
pub inline fn htobe16(x: anytype) @TypeOf(__bswap_16(x)) {
    _ = &x;
    return __bswap_16(x);
}
pub inline fn htole16(x: anytype) @TypeOf(__uint16_identity(x)) {
    _ = &x;
    return __uint16_identity(x);
}
pub inline fn be16toh(x: anytype) @TypeOf(__bswap_16(x)) {
    _ = &x;
    return __bswap_16(x);
}
pub inline fn le16toh(x: anytype) @TypeOf(__uint16_identity(x)) {
    _ = &x;
    return __uint16_identity(x);
}
pub inline fn htobe32(x: anytype) @TypeOf(__bswap_32(x)) {
    _ = &x;
    return __bswap_32(x);
}
pub inline fn htole32(x: anytype) @TypeOf(__uint32_identity(x)) {
    _ = &x;
    return __uint32_identity(x);
}
pub inline fn be32toh(x: anytype) @TypeOf(__bswap_32(x)) {
    _ = &x;
    return __bswap_32(x);
}
pub inline fn le32toh(x: anytype) @TypeOf(__uint32_identity(x)) {
    _ = &x;
    return __uint32_identity(x);
}
pub inline fn htobe64(x: anytype) @TypeOf(__bswap_64(x)) {
    _ = &x;
    return __bswap_64(x);
}
pub inline fn htole64(x: anytype) @TypeOf(__uint64_identity(x)) {
    _ = &x;
    return __uint64_identity(x);
}
pub inline fn be64toh(x: anytype) @TypeOf(__bswap_64(x)) {
    _ = &x;
    return __bswap_64(x);
}
pub inline fn le64toh(x: anytype) @TypeOf(__uint64_identity(x)) {
    _ = &x;
    return __uint64_identity(x);
}
pub const _SYS_SELECT_H = @as(c_int, 1);
pub const __FD_ZERO = @compileError("unable to translate macro: undefined identifier `__i`");
// /usr/include/bits/select.h:25:9
pub const __FD_SET = @compileError("unable to translate C expr: expected ')' instead got '|='");
// /usr/include/bits/select.h:32:9
pub const __FD_CLR = @compileError("unable to translate C expr: expected ')' instead got '&='");
// /usr/include/bits/select.h:34:9
pub inline fn __FD_ISSET(d: anytype, s: anytype) @TypeOf((__FDS_BITS(s)[@as(usize, @intCast(__FD_ELT(d)))] & __FD_MASK(d)) != @as(c_int, 0)) {
    _ = &d;
    _ = &s;
    return (__FDS_BITS(s)[@as(usize, @intCast(__FD_ELT(d)))] & __FD_MASK(d)) != @as(c_int, 0);
}
pub const __sigset_t_defined = @as(c_int, 1);
pub const ____sigset_t_defined = "";
pub const _SIGSET_NWORDS = @import("std").zig.c_translation.MacroArithmetic.div(@as(c_int, 1024), @as(c_int, 8) * @import("std").zig.c_translation.sizeof(c_ulong));
pub const __timeval_defined = @as(c_int, 1);
pub const _STRUCT_TIMESPEC = @as(c_int, 1);
pub const __suseconds_t_defined = "";
pub const __NFDBITS = @as(c_int, 8) * @import("std").zig.c_translation.cast(c_int, @import("std").zig.c_translation.sizeof(__fd_mask));
pub inline fn __FD_ELT(d: anytype) @TypeOf(@import("std").zig.c_translation.MacroArithmetic.div(d, __NFDBITS)) {
    _ = &d;
    return @import("std").zig.c_translation.MacroArithmetic.div(d, __NFDBITS);
}
pub inline fn __FD_MASK(d: anytype) __fd_mask {
    _ = &d;
    return @import("std").zig.c_translation.cast(__fd_mask, @as(c_ulong, 1) << @import("std").zig.c_translation.MacroArithmetic.rem(d, __NFDBITS));
}
pub inline fn __FDS_BITS(set: anytype) @TypeOf(set.*.__fds_bits) {
    _ = &set;
    return set.*.__fds_bits;
}
pub const FD_SETSIZE = __FD_SETSIZE;
pub const NFDBITS = __NFDBITS;
pub inline fn FD_SET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_SET(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_SET(fd, fdsetp);
}
pub inline fn FD_CLR(fd: anytype, fdsetp: anytype) @TypeOf(__FD_CLR(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_CLR(fd, fdsetp);
}
pub inline fn FD_ISSET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_ISSET(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_ISSET(fd, fdsetp);
}
pub inline fn FD_ZERO(fdsetp: anytype) @TypeOf(__FD_ZERO(fdsetp)) {
    _ = &fdsetp;
    return __FD_ZERO(fdsetp);
}
pub const __blksize_t_defined = "";
pub const __blkcnt_t_defined = "";
pub const __fsblkcnt_t_defined = "";
pub const __fsfilcnt_t_defined = "";
pub const _BITS_PTHREADTYPES_COMMON_H = @as(c_int, 1);
pub const _THREAD_SHARED_TYPES_H = @as(c_int, 1);
pub const _BITS_PTHREADTYPES_ARCH_H = @as(c_int, 1);
pub const __SIZEOF_PTHREAD_MUTEX_T = @as(c_int, 40);
pub const __SIZEOF_PTHREAD_ATTR_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_RWLOCK_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_BARRIER_T = @as(c_int, 32);
pub const __SIZEOF_PTHREAD_MUTEXATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_COND_T = @as(c_int, 48);
pub const __SIZEOF_PTHREAD_CONDATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_RWLOCKATTR_T = @as(c_int, 8);
pub const __SIZEOF_PTHREAD_BARRIERATTR_T = @as(c_int, 4);
pub const __LOCK_ALIGNMENT = "";
pub const __ONCE_ALIGNMENT = "";
pub const _BITS_ATOMIC_WIDE_COUNTER_H = "";
pub const _THREAD_MUTEX_INTERNAL_H = @as(c_int, 1);
pub const __PTHREAD_MUTEX_HAVE_PREV = @as(c_int, 1);
pub const __PTHREAD_MUTEX_INITIALIZER = @compileError("unable to translate macro: undefined identifier `NULL`");
// /usr/include/bits/struct_mutex.h:56:10
pub const _RWLOCK_INTERNAL_H = "";
pub const __PTHREAD_RWLOCK_ELISION_EXTRA = @compileError("unable to translate C expr: unexpected token '{'");
// /usr/include/bits/struct_rwlock.h:40:11
pub inline fn __PTHREAD_RWLOCK_INITIALIZER(__flags: anytype) @TypeOf(__flags) {
    _ = &__flags;
    return blk: {
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = &__PTHREAD_RWLOCK_ELISION_EXTRA;
        _ = @as(c_int, 0);
        break :blk __flags;
    };
}
pub const __ONCE_FLAG_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /usr/include/bits/thread-shared-types.h:114:9
pub const __have_pthread_attr_t = @as(c_int, 1);
pub const __CLANG_STDINT_H = "";
pub const _STDINT_H = @as(c_int, 1);
pub const __GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION = "";
pub const __GLIBC_USE_LIB_EXT2 = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT_C23 = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT_C23 = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_TYPES_EXT = @as(c_int, 0);
pub const _BITS_WCHAR_H = @as(c_int, 1);
pub const __WCHAR_MAX = __WCHAR_MAX__;
pub const __WCHAR_MIN = -__WCHAR_MAX - @as(c_int, 1);
pub const _BITS_STDINT_UINTN_H = @as(c_int, 1);
pub const _BITS_STDINT_LEAST_H = @as(c_int, 1);
pub const __intptr_t_defined = "";
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_LEAST8_MIN = -@as(c_int, 128);
pub const INT_LEAST16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT_LEAST32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT_LEAST64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_LEAST8_MAX = @as(c_int, 127);
pub const INT_LEAST16_MAX = @as(c_int, 32767);
pub const INT_LEAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT_LEAST64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_LEAST8_MAX = @as(c_int, 255);
pub const UINT_LEAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_LEAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_LEAST64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_FAST8_MIN = -@as(c_int, 128);
pub const INT_FAST16_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INT_FAST32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INT_FAST64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_FAST8_MAX = @as(c_int, 127);
pub const INT_FAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INT_FAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INT_FAST64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_FAST8_MAX = @as(c_int, 255);
pub const UINT_FAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INTPTR_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const UINTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const INTMAX_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INTMAX_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINTMAX_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const PTRDIFF_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const PTRDIFF_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const SIG_ATOMIC_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const SIG_ATOMIC_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const SIZE_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const WCHAR_MIN = __WCHAR_MIN;
pub const WCHAR_MAX = __WCHAR_MAX;
pub const WINT_MIN = @as(c_uint, 0);
pub const WINT_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub inline fn INT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn INT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn INT32_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const INT64_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub inline fn UINT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn UINT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const UINT64_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const INTMAX_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const UINTMAX_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const _DRM_H_ = "";
pub const _LINUX_TYPES_H = "";
pub const _ASM_GENERIC_TYPES_H = "";
pub const _ASM_GENERIC_INT_LL64_H = "";
pub const __ASM_X86_BITSPERLONG_H = "";
pub const __BITS_PER_LONG = @as(c_int, 64);
pub const __ASM_GENERIC_BITS_PER_LONG = "";
pub const __BITS_PER_LONG_LONG = @as(c_int, 64);
pub const _LINUX_POSIX_TYPES_H = "";
pub const _LINUX_STDDEF_H = "";
pub inline fn __struct_group_tag(TAG: anytype) @TypeOf(TAG) {
    _ = &TAG;
    return TAG;
}
pub const __struct_group = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /usr/include/linux/stddef.h:32:9
pub const __DECLARE_FLEX_ARRAY = @compileError("unable to translate macro: undefined identifier `__empty_`");
// /usr/include/linux/stddef.h:53:9
pub const __counted_by = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/linux/stddef.h:61:9
pub const __counted_by_le = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/linux/stddef.h:65:9
pub const __counted_by_be = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/linux/stddef.h:69:9
pub const __kernel_nonstring = "";
pub const _ASM_X86_POSIX_TYPES_64_H = "";
pub const __ASM_GENERIC_POSIX_TYPES_H = "";
pub const __bitwise = "";
pub const __bitwise__ = "";
pub const __aligned_u64 = @compileError("unable to translate macro: undefined identifier `aligned`");
// /usr/include/linux/types.h:50:9
pub const __aligned_s64 = @compileError("unable to translate macro: undefined identifier `aligned`");
// /usr/include/linux/types.h:51:9
pub const __aligned_be64 = @compileError("unable to translate macro: undefined identifier `aligned`");
// /usr/include/linux/types.h:52:9
pub const __aligned_le64 = @compileError("unable to translate macro: undefined identifier `aligned`");
// /usr/include/linux/types.h:53:9
pub const _ASM_GENERIC_IOCTL_H = "";
pub const _IOC_NRBITS = @as(c_int, 8);
pub const _IOC_TYPEBITS = @as(c_int, 8);
pub const _IOC_SIZEBITS = @as(c_int, 14);
pub const _IOC_DIRBITS = @as(c_int, 2);
pub const _IOC_NRMASK = (@as(c_int, 1) << _IOC_NRBITS) - @as(c_int, 1);
pub const _IOC_TYPEMASK = (@as(c_int, 1) << _IOC_TYPEBITS) - @as(c_int, 1);
pub const _IOC_SIZEMASK = (@as(c_int, 1) << _IOC_SIZEBITS) - @as(c_int, 1);
pub const _IOC_DIRMASK = (@as(c_int, 1) << _IOC_DIRBITS) - @as(c_int, 1);
pub const _IOC_NRSHIFT = @as(c_int, 0);
pub const _IOC_TYPESHIFT = _IOC_NRSHIFT + _IOC_NRBITS;
pub const _IOC_SIZESHIFT = _IOC_TYPESHIFT + _IOC_TYPEBITS;
pub const _IOC_DIRSHIFT = _IOC_SIZESHIFT + _IOC_SIZEBITS;
pub const _IOC_NONE = @as(c_uint, 0);
pub const _IOC_WRITE = @as(c_uint, 1);
pub const _IOC_READ = @as(c_uint, 2);
pub inline fn _IOC(dir: anytype, @"type": anytype, nr: anytype, size: anytype) @TypeOf((((dir << _IOC_DIRSHIFT) | (@"type" << _IOC_TYPESHIFT)) | (nr << _IOC_NRSHIFT)) | (size << _IOC_SIZESHIFT)) {
    _ = &dir;
    _ = &@"type";
    _ = &nr;
    _ = &size;
    return (((dir << _IOC_DIRSHIFT) | (@"type" << _IOC_TYPESHIFT)) | (nr << _IOC_NRSHIFT)) | (size << _IOC_SIZESHIFT);
}
pub inline fn _IOC_TYPECHECK(t: anytype) @TypeOf(@import("std").zig.c_translation.sizeof(t)) {
    _ = &t;
    return @import("std").zig.c_translation.sizeof(t);
}
pub inline fn _IO(@"type": anytype, nr: anytype) @TypeOf(_IOC(_IOC_NONE, @"type", nr, @as(c_int, 0))) {
    _ = &@"type";
    _ = &nr;
    return _IOC(_IOC_NONE, @"type", nr, @as(c_int, 0));
}
pub inline fn _IOR(@"type": anytype, nr: anytype, argtype: anytype) @TypeOf(_IOC(_IOC_READ, @"type", nr, _IOC_TYPECHECK(argtype))) {
    _ = &@"type";
    _ = &nr;
    _ = &argtype;
    return _IOC(_IOC_READ, @"type", nr, _IOC_TYPECHECK(argtype));
}
pub inline fn _IOW(@"type": anytype, nr: anytype, argtype: anytype) @TypeOf(_IOC(_IOC_WRITE, @"type", nr, _IOC_TYPECHECK(argtype))) {
    _ = &@"type";
    _ = &nr;
    _ = &argtype;
    return _IOC(_IOC_WRITE, @"type", nr, _IOC_TYPECHECK(argtype));
}
pub inline fn _IOWR(@"type": anytype, nr: anytype, argtype: anytype) @TypeOf(_IOC(_IOC_READ | _IOC_WRITE, @"type", nr, _IOC_TYPECHECK(argtype))) {
    _ = &@"type";
    _ = &nr;
    _ = &argtype;
    return _IOC(_IOC_READ | _IOC_WRITE, @"type", nr, _IOC_TYPECHECK(argtype));
}
pub inline fn _IOR_BAD(@"type": anytype, nr: anytype, argtype: anytype) @TypeOf(_IOC(_IOC_READ, @"type", nr, @import("std").zig.c_translation.sizeof(argtype))) {
    _ = &@"type";
    _ = &nr;
    _ = &argtype;
    return _IOC(_IOC_READ, @"type", nr, @import("std").zig.c_translation.sizeof(argtype));
}
pub inline fn _IOW_BAD(@"type": anytype, nr: anytype, argtype: anytype) @TypeOf(_IOC(_IOC_WRITE, @"type", nr, @import("std").zig.c_translation.sizeof(argtype))) {
    _ = &@"type";
    _ = &nr;
    _ = &argtype;
    return _IOC(_IOC_WRITE, @"type", nr, @import("std").zig.c_translation.sizeof(argtype));
}
pub inline fn _IOWR_BAD(@"type": anytype, nr: anytype, argtype: anytype) @TypeOf(_IOC(_IOC_READ | _IOC_WRITE, @"type", nr, @import("std").zig.c_translation.sizeof(argtype))) {
    _ = &@"type";
    _ = &nr;
    _ = &argtype;
    return _IOC(_IOC_READ | _IOC_WRITE, @"type", nr, @import("std").zig.c_translation.sizeof(argtype));
}
pub inline fn _IOC_DIR(nr: anytype) @TypeOf((nr >> _IOC_DIRSHIFT) & _IOC_DIRMASK) {
    _ = &nr;
    return (nr >> _IOC_DIRSHIFT) & _IOC_DIRMASK;
}
pub inline fn _IOC_TYPE(nr: anytype) @TypeOf((nr >> _IOC_TYPESHIFT) & _IOC_TYPEMASK) {
    _ = &nr;
    return (nr >> _IOC_TYPESHIFT) & _IOC_TYPEMASK;
}
pub inline fn _IOC_NR(nr: anytype) @TypeOf((nr >> _IOC_NRSHIFT) & _IOC_NRMASK) {
    _ = &nr;
    return (nr >> _IOC_NRSHIFT) & _IOC_NRMASK;
}
pub inline fn _IOC_SIZE(nr: anytype) @TypeOf((nr >> _IOC_SIZESHIFT) & _IOC_SIZEMASK) {
    _ = &nr;
    return (nr >> _IOC_SIZESHIFT) & _IOC_SIZEMASK;
}
pub const IOC_IN = _IOC_WRITE << _IOC_DIRSHIFT;
pub const IOC_OUT = _IOC_READ << _IOC_DIRSHIFT;
pub const IOC_INOUT = (_IOC_WRITE | _IOC_READ) << _IOC_DIRSHIFT;
pub const IOCSIZE_MASK = _IOC_SIZEMASK << _IOC_SIZESHIFT;
pub const IOCSIZE_SHIFT = _IOC_SIZESHIFT;
pub const DRM_NAME = "drm";
pub const DRM_MIN_ORDER = @as(c_int, 5);
pub const DRM_MAX_ORDER = @as(c_int, 22);
pub const DRM_RAM_PERCENT = @as(c_int, 10);
pub const _DRM_LOCK_HELD = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x80000000, .hex);
pub const _DRM_LOCK_CONT = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x40000000, .hex);
pub inline fn _DRM_LOCK_IS_HELD(lock: anytype) @TypeOf(lock & _DRM_LOCK_HELD) {
    _ = &lock;
    return lock & _DRM_LOCK_HELD;
}
pub inline fn _DRM_LOCK_IS_CONT(lock: anytype) @TypeOf(lock & _DRM_LOCK_CONT) {
    _ = &lock;
    return lock & _DRM_LOCK_CONT;
}
pub inline fn _DRM_LOCKING_CONTEXT(lock: anytype) @TypeOf(lock & ~(_DRM_LOCK_HELD | _DRM_LOCK_CONT)) {
    _ = &lock;
    return lock & ~(_DRM_LOCK_HELD | _DRM_LOCK_CONT);
}
pub const _DRM_VBLANK_HIGH_CRTC_SHIFT = @as(c_int, 1);
pub const _DRM_VBLANK_TYPES_MASK = _DRM_VBLANK_ABSOLUTE | _DRM_VBLANK_RELATIVE;
pub const _DRM_VBLANK_FLAGS_MASK = ((_DRM_VBLANK_EVENT | _DRM_VBLANK_SIGNAL) | _DRM_VBLANK_SECONDARY) | _DRM_VBLANK_NEXTONMISS;
pub const _DRM_PRE_MODESET = @as(c_int, 1);
pub const _DRM_POST_MODESET = @as(c_int, 2);
pub const DRM_CAP_DUMB_BUFFER = @as(c_int, 0x1);
pub const DRM_CAP_VBLANK_HIGH_CRTC = @as(c_int, 0x2);
pub const DRM_CAP_DUMB_PREFERRED_DEPTH = @as(c_int, 0x3);
pub const DRM_CAP_DUMB_PREFER_SHADOW = @as(c_int, 0x4);
pub const DRM_CAP_PRIME = @as(c_int, 0x5);
pub const DRM_PRIME_CAP_IMPORT = @as(c_int, 0x1);
pub const DRM_PRIME_CAP_EXPORT = @as(c_int, 0x2);
pub const DRM_CAP_TIMESTAMP_MONOTONIC = @as(c_int, 0x6);
pub const DRM_CAP_ASYNC_PAGE_FLIP = @as(c_int, 0x7);
pub const DRM_CAP_CURSOR_WIDTH = @as(c_int, 0x8);
pub const DRM_CAP_CURSOR_HEIGHT = @as(c_int, 0x9);
pub const DRM_CAP_ADDFB2_MODIFIERS = @as(c_int, 0x10);
pub const DRM_CAP_PAGE_FLIP_TARGET = @as(c_int, 0x11);
pub const DRM_CAP_CRTC_IN_VBLANK_EVENT = @as(c_int, 0x12);
pub const DRM_CAP_SYNCOBJ = @as(c_int, 0x13);
pub const DRM_CAP_SYNCOBJ_TIMELINE = @as(c_int, 0x14);
pub const DRM_CAP_ATOMIC_ASYNC_PAGE_FLIP = @as(c_int, 0x15);
pub const DRM_CLIENT_CAP_STEREO_3D = @as(c_int, 1);
pub const DRM_CLIENT_CAP_UNIVERSAL_PLANES = @as(c_int, 2);
pub const DRM_CLIENT_CAP_ATOMIC = @as(c_int, 3);
pub const DRM_CLIENT_CAP_ASPECT_RATIO = @as(c_int, 4);
pub const DRM_CLIENT_CAP_WRITEBACK_CONNECTORS = @as(c_int, 5);
pub const DRM_CLIENT_CAP_CURSOR_PLANE_HOTSPOT = @as(c_int, 6);
pub const DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE = @as(c_int, 7);
pub const DRM_RDWR = @compileError("unable to translate macro: undefined identifier `O_RDWR`");
// /usr/include/libdrm/drm.h:924:9
pub const DRM_CLOEXEC = @compileError("unable to translate macro: undefined identifier `O_CLOEXEC`");
// /usr/include/libdrm/drm.h:925:9
pub const DRM_SYNCOBJ_CREATE_SIGNALED = @as(c_int, 1) << @as(c_int, 0);
pub const DRM_SYNCOBJ_FD_TO_HANDLE_FLAGS_IMPORT_SYNC_FILE = @as(c_int, 1) << @as(c_int, 0);
pub const DRM_SYNCOBJ_FD_TO_HANDLE_FLAGS_TIMELINE = @as(c_int, 1) << @as(c_int, 1);
pub const DRM_SYNCOBJ_HANDLE_TO_FD_FLAGS_EXPORT_SYNC_FILE = @as(c_int, 1) << @as(c_int, 0);
pub const DRM_SYNCOBJ_HANDLE_TO_FD_FLAGS_TIMELINE = @as(c_int, 1) << @as(c_int, 1);
pub const DRM_SYNCOBJ_WAIT_FLAGS_WAIT_ALL = @as(c_int, 1) << @as(c_int, 0);
pub const DRM_SYNCOBJ_WAIT_FLAGS_WAIT_FOR_SUBMIT = @as(c_int, 1) << @as(c_int, 1);
pub const DRM_SYNCOBJ_WAIT_FLAGS_WAIT_AVAILABLE = @as(c_int, 1) << @as(c_int, 2);
pub const DRM_SYNCOBJ_WAIT_FLAGS_WAIT_DEADLINE = @as(c_int, 1) << @as(c_int, 3);
pub const DRM_SYNCOBJ_QUERY_FLAGS_LAST_SUBMITTED = @as(c_int, 1) << @as(c_int, 0);
pub const DRM_CRTC_SEQUENCE_RELATIVE = @as(c_int, 0x00000001);
pub const DRM_CRTC_SEQUENCE_NEXT_ON_MISS = @as(c_int, 0x00000002);
pub const DRM_CLIENT_NAME_MAX_LEN = @as(c_int, 64);
pub const _DRM_MODE_H = "";
pub const DRM_CONNECTOR_NAME_LEN = @as(c_int, 32);
pub const DRM_DISPLAY_MODE_LEN = @as(c_int, 32);
pub const DRM_PROP_NAME_LEN = @as(c_int, 32);
pub const DRM_MODE_TYPE_BUILTIN = @as(c_int, 1) << @as(c_int, 0);
pub const DRM_MODE_TYPE_CLOCK_C = (@as(c_int, 1) << @as(c_int, 1)) | DRM_MODE_TYPE_BUILTIN;
pub const DRM_MODE_TYPE_CRTC_C = (@as(c_int, 1) << @as(c_int, 2)) | DRM_MODE_TYPE_BUILTIN;
pub const DRM_MODE_TYPE_PREFERRED = @as(c_int, 1) << @as(c_int, 3);
pub const DRM_MODE_TYPE_DEFAULT = @as(c_int, 1) << @as(c_int, 4);
pub const DRM_MODE_TYPE_USERDEF = @as(c_int, 1) << @as(c_int, 5);
pub const DRM_MODE_TYPE_DRIVER = @as(c_int, 1) << @as(c_int, 6);
pub const DRM_MODE_TYPE_ALL = (DRM_MODE_TYPE_PREFERRED | DRM_MODE_TYPE_USERDEF) | DRM_MODE_TYPE_DRIVER;
pub const DRM_MODE_FLAG_PHSYNC = @as(c_int, 1) << @as(c_int, 0);
pub const DRM_MODE_FLAG_NHSYNC = @as(c_int, 1) << @as(c_int, 1);
pub const DRM_MODE_FLAG_PVSYNC = @as(c_int, 1) << @as(c_int, 2);
pub const DRM_MODE_FLAG_NVSYNC = @as(c_int, 1) << @as(c_int, 3);
pub const DRM_MODE_FLAG_INTERLACE = @as(c_int, 1) << @as(c_int, 4);
pub const DRM_MODE_FLAG_DBLSCAN = @as(c_int, 1) << @as(c_int, 5);
pub const DRM_MODE_FLAG_CSYNC = @as(c_int, 1) << @as(c_int, 6);
pub const DRM_MODE_FLAG_PCSYNC = @as(c_int, 1) << @as(c_int, 7);
pub const DRM_MODE_FLAG_NCSYNC = @as(c_int, 1) << @as(c_int, 8);
pub const DRM_MODE_FLAG_HSKEW = @as(c_int, 1) << @as(c_int, 9);
pub const DRM_MODE_FLAG_BCAST = @as(c_int, 1) << @as(c_int, 10);
pub const DRM_MODE_FLAG_PIXMUX = @as(c_int, 1) << @as(c_int, 11);
pub const DRM_MODE_FLAG_DBLCLK = @as(c_int, 1) << @as(c_int, 12);
pub const DRM_MODE_FLAG_CLKDIV2 = @as(c_int, 1) << @as(c_int, 13);
pub const DRM_MODE_FLAG_3D_MASK = @as(c_int, 0x1f) << @as(c_int, 14);
pub const DRM_MODE_FLAG_3D_NONE = @as(c_int, 0) << @as(c_int, 14);
pub const DRM_MODE_FLAG_3D_FRAME_PACKING = @as(c_int, 1) << @as(c_int, 14);
pub const DRM_MODE_FLAG_3D_FIELD_ALTERNATIVE = @as(c_int, 2) << @as(c_int, 14);
pub const DRM_MODE_FLAG_3D_LINE_ALTERNATIVE = @as(c_int, 3) << @as(c_int, 14);
pub const DRM_MODE_FLAG_3D_SIDE_BY_SIDE_FULL = @as(c_int, 4) << @as(c_int, 14);
pub const DRM_MODE_FLAG_3D_L_DEPTH = @as(c_int, 5) << @as(c_int, 14);
pub const DRM_MODE_FLAG_3D_L_DEPTH_GFX_GFX_DEPTH = @as(c_int, 6) << @as(c_int, 14);
pub const DRM_MODE_FLAG_3D_TOP_AND_BOTTOM = @as(c_int, 7) << @as(c_int, 14);
pub const DRM_MODE_FLAG_3D_SIDE_BY_SIDE_HALF = @as(c_int, 8) << @as(c_int, 14);
pub const DRM_MODE_PICTURE_ASPECT_NONE = @as(c_int, 0);
pub const DRM_MODE_PICTURE_ASPECT_4_3 = @as(c_int, 1);
pub const DRM_MODE_PICTURE_ASPECT_16_9 = @as(c_int, 2);
pub const DRM_MODE_PICTURE_ASPECT_64_27 = @as(c_int, 3);
pub const DRM_MODE_PICTURE_ASPECT_256_135 = @as(c_int, 4);
pub const DRM_MODE_CONTENT_TYPE_NO_DATA = @as(c_int, 0);
pub const DRM_MODE_CONTENT_TYPE_GRAPHICS = @as(c_int, 1);
pub const DRM_MODE_CONTENT_TYPE_PHOTO = @as(c_int, 2);
pub const DRM_MODE_CONTENT_TYPE_CINEMA = @as(c_int, 3);
pub const DRM_MODE_CONTENT_TYPE_GAME = @as(c_int, 4);
pub const DRM_MODE_FLAG_PIC_AR_MASK = @as(c_int, 0x0F) << @as(c_int, 19);
pub const DRM_MODE_FLAG_PIC_AR_NONE = DRM_MODE_PICTURE_ASPECT_NONE << @as(c_int, 19);
pub const DRM_MODE_FLAG_PIC_AR_4_3 = DRM_MODE_PICTURE_ASPECT_4_3 << @as(c_int, 19);
pub const DRM_MODE_FLAG_PIC_AR_16_9 = DRM_MODE_PICTURE_ASPECT_16_9 << @as(c_int, 19);
pub const DRM_MODE_FLAG_PIC_AR_64_27 = DRM_MODE_PICTURE_ASPECT_64_27 << @as(c_int, 19);
pub const DRM_MODE_FLAG_PIC_AR_256_135 = DRM_MODE_PICTURE_ASPECT_256_135 << @as(c_int, 19);
pub const DRM_MODE_FLAG_ALL = (((((((((((DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NHSYNC) | DRM_MODE_FLAG_PVSYNC) | DRM_MODE_FLAG_NVSYNC) | DRM_MODE_FLAG_INTERLACE) | DRM_MODE_FLAG_DBLSCAN) | DRM_MODE_FLAG_CSYNC) | DRM_MODE_FLAG_PCSYNC) | DRM_MODE_FLAG_NCSYNC) | DRM_MODE_FLAG_HSKEW) | DRM_MODE_FLAG_DBLCLK) | DRM_MODE_FLAG_CLKDIV2) | DRM_MODE_FLAG_3D_MASK;
pub const DRM_MODE_DPMS_ON = @as(c_int, 0);
pub const DRM_MODE_DPMS_STANDBY = @as(c_int, 1);
pub const DRM_MODE_DPMS_SUSPEND = @as(c_int, 2);
pub const DRM_MODE_DPMS_OFF = @as(c_int, 3);
pub const DRM_MODE_SCALE_NONE = @as(c_int, 0);
pub const DRM_MODE_SCALE_FULLSCREEN = @as(c_int, 1);
pub const DRM_MODE_SCALE_CENTER = @as(c_int, 2);
pub const DRM_MODE_SCALE_ASPECT = @as(c_int, 3);
pub const DRM_MODE_DITHERING_OFF = @as(c_int, 0);
pub const DRM_MODE_DITHERING_ON = @as(c_int, 1);
pub const DRM_MODE_DITHERING_AUTO = @as(c_int, 2);
pub const DRM_MODE_DIRTY_OFF = @as(c_int, 0);
pub const DRM_MODE_DIRTY_ON = @as(c_int, 1);
pub const DRM_MODE_DIRTY_ANNOTATE = @as(c_int, 2);
pub const DRM_MODE_LINK_STATUS_GOOD = @as(c_int, 0);
pub const DRM_MODE_LINK_STATUS_BAD = @as(c_int, 1);
pub const DRM_MODE_ROTATE_0 = @as(c_int, 1) << @as(c_int, 0);
pub const DRM_MODE_ROTATE_90 = @as(c_int, 1) << @as(c_int, 1);
pub const DRM_MODE_ROTATE_180 = @as(c_int, 1) << @as(c_int, 2);
pub const DRM_MODE_ROTATE_270 = @as(c_int, 1) << @as(c_int, 3);
pub const DRM_MODE_ROTATE_MASK = ((DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_90) | DRM_MODE_ROTATE_180) | DRM_MODE_ROTATE_270;
pub const DRM_MODE_REFLECT_X = @as(c_int, 1) << @as(c_int, 4);
pub const DRM_MODE_REFLECT_Y = @as(c_int, 1) << @as(c_int, 5);
pub const DRM_MODE_REFLECT_MASK = DRM_MODE_REFLECT_X | DRM_MODE_REFLECT_Y;
pub const DRM_MODE_CONTENT_PROTECTION_UNDESIRED = @as(c_int, 0);
pub const DRM_MODE_CONTENT_PROTECTION_DESIRED = @as(c_int, 1);
pub const DRM_MODE_CONTENT_PROTECTION_ENABLED = @as(c_int, 2);
pub const DRM_MODE_PRESENT_TOP_FIELD = @as(c_int, 1) << @as(c_int, 0);
pub const DRM_MODE_PRESENT_BOTTOM_FIELD = @as(c_int, 1) << @as(c_int, 1);
pub const DRM_MODE_ENCODER_NONE = @as(c_int, 0);
pub const DRM_MODE_ENCODER_DAC = @as(c_int, 1);
pub const DRM_MODE_ENCODER_TMDS = @as(c_int, 2);
pub const DRM_MODE_ENCODER_LVDS = @as(c_int, 3);
pub const DRM_MODE_ENCODER_TVDAC = @as(c_int, 4);
pub const DRM_MODE_ENCODER_VIRTUAL = @as(c_int, 5);
pub const DRM_MODE_ENCODER_DSI = @as(c_int, 6);
pub const DRM_MODE_ENCODER_DPMST = @as(c_int, 7);
pub const DRM_MODE_ENCODER_DPI = @as(c_int, 8);
pub const DRM_MODE_CONNECTOR_Unknown = @as(c_int, 0);
pub const DRM_MODE_CONNECTOR_VGA = @as(c_int, 1);
pub const DRM_MODE_CONNECTOR_DVII = @as(c_int, 2);
pub const DRM_MODE_CONNECTOR_DVID = @as(c_int, 3);
pub const DRM_MODE_CONNECTOR_DVIA = @as(c_int, 4);
pub const DRM_MODE_CONNECTOR_Composite = @as(c_int, 5);
pub const DRM_MODE_CONNECTOR_SVIDEO = @as(c_int, 6);
pub const DRM_MODE_CONNECTOR_LVDS = @as(c_int, 7);
pub const DRM_MODE_CONNECTOR_Component = @as(c_int, 8);
pub const DRM_MODE_CONNECTOR_9PinDIN = @as(c_int, 9);
pub const DRM_MODE_CONNECTOR_DisplayPort = @as(c_int, 10);
pub const DRM_MODE_CONNECTOR_HDMIA = @as(c_int, 11);
pub const DRM_MODE_CONNECTOR_HDMIB = @as(c_int, 12);
pub const DRM_MODE_CONNECTOR_TV = @as(c_int, 13);
pub const DRM_MODE_CONNECTOR_eDP = @as(c_int, 14);
pub const DRM_MODE_CONNECTOR_VIRTUAL = @as(c_int, 15);
pub const DRM_MODE_CONNECTOR_DSI = @as(c_int, 16);
pub const DRM_MODE_CONNECTOR_DPI = @as(c_int, 17);
pub const DRM_MODE_CONNECTOR_WRITEBACK = @as(c_int, 18);
pub const DRM_MODE_CONNECTOR_SPI = @as(c_int, 19);
pub const DRM_MODE_CONNECTOR_USB = @as(c_int, 20);
pub const DRM_MODE_PROP_PENDING = @as(c_int, 1) << @as(c_int, 0);
pub const DRM_MODE_PROP_RANGE = @as(c_int, 1) << @as(c_int, 1);
pub const DRM_MODE_PROP_IMMUTABLE = @as(c_int, 1) << @as(c_int, 2);
pub const DRM_MODE_PROP_ENUM = @as(c_int, 1) << @as(c_int, 3);
pub const DRM_MODE_PROP_BLOB = @as(c_int, 1) << @as(c_int, 4);
pub const DRM_MODE_PROP_BITMASK = @as(c_int, 1) << @as(c_int, 5);
pub const DRM_MODE_PROP_LEGACY_TYPE = ((DRM_MODE_PROP_RANGE | DRM_MODE_PROP_ENUM) | DRM_MODE_PROP_BLOB) | DRM_MODE_PROP_BITMASK;
pub const DRM_MODE_PROP_EXTENDED_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000ffc0, .hex);
pub inline fn DRM_MODE_PROP_TYPE(n: anytype) @TypeOf(n << @as(c_int, 6)) {
    _ = &n;
    return n << @as(c_int, 6);
}
pub const DRM_MODE_PROP_OBJECT = DRM_MODE_PROP_TYPE(@as(c_int, 1));
pub const DRM_MODE_PROP_SIGNED_RANGE = DRM_MODE_PROP_TYPE(@as(c_int, 2));
pub const DRM_MODE_PROP_ATOMIC = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hex);
pub const DRM_MODE_OBJECT_CRTC = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xcccccccc, .hex);
pub const DRM_MODE_OBJECT_CONNECTOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xc0c0c0c0, .hex);
pub const DRM_MODE_OBJECT_ENCODER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xe0e0e0e0, .hex);
pub const DRM_MODE_OBJECT_MODE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xdededede, .hex);
pub const DRM_MODE_OBJECT_PROPERTY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xb0b0b0b0, .hex);
pub const DRM_MODE_OBJECT_FB = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfbfbfbfb, .hex);
pub const DRM_MODE_OBJECT_BLOB = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xbbbbbbbb, .hex);
pub const DRM_MODE_OBJECT_PLANE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xeeeeeeee, .hex);
pub const DRM_MODE_OBJECT_COLOROP = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfafafafa, .hex);
pub const DRM_MODE_OBJECT_ANY = @as(c_int, 0);
pub const DRM_MODE_FB_INTERLACED = @as(c_int, 1) << @as(c_int, 0);
pub const DRM_MODE_FB_MODIFIERS = @as(c_int, 1) << @as(c_int, 1);
pub const DRM_MODE_FB_DIRTY_ANNOTATE_COPY = @as(c_int, 0x01);
pub const DRM_MODE_FB_DIRTY_ANNOTATE_FILL = @as(c_int, 0x02);
pub const DRM_MODE_FB_DIRTY_FLAGS = @as(c_int, 0x03);
pub const DRM_MODE_FB_DIRTY_MAX_CLIPS = @as(c_int, 256);
pub const DRM_MODE_CURSOR_BO = @as(c_int, 0x01);
pub const DRM_MODE_CURSOR_MOVE = @as(c_int, 0x02);
pub const DRM_MODE_CURSOR_FLAGS = @as(c_int, 0x03);
pub const DRM_MODE_PAGE_FLIP_EVENT = @as(c_int, 0x01);
pub const DRM_MODE_PAGE_FLIP_ASYNC = @as(c_int, 0x02);
pub const DRM_MODE_PAGE_FLIP_TARGET_ABSOLUTE = @as(c_int, 0x4);
pub const DRM_MODE_PAGE_FLIP_TARGET_RELATIVE = @as(c_int, 0x8);
pub const DRM_MODE_PAGE_FLIP_TARGET = DRM_MODE_PAGE_FLIP_TARGET_ABSOLUTE | DRM_MODE_PAGE_FLIP_TARGET_RELATIVE;
pub const DRM_MODE_PAGE_FLIP_FLAGS = (DRM_MODE_PAGE_FLIP_EVENT | DRM_MODE_PAGE_FLIP_ASYNC) | DRM_MODE_PAGE_FLIP_TARGET;
pub const DRM_MODE_ATOMIC_TEST_ONLY = @as(c_int, 0x0100);
pub const DRM_MODE_ATOMIC_NONBLOCK = @as(c_int, 0x0200);
pub const DRM_MODE_ATOMIC_ALLOW_MODESET = @as(c_int, 0x0400);
pub const DRM_MODE_ATOMIC_FLAGS = (((DRM_MODE_PAGE_FLIP_EVENT | DRM_MODE_PAGE_FLIP_ASYNC) | DRM_MODE_ATOMIC_TEST_ONLY) | DRM_MODE_ATOMIC_NONBLOCK) | DRM_MODE_ATOMIC_ALLOW_MODESET;
pub const FORMAT_BLOB_CURRENT = @as(c_int, 1);
pub const DRM_IOCTL_BASE = 'd';
pub inline fn DRM_IO(nr: anytype) @TypeOf(_IO(DRM_IOCTL_BASE, nr)) {
    _ = &nr;
    return _IO(DRM_IOCTL_BASE, nr);
}
pub inline fn DRM_IOR(nr: anytype, @"type": anytype) @TypeOf(_IOR(DRM_IOCTL_BASE, nr, @"type")) {
    _ = &nr;
    _ = &@"type";
    return _IOR(DRM_IOCTL_BASE, nr, @"type");
}
pub inline fn DRM_IOW(nr: anytype, @"type": anytype) @TypeOf(_IOW(DRM_IOCTL_BASE, nr, @"type")) {
    _ = &nr;
    _ = &@"type";
    return _IOW(DRM_IOCTL_BASE, nr, @"type");
}
pub inline fn DRM_IOWR(nr: anytype, @"type": anytype) @TypeOf(_IOWR(DRM_IOCTL_BASE, nr, @"type")) {
    _ = &nr;
    _ = &@"type";
    return _IOWR(DRM_IOCTL_BASE, nr, @"type");
}
pub const DRM_IOCTL_VERSION = DRM_IOWR(@as(c_int, 0x00), struct_drm_version);
pub const DRM_IOCTL_GET_UNIQUE = DRM_IOWR(@as(c_int, 0x01), struct_drm_unique);
pub const DRM_IOCTL_GET_MAGIC = DRM_IOR(@as(c_int, 0x02), struct_drm_auth);
pub const DRM_IOCTL_IRQ_BUSID = DRM_IOWR(@as(c_int, 0x03), struct_drm_irq_busid);
pub const DRM_IOCTL_GET_MAP = DRM_IOWR(@as(c_int, 0x04), struct_drm_map);
pub const DRM_IOCTL_GET_CLIENT = DRM_IOWR(@as(c_int, 0x05), struct_drm_client);
pub const DRM_IOCTL_GET_STATS = DRM_IOR(@as(c_int, 0x06), struct_drm_stats);
pub const DRM_IOCTL_SET_VERSION = DRM_IOWR(@as(c_int, 0x07), struct_drm_set_version);
pub const DRM_IOCTL_MODESET_CTL = DRM_IOW(@as(c_int, 0x08), struct_drm_modeset_ctl);
pub const DRM_IOCTL_GEM_CLOSE = DRM_IOW(@as(c_int, 0x09), struct_drm_gem_close);
pub const DRM_IOCTL_GEM_FLINK = DRM_IOWR(@as(c_int, 0x0a), struct_drm_gem_flink);
pub const DRM_IOCTL_GEM_OPEN = DRM_IOWR(@as(c_int, 0x0b), struct_drm_gem_open);
pub const DRM_IOCTL_GET_CAP = DRM_IOWR(@as(c_int, 0x0c), struct_drm_get_cap);
pub const DRM_IOCTL_SET_CLIENT_CAP = DRM_IOW(@as(c_int, 0x0d), struct_drm_set_client_cap);
pub const DRM_IOCTL_SET_UNIQUE = DRM_IOW(@as(c_int, 0x10), struct_drm_unique);
pub const DRM_IOCTL_AUTH_MAGIC = DRM_IOW(@as(c_int, 0x11), struct_drm_auth);
pub const DRM_IOCTL_BLOCK = DRM_IOWR(@as(c_int, 0x12), struct_drm_block);
pub const DRM_IOCTL_UNBLOCK = DRM_IOWR(@as(c_int, 0x13), struct_drm_block);
pub const DRM_IOCTL_CONTROL = DRM_IOW(@as(c_int, 0x14), struct_drm_control);
pub const DRM_IOCTL_ADD_MAP = DRM_IOWR(@as(c_int, 0x15), struct_drm_map);
pub const DRM_IOCTL_ADD_BUFS = DRM_IOWR(@as(c_int, 0x16), struct_drm_buf_desc);
pub const DRM_IOCTL_MARK_BUFS = DRM_IOW(@as(c_int, 0x17), struct_drm_buf_desc);
pub const DRM_IOCTL_INFO_BUFS = DRM_IOWR(@as(c_int, 0x18), struct_drm_buf_info);
pub const DRM_IOCTL_MAP_BUFS = DRM_IOWR(@as(c_int, 0x19), struct_drm_buf_map);
pub const DRM_IOCTL_FREE_BUFS = DRM_IOW(@as(c_int, 0x1a), struct_drm_buf_free);
pub const DRM_IOCTL_RM_MAP = DRM_IOW(@as(c_int, 0x1b), struct_drm_map);
pub const DRM_IOCTL_SET_SAREA_CTX = DRM_IOW(@as(c_int, 0x1c), struct_drm_ctx_priv_map);
pub const DRM_IOCTL_GET_SAREA_CTX = DRM_IOWR(@as(c_int, 0x1d), struct_drm_ctx_priv_map);
pub const DRM_IOCTL_SET_MASTER = DRM_IO(@as(c_int, 0x1e));
pub const DRM_IOCTL_DROP_MASTER = DRM_IO(@as(c_int, 0x1f));
pub const DRM_IOCTL_ADD_CTX = DRM_IOWR(@as(c_int, 0x20), struct_drm_ctx);
pub const DRM_IOCTL_RM_CTX = DRM_IOWR(@as(c_int, 0x21), struct_drm_ctx);
pub const DRM_IOCTL_MOD_CTX = DRM_IOW(@as(c_int, 0x22), struct_drm_ctx);
pub const DRM_IOCTL_GET_CTX = DRM_IOWR(@as(c_int, 0x23), struct_drm_ctx);
pub const DRM_IOCTL_SWITCH_CTX = DRM_IOW(@as(c_int, 0x24), struct_drm_ctx);
pub const DRM_IOCTL_NEW_CTX = DRM_IOW(@as(c_int, 0x25), struct_drm_ctx);
pub const DRM_IOCTL_RES_CTX = DRM_IOWR(@as(c_int, 0x26), struct_drm_ctx_res);
pub const DRM_IOCTL_ADD_DRAW = DRM_IOWR(@as(c_int, 0x27), struct_drm_draw);
pub const DRM_IOCTL_RM_DRAW = DRM_IOWR(@as(c_int, 0x28), struct_drm_draw);
pub const DRM_IOCTL_DMA = DRM_IOWR(@as(c_int, 0x29), struct_drm_dma);
pub const DRM_IOCTL_LOCK = DRM_IOW(@as(c_int, 0x2a), struct_drm_lock);
pub const DRM_IOCTL_UNLOCK = DRM_IOW(@as(c_int, 0x2b), struct_drm_lock);
pub const DRM_IOCTL_FINISH = DRM_IOW(@as(c_int, 0x2c), struct_drm_lock);
pub const DRM_IOCTL_PRIME_HANDLE_TO_FD = DRM_IOWR(@as(c_int, 0x2d), struct_drm_prime_handle);
pub const DRM_IOCTL_PRIME_FD_TO_HANDLE = DRM_IOWR(@as(c_int, 0x2e), struct_drm_prime_handle);
pub const DRM_IOCTL_AGP_ACQUIRE = DRM_IO(@as(c_int, 0x30));
pub const DRM_IOCTL_AGP_RELEASE = DRM_IO(@as(c_int, 0x31));
pub const DRM_IOCTL_AGP_ENABLE = DRM_IOW(@as(c_int, 0x32), struct_drm_agp_mode);
pub const DRM_IOCTL_AGP_INFO = DRM_IOR(@as(c_int, 0x33), struct_drm_agp_info);
pub const DRM_IOCTL_AGP_ALLOC = DRM_IOWR(@as(c_int, 0x34), struct_drm_agp_buffer);
pub const DRM_IOCTL_AGP_FREE = DRM_IOW(@as(c_int, 0x35), struct_drm_agp_buffer);
pub const DRM_IOCTL_AGP_BIND = DRM_IOW(@as(c_int, 0x36), struct_drm_agp_binding);
pub const DRM_IOCTL_AGP_UNBIND = DRM_IOW(@as(c_int, 0x37), struct_drm_agp_binding);
pub const DRM_IOCTL_SG_ALLOC = DRM_IOWR(@as(c_int, 0x38), struct_drm_scatter_gather);
pub const DRM_IOCTL_SG_FREE = DRM_IOW(@as(c_int, 0x39), struct_drm_scatter_gather);
pub const DRM_IOCTL_WAIT_VBLANK = DRM_IOWR(@as(c_int, 0x3a), union_drm_wait_vblank);
pub const DRM_IOCTL_CRTC_GET_SEQUENCE = DRM_IOWR(@as(c_int, 0x3b), struct_drm_crtc_get_sequence);
pub const DRM_IOCTL_CRTC_QUEUE_SEQUENCE = DRM_IOWR(@as(c_int, 0x3c), struct_drm_crtc_queue_sequence);
pub const DRM_IOCTL_UPDATE_DRAW = DRM_IOW(@as(c_int, 0x3f), struct_drm_update_draw);
pub const DRM_IOCTL_MODE_GETRESOURCES = DRM_IOWR(@as(c_int, 0xA0), struct_drm_mode_card_res);
pub const DRM_IOCTL_MODE_GETCRTC = DRM_IOWR(@as(c_int, 0xA1), struct_drm_mode_crtc);
pub const DRM_IOCTL_MODE_SETCRTC = DRM_IOWR(@as(c_int, 0xA2), struct_drm_mode_crtc);
pub const DRM_IOCTL_MODE_CURSOR = DRM_IOWR(@as(c_int, 0xA3), struct_drm_mode_cursor);
pub const DRM_IOCTL_MODE_GETGAMMA = DRM_IOWR(@as(c_int, 0xA4), struct_drm_mode_crtc_lut);
pub const DRM_IOCTL_MODE_SETGAMMA = DRM_IOWR(@as(c_int, 0xA5), struct_drm_mode_crtc_lut);
pub const DRM_IOCTL_MODE_GETENCODER = DRM_IOWR(@as(c_int, 0xA6), struct_drm_mode_get_encoder);
pub const DRM_IOCTL_MODE_GETCONNECTOR = DRM_IOWR(@as(c_int, 0xA7), struct_drm_mode_get_connector);
pub const DRM_IOCTL_MODE_ATTACHMODE = DRM_IOWR(@as(c_int, 0xA8), struct_drm_mode_mode_cmd);
pub const DRM_IOCTL_MODE_DETACHMODE = DRM_IOWR(@as(c_int, 0xA9), struct_drm_mode_mode_cmd);
pub const DRM_IOCTL_MODE_GETPROPERTY = DRM_IOWR(@as(c_int, 0xAA), struct_drm_mode_get_property);
pub const DRM_IOCTL_MODE_SETPROPERTY = DRM_IOWR(@as(c_int, 0xAB), struct_drm_mode_connector_set_property);
pub const DRM_IOCTL_MODE_GETPROPBLOB = DRM_IOWR(@as(c_int, 0xAC), struct_drm_mode_get_blob);
pub const DRM_IOCTL_MODE_GETFB = DRM_IOWR(@as(c_int, 0xAD), struct_drm_mode_fb_cmd);
pub const DRM_IOCTL_MODE_ADDFB = DRM_IOWR(@as(c_int, 0xAE), struct_drm_mode_fb_cmd);
pub const DRM_IOCTL_MODE_RMFB = DRM_IOWR(@as(c_int, 0xAF), c_uint);
pub const DRM_IOCTL_MODE_PAGE_FLIP = DRM_IOWR(@as(c_int, 0xB0), struct_drm_mode_crtc_page_flip);
pub const DRM_IOCTL_MODE_DIRTYFB = DRM_IOWR(@as(c_int, 0xB1), struct_drm_mode_fb_dirty_cmd);
pub const DRM_IOCTL_MODE_CREATE_DUMB = DRM_IOWR(@as(c_int, 0xB2), struct_drm_mode_create_dumb);
pub const DRM_IOCTL_MODE_MAP_DUMB = DRM_IOWR(@as(c_int, 0xB3), struct_drm_mode_map_dumb);
pub const DRM_IOCTL_MODE_DESTROY_DUMB = DRM_IOWR(@as(c_int, 0xB4), struct_drm_mode_destroy_dumb);
pub const DRM_IOCTL_MODE_GETPLANERESOURCES = DRM_IOWR(@as(c_int, 0xB5), struct_drm_mode_get_plane_res);
pub const DRM_IOCTL_MODE_GETPLANE = DRM_IOWR(@as(c_int, 0xB6), struct_drm_mode_get_plane);
pub const DRM_IOCTL_MODE_SETPLANE = DRM_IOWR(@as(c_int, 0xB7), struct_drm_mode_set_plane);
pub const DRM_IOCTL_MODE_ADDFB2 = DRM_IOWR(@as(c_int, 0xB8), struct_drm_mode_fb_cmd2);
pub const DRM_IOCTL_MODE_OBJ_GETPROPERTIES = DRM_IOWR(@as(c_int, 0xB9), struct_drm_mode_obj_get_properties);
pub const DRM_IOCTL_MODE_OBJ_SETPROPERTY = DRM_IOWR(@as(c_int, 0xBA), struct_drm_mode_obj_set_property);
pub const DRM_IOCTL_MODE_CURSOR2 = DRM_IOWR(@as(c_int, 0xBB), struct_drm_mode_cursor2);
pub const DRM_IOCTL_MODE_ATOMIC = DRM_IOWR(@as(c_int, 0xBC), struct_drm_mode_atomic);
pub const DRM_IOCTL_MODE_CREATEPROPBLOB = DRM_IOWR(@as(c_int, 0xBD), struct_drm_mode_create_blob);
pub const DRM_IOCTL_MODE_DESTROYPROPBLOB = DRM_IOWR(@as(c_int, 0xBE), struct_drm_mode_destroy_blob);
pub const DRM_IOCTL_SYNCOBJ_CREATE = DRM_IOWR(@as(c_int, 0xBF), struct_drm_syncobj_create);
pub const DRM_IOCTL_SYNCOBJ_DESTROY = DRM_IOWR(@as(c_int, 0xC0), struct_drm_syncobj_destroy);
pub const DRM_IOCTL_SYNCOBJ_HANDLE_TO_FD = DRM_IOWR(@as(c_int, 0xC1), struct_drm_syncobj_handle);
pub const DRM_IOCTL_SYNCOBJ_FD_TO_HANDLE = DRM_IOWR(@as(c_int, 0xC2), struct_drm_syncobj_handle);
pub const DRM_IOCTL_SYNCOBJ_WAIT = DRM_IOWR(@as(c_int, 0xC3), struct_drm_syncobj_wait);
pub const DRM_IOCTL_SYNCOBJ_RESET = DRM_IOWR(@as(c_int, 0xC4), struct_drm_syncobj_array);
pub const DRM_IOCTL_SYNCOBJ_SIGNAL = DRM_IOWR(@as(c_int, 0xC5), struct_drm_syncobj_array);
pub const DRM_IOCTL_MODE_CREATE_LEASE = DRM_IOWR(@as(c_int, 0xC6), struct_drm_mode_create_lease);
pub const DRM_IOCTL_MODE_LIST_LESSEES = DRM_IOWR(@as(c_int, 0xC7), struct_drm_mode_list_lessees);
pub const DRM_IOCTL_MODE_GET_LEASE = DRM_IOWR(@as(c_int, 0xC8), struct_drm_mode_get_lease);
pub const DRM_IOCTL_MODE_REVOKE_LEASE = DRM_IOWR(@as(c_int, 0xC9), struct_drm_mode_revoke_lease);
pub const DRM_IOCTL_SYNCOBJ_TIMELINE_WAIT = DRM_IOWR(@as(c_int, 0xCA), struct_drm_syncobj_timeline_wait);
pub const DRM_IOCTL_SYNCOBJ_QUERY = DRM_IOWR(@as(c_int, 0xCB), struct_drm_syncobj_timeline_array);
pub const DRM_IOCTL_SYNCOBJ_TRANSFER = DRM_IOWR(@as(c_int, 0xCC), struct_drm_syncobj_transfer);
pub const DRM_IOCTL_SYNCOBJ_TIMELINE_SIGNAL = DRM_IOWR(@as(c_int, 0xCD), struct_drm_syncobj_timeline_array);
pub const DRM_IOCTL_MODE_GETFB2 = DRM_IOWR(@as(c_int, 0xCE), struct_drm_mode_fb_cmd2);
pub const DRM_IOCTL_SYNCOBJ_EVENTFD = DRM_IOWR(@as(c_int, 0xCF), struct_drm_syncobj_eventfd);
pub const DRM_IOCTL_MODE_CLOSEFB = DRM_IOWR(@as(c_int, 0xD0), struct_drm_mode_closefb);
pub const DRM_IOCTL_SET_CLIENT_NAME = DRM_IOWR(@as(c_int, 0xD1), struct_drm_set_client_name);
pub const DRM_IOCTL_GEM_CHANGE_HANDLE = DRM_IOWR(@as(c_int, 0xD2), struct_drm_gem_change_handle);
pub const DRM_COMMAND_BASE = @as(c_int, 0x40);
pub const DRM_COMMAND_END = @as(c_int, 0xA0);
pub const DRM_EVENT_VBLANK = @as(c_int, 0x01);
pub const DRM_EVENT_FLIP_COMPLETE = @as(c_int, 0x02);
pub const DRM_EVENT_CRTC_SEQUENCE = @as(c_int, 0x03);
pub const DRM_MAX_MINOR = @as(c_int, 64);
pub inline fn DRM_IOCTL_NR(n: anytype) @TypeOf(_IOC_NR(n)) {
    _ = &n;
    return _IOC_NR(n);
}
pub const DRM_IOC_VOID = _IOC_NONE;
pub const DRM_IOC_READ = _IOC_READ;
pub const DRM_IOC_WRITE = _IOC_WRITE;
pub const DRM_IOC_READWRITE = _IOC_READ | _IOC_WRITE;
pub inline fn DRM_IOC(dir: anytype, group: anytype, nr: anytype, size: anytype) @TypeOf(_IOC(dir, group, nr, size)) {
    _ = &dir;
    _ = &group;
    _ = &nr;
    _ = &size;
    return _IOC(dir, group, nr, size);
}
pub const DRM_DEV_UID = @as(c_int, 0);
pub const DRM_DEV_GID = @as(c_int, 0);
pub const DRM_DEV_DIRMODE = @compileError("unable to translate macro: undefined identifier `S_IRUSR`");
// /usr/include/xf86drm.h:75:9
pub const DRM_DEV_MODE = @compileError("unable to translate macro: undefined identifier `S_IRUSR`");
// /usr/include/xf86drm.h:77:9
pub const DRM_DIR_NAME = "/dev/dri";
pub const DRM_PRIMARY_MINOR_NAME = "card";
pub const DRM_CONTROL_MINOR_NAME = "controlD";
pub const DRM_RENDER_MINOR_NAME = "renderD";
pub const DRM_PROC_NAME = "/proc/dri/";
pub const DRM_DEV_NAME = "%s/" ++ DRM_PRIMARY_MINOR_NAME ++ "%d";
pub const DRM_CONTROL_DEV_NAME = "%s/" ++ DRM_CONTROL_MINOR_NAME ++ "%d";
pub const DRM_RENDER_DEV_NAME = "%s/" ++ DRM_RENDER_MINOR_NAME ++ "%d";
pub const DRM_NODE_NAME_MAX = @compileError("unable to translate macro: undefined identifier `MAX3`");
// /usr/include/xf86drm.h:96:9
pub const DRM_ERR_NO_DEVICE = -@as(c_int, 1001);
pub const DRM_ERR_NO_ACCESS = -@as(c_int, 1002);
pub const DRM_ERR_NOT_ROOT = -@as(c_int, 1003);
pub const DRM_ERR_INVALID = -@as(c_int, 1004);
pub const DRM_ERR_NO_FD = -@as(c_int, 1005);
pub const DRM_AGP_NO_HANDLE = @as(c_int, 0);
pub const DRM_PRINTFLIKE = @compileError("unable to translate macro: undefined identifier `format`");
// /usr/include/xf86drm.h:116:9
pub const DRM_VBLANK_HIGH_CRTC_SHIFT = @as(c_int, 1);
pub const __drm_dummy_lock = @compileError("unable to translate C expr: unexpected token '__volatile__'");
// /usr/include/xf86drm.h:364:9
pub const DRM_LOCK_HELD = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x80000000, .hex);
pub const DRM_LOCK_CONT = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x40000000, .hex);
pub const DRM_CAS = @compileError("unable to translate macro: undefined identifier `__dummy`");
// /usr/include/xf86drm.h:372:9
pub inline fn DRM_CAS_RESULT(_result: anytype) @TypeOf(u8 ++ _result) {
    _ = &_result;
    return u8 ++ _result;
}
pub const DRM_LIGHT_LOCK = @compileError("unable to translate macro: undefined identifier `__ret`");
// /usr/include/xf86drm.h:522:9
pub const DRM_LIGHT_LOCK_COUNT = @compileError("unable to translate macro: undefined identifier `__ret`");
// /usr/include/xf86drm.h:531:9
pub const DRM_LOCK = @compileError("unable to translate C expr: unexpected token 'do'");
// /usr/include/xf86drm.h:539:9
pub const DRM_UNLOCK = @compileError("unable to translate macro: undefined identifier `__ret`");
// /usr/include/xf86drm.h:545:9
pub const DRM_SPINLOCK = @compileError("unable to translate macro: undefined identifier `__ret`");
// /usr/include/xf86drm.h:553:9
pub const DRM_SPINLOCK_TAKE = @compileError("unable to translate macro: undefined identifier `__ret`");
// /usr/include/xf86drm.h:562:9
pub const DRM_SPINLOCK_COUNT = @compileError("unable to translate macro: undefined identifier `__i`");
// /usr/include/xf86drm.h:572:9
pub const DRM_SPINUNLOCK = @compileError("unable to translate macro: undefined identifier `__ret`");
// /usr/include/xf86drm.h:582:9
pub const DRM_NODE_PRIMARY = @as(c_int, 0);
pub const DRM_NODE_CONTROL = @as(c_int, 1);
pub const DRM_NODE_RENDER = @as(c_int, 2);
pub const DRM_NODE_MAX = @as(c_int, 3);
pub const DRM_EVENT_CONTEXT_VERSION = @as(c_int, 4);
pub const DRM_BUS_PCI = @as(c_int, 0);
pub const DRM_BUS_USB = @as(c_int, 1);
pub const DRM_BUS_PLATFORM = @as(c_int, 2);
pub const DRM_BUS_HOST1X = @as(c_int, 3);
pub const DRM_BUS_FAUX = @as(c_int, 4);
pub const DRM_PLATFORM_DEVICE_NAME_LEN = @as(c_int, 512);
pub const DRM_HOST1X_DEVICE_NAME_LEN = @as(c_int, 512);
pub const DRM_FAUX_DEVICE_NAME_LEN = @as(c_int, 512);
pub const DRM_DEVICE_GET_PCI_REVISION = @as(c_int, 1) << @as(c_int, 0);
pub inline fn fourcc_mod_get_vendor(modifier: anytype) @TypeOf((modifier >> @as(c_int, 56)) & @as(c_int, 0xff)) {
    _ = &modifier;
    return (modifier >> @as(c_int, 56)) & @as(c_int, 0xff);
}
pub const timeval = struct_timeval;
pub const timespec = struct_timespec;
pub const __pthread_internal_list = struct___pthread_internal_list;
pub const __pthread_internal_slist = struct___pthread_internal_slist;
pub const __pthread_mutex_s = struct___pthread_mutex_s;
pub const __pthread_rwlock_arch_t = struct___pthread_rwlock_arch_t;
pub const __pthread_cond_s = struct___pthread_cond_s;
pub const drm_clip_rect = struct_drm_clip_rect;
pub const drm_drawable_info = struct_drm_drawable_info;
pub const drm_tex_region = struct_drm_tex_region;
pub const drm_hw_lock = struct_drm_hw_lock;
pub const drm_version = struct_drm_version;
pub const drm_unique = struct_drm_unique;
pub const drm_list = struct_drm_list;
pub const drm_block = struct_drm_block;
pub const drm_control = struct_drm_control;
pub const drm_map_type = enum_drm_map_type;
pub const drm_map_flags = enum_drm_map_flags;
pub const drm_ctx_priv_map = struct_drm_ctx_priv_map;
pub const drm_map = struct_drm_map;
pub const drm_client = struct_drm_client;
pub const drm_stat_type = enum_drm_stat_type;
pub const drm_stats = struct_drm_stats;
pub const drm_lock_flags = enum_drm_lock_flags;
pub const drm_lock = struct_drm_lock;
pub const drm_dma_flags = enum_drm_dma_flags;
pub const drm_buf_desc = struct_drm_buf_desc;
pub const drm_buf_info = struct_drm_buf_info;
pub const drm_buf_free = struct_drm_buf_free;
pub const drm_buf_pub = struct_drm_buf_pub;
pub const drm_buf_map = struct_drm_buf_map;
pub const drm_dma = struct_drm_dma;
pub const drm_ctx_flags = enum_drm_ctx_flags;
pub const drm_ctx = struct_drm_ctx;
pub const drm_ctx_res = struct_drm_ctx_res;
pub const drm_draw = struct_drm_draw;
pub const drm_update_draw = struct_drm_update_draw;
pub const drm_auth = struct_drm_auth;
pub const drm_irq_busid = struct_drm_irq_busid;
pub const drm_vblank_seq_type = enum_drm_vblank_seq_type;
pub const drm_wait_vblank_request = struct_drm_wait_vblank_request;
pub const drm_wait_vblank_reply = struct_drm_wait_vblank_reply;
pub const drm_wait_vblank = union_drm_wait_vblank;
pub const drm_modeset_ctl = struct_drm_modeset_ctl;
pub const drm_agp_mode = struct_drm_agp_mode;
pub const drm_agp_buffer = struct_drm_agp_buffer;
pub const drm_agp_binding = struct_drm_agp_binding;
pub const drm_agp_info = struct_drm_agp_info;
pub const drm_scatter_gather = struct_drm_scatter_gather;
pub const drm_set_version = struct_drm_set_version;
pub const drm_gem_close = struct_drm_gem_close;
pub const drm_gem_flink = struct_drm_gem_flink;
pub const drm_gem_open = struct_drm_gem_open;
pub const drm_gem_change_handle = struct_drm_gem_change_handle;
pub const drm_get_cap = struct_drm_get_cap;
pub const drm_set_client_cap = struct_drm_set_client_cap;
pub const drm_prime_handle = struct_drm_prime_handle;
pub const drm_syncobj_create = struct_drm_syncobj_create;
pub const drm_syncobj_destroy = struct_drm_syncobj_destroy;
pub const drm_syncobj_handle = struct_drm_syncobj_handle;
pub const drm_syncobj_transfer = struct_drm_syncobj_transfer;
pub const drm_syncobj_wait = struct_drm_syncobj_wait;
pub const drm_syncobj_timeline_wait = struct_drm_syncobj_timeline_wait;
pub const drm_syncobj_eventfd = struct_drm_syncobj_eventfd;
pub const drm_syncobj_array = struct_drm_syncobj_array;
pub const drm_syncobj_timeline_array = struct_drm_syncobj_timeline_array;
pub const drm_crtc_get_sequence = struct_drm_crtc_get_sequence;
pub const drm_crtc_queue_sequence = struct_drm_crtc_queue_sequence;
pub const drm_set_client_name = struct_drm_set_client_name;
pub const drm_mode_modeinfo = struct_drm_mode_modeinfo;
pub const drm_mode_card_res = struct_drm_mode_card_res;
pub const drm_mode_crtc = struct_drm_mode_crtc;
pub const drm_mode_set_plane = struct_drm_mode_set_plane;
pub const drm_mode_get_plane = struct_drm_mode_get_plane;
pub const drm_mode_get_plane_res = struct_drm_mode_get_plane_res;
pub const drm_mode_get_encoder = struct_drm_mode_get_encoder;
pub const drm_mode_subconnector = enum_drm_mode_subconnector;
pub const drm_mode_get_connector = struct_drm_mode_get_connector;
pub const drm_mode_property_enum = struct_drm_mode_property_enum;
pub const drm_mode_get_property = struct_drm_mode_get_property;
pub const drm_mode_connector_set_property = struct_drm_mode_connector_set_property;
pub const drm_mode_obj_get_properties = struct_drm_mode_obj_get_properties;
pub const drm_mode_obj_set_property = struct_drm_mode_obj_set_property;
pub const drm_mode_get_blob = struct_drm_mode_get_blob;
pub const drm_mode_fb_cmd = struct_drm_mode_fb_cmd;
pub const drm_mode_fb_cmd2 = struct_drm_mode_fb_cmd2;
pub const drm_mode_fb_dirty_cmd = struct_drm_mode_fb_dirty_cmd;
pub const drm_mode_mode_cmd = struct_drm_mode_mode_cmd;
pub const drm_mode_cursor = struct_drm_mode_cursor;
pub const drm_mode_cursor2 = struct_drm_mode_cursor2;
pub const drm_mode_crtc_lut = struct_drm_mode_crtc_lut;
pub const drm_color_ctm = struct_drm_color_ctm;
pub const drm_color_ctm_3x4 = struct_drm_color_ctm_3x4;
pub const drm_color_lut = struct_drm_color_lut;
pub const drm_color_lut32 = struct_drm_color_lut32;
pub const drm_colorop_type = enum_drm_colorop_type;
pub const drm_colorop_lut3d_interpolation_type = enum_drm_colorop_lut3d_interpolation_type;
pub const drm_colorop_lut1d_interpolation_type = enum_drm_colorop_lut1d_interpolation_type;
pub const drm_plane_size_hint = struct_drm_plane_size_hint;
pub const hdr_metadata_infoframe = struct_hdr_metadata_infoframe;
pub const hdr_output_metadata = struct_hdr_output_metadata;
pub const drm_mode_crtc_page_flip = struct_drm_mode_crtc_page_flip;
pub const drm_mode_crtc_page_flip_target = struct_drm_mode_crtc_page_flip_target;
pub const drm_mode_create_dumb = struct_drm_mode_create_dumb;
pub const drm_mode_map_dumb = struct_drm_mode_map_dumb;
pub const drm_mode_destroy_dumb = struct_drm_mode_destroy_dumb;
pub const drm_mode_atomic = struct_drm_mode_atomic;
pub const drm_format_modifier_blob = struct_drm_format_modifier_blob;
pub const drm_format_modifier = struct_drm_format_modifier;
pub const drm_mode_create_blob = struct_drm_mode_create_blob;
pub const drm_mode_destroy_blob = struct_drm_mode_destroy_blob;
pub const drm_mode_create_lease = struct_drm_mode_create_lease;
pub const drm_mode_list_lessees = struct_drm_mode_list_lessees;
pub const drm_mode_get_lease = struct_drm_mode_get_lease;
pub const drm_mode_revoke_lease = struct_drm_mode_revoke_lease;
pub const drm_mode_rect = struct_drm_mode_rect;
pub const drm_mode_closefb = struct_drm_mode_closefb;
pub const drm_event = struct_drm_event;
pub const drm_event_vblank = struct_drm_event_vblank;
pub const drm_event_crtc_sequence = struct_drm_event_crtc_sequence;
pub const _drmServerInfo = struct__drmServerInfo;
pub const _drmVersion = struct__drmVersion;
pub const _drmStats = struct__drmStats;
pub const _drmBufDesc = struct__drmBufDesc;
pub const _drmBufInfo = struct__drmBufInfo;
pub const _drmBuf = struct__drmBuf;
pub const _drmBufMap = struct__drmBufMap;
pub const _drmLock = struct__drmLock;
pub const _drmDMAReq = struct__drmDMAReq;
pub const _drmRegion = struct__drmRegion;
pub const _drmTextureRegion = struct__drmTextureRegion;
pub const _drmVBlankReq = struct__drmVBlankReq;
pub const _drmVBlankReply = struct__drmVBlankReply;
pub const _drmVBlank = union__drmVBlank;
pub const _drmSetVersion = struct__drmSetVersion;
pub const _drmEventContext = struct__drmEventContext;
pub const _drmPciBusInfo = struct__drmPciBusInfo;
pub const _drmPciDeviceInfo = struct__drmPciDeviceInfo;
pub const _drmUsbBusInfo = struct__drmUsbBusInfo;
pub const _drmUsbDeviceInfo = struct__drmUsbDeviceInfo;
pub const _drmPlatformBusInfo = struct__drmPlatformBusInfo;
pub const _drmPlatformDeviceInfo = struct__drmPlatformDeviceInfo;
pub const _drmHost1xBusInfo = struct__drmHost1xBusInfo;
pub const _drmHost1xDeviceInfo = struct__drmHost1xDeviceInfo;
pub const _drmFauxBusInfo = struct__drmFauxBusInfo;
pub const _drmDevice = struct__drmDevice;
