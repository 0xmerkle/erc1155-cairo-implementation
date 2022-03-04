%lang starknet

from starkware.cairo.common.cairo_builtins import HashBuiltin, SignatureBuiltin
from starkware.starknet.common.syscalls import get_caller_address
from starkware.cairo.common.math import assert_nn_le, assert_not_equal, assert_not_zero, assert_le
from starkware.cairo.common.alloc import alloc

from contracts.token.ERC1155.ERC1155-struct import TokenUri
