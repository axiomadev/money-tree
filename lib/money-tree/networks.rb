module MoneyTree
  NETWORKS =
    begin
      hsh = Hash.new do |_, key|
        raise "#{key} is not a valid network!"
      end.merge(
        bitcoin: {
          address_version: '00',                # base58Prefixes[PUBKEY_ADDRESS]
          p2sh_version: '05',                   # base58Prefixes[SCRIPT_ADDRESS]
          p2sh_char: '3',                       # List of address prefixes (p2sh_version)
          privkey_version: '80',                # base58Prefixes[SECRET_KEY]
          privkey_compression_flag: '01',
          extended_privkey_version: "0488ade4", # base58Prefixes[EXT_SECRET_KEY]
          extended_pubkey_version: "0488b21e",  # base58Prefixes[EXT_PUBLIC_KEY]
          compressed_wif_chars: %w(K L),        # List of address prefixes (privkey_version, compressed)
          uncompressed_wif_chars: %w(5),        # List of address prefixes (privkey_version, uncompressed)
          protocol_version: 70001
        },
        bitcoin_testnet: {
          address_version: '6f',
          p2sh_version: 'c4',
          p2sh_char: '2',
          privkey_version: 'ef',
          privkey_compression_flag: '01',
          extended_privkey_version: "04358394",
          extended_pubkey_version: "043587cf",
          compressed_wif_chars: %w(c),
          uncompressed_wif_chars: %w(9),
          protocol_version: 70001
        },
        ensocoin_testnet: {
          address_version: '76',
          p2sh_version: 'ed',
          p2sh_char: '2',
          privkey_version: 'c9',
          privkey_compression_flag: '01',
          extended_privkey_version: "04746572",
          extended_pubkey_version: "04746575",
          compressed_wif_chars: %w(c),          # ?
          uncompressed_wif_chars: %w(B C),      # ?
          protocol_version: 80002
        },
        thebestcoin: {
          address_version: '0f',
          p2sh_version: '12',
          p2sh_char: '8',
          privkey_version: '60',
          privkey_compression_flag: '01',
          extended_privkey_version: "05adc3a6",
          extended_pubkey_version: "05adb52c",
          compressed_wif_chars: %w(c),          # ?
          uncompressed_wif_chars: %w(G),
          protocol_version: 70015
        },
        thebestcoin_testnet: {
          address_version: '55',
          p2sh_version: '57',
          p2sh_char: 'c',
          privkey_version: '1a',
          privkey_compression_flag: '01',
          extended_privkey_version: "3f23263a",
          extended_pubkey_version: "3f23253b",
          compressed_wif_chars: %w(c),          # ?
          uncompressed_wif_chars: %w(B),
          protocol_version: 70015
        }
      )
      hsh[:testnet3] = hsh[:bitcoin_testnet]
      hsh
    end
end
