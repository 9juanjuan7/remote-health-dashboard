module health_data_contract::mint_nft {

    use sui::object::{Self, UID, id, ID};
    use sui::tx_context::{Self, TxContext};
    use sui::event;
    use sui::transfer;

    public struct MintEvent has copy, drop, store {
        object_id: ID,
        data_hash: vector<u8>,
        cohort: vector<u8>,
        created_at: u64,
        owner: address,
    }

    public struct HealthDataNFT has key, store {
        id: UID,
        data_hash: vector<u8>,
        cohort: vector<u8>,
        created_at: u64,
        owner: address,
    }

    public entry fun mint_data_nft(
        data_hash: vector<u8>,
        cohort: vector<u8>,
        created_at: u64,
        ctx: &mut TxContext
    ) {
        let owner = tx_context::sender(ctx);

        let nft = HealthDataNFT {
            id: object::new(ctx),
            data_hash,
            cohort,
            created_at,
            owner,
        };

        event::emit(MintEvent {
            object_id: id(&nft),
            data_hash,
            cohort,
            created_at,
            owner,
        });

        transfer::transfer(nft, owner);
    }
}
//PackageID: 0x26c6b5ea747d56a1780c10ccf59b6d1a585ff6ca3bd5258f8d2b36e7075e2019
