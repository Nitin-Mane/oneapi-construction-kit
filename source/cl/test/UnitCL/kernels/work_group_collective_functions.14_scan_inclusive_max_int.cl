// Copyright (C) Codeplay Software Limited. All Rights Reserved.
// CL_STD: 3.0
kernel void scan_inclusive_max_int(global int *in, global int *out) {
  const size_t glid = get_global_linear_id();
  out[glid] = work_group_scan_inclusive_max(in[glid]);
}
