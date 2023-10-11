
// @ts-ignore
import addon from '../build/Release/index.node';

const {
  zingolib_wallet_exists,
  zingolib_initialize_new,
  zingolib_initialize_existing,
  zingolib_initialize_new_from_phrase,
  zingolib_initialize_new_from_ufvk,
  zingolib_deinitialize,
  zingolib_execute_spawn,
  zingolib_execute_async,
} = addon;

export {
  zingolib_wallet_exists,
  zingolib_initialize_new,
  zingolib_initialize_existing,
  zingolib_initialize_new_from_phrase,
  zingolib_initialize_new_from_ufvk,
  zingolib_deinitialize,
  zingolib_execute_spawn,
  zingolib_execute_async,
};
