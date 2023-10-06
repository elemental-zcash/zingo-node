// @ts-ignore
import native from '../native/index.node';

const {
  zingolib_wallet_exists,
  zingolib_initialize_new,
  zingolib_initialize_existing,
  zingolib_initialize_new_from_phrase,
  zingolib_initialize_new_from_ufvk,
  zingolib_deinitialize,
  zingolib_execute_spawn,
  zingolib_execute_async, // @ts-ignore
} = native;

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
