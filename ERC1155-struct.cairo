%lang starknet

struct BlockchainNamespace:
    member a : felt
end

# ChainID
struct BlockchainReference:
    member a : felt
end

struct AssetNamespace:
    member a : felt
end

# Contract Address on L1
struct AssetReference:
    member a : felt
end

# ERC1155 returns the same URI for all token types.
# TokenId represented by the substring '{id}' - stored in a felt type
# caller of function must replace the '{id}' substring with actual token type ID
struct TokenId:
    member a : felt
end

# As defined by Chain Agnostics (CAIP-29 and CAIP-19):
# {blockchain_namespace}:{blockchain_reference}/{asset_namespace}:{asset_reference}/{token_id}
# tokenId will be represented by the substring '{id}'
struct TokenUri:
    member blockchain_namespace : BlockchainNamespace
    member blockchain_reference : BlockchainReference
    member asset_namespace : AssetNamespace
    member asset_reference : AssetReference
    member token_id : TokenId
end
