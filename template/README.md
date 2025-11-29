# Frontier Node Template

A [FRAME](https://docs.substrate.io/v3/runtime/frame)-based [Substrate](https://substrate.io) template node with the Ethereum RPC support, ready for hacking. This repo packages the Frontier-based Ponpes Chain binary as `ponpes-chain`.

## Generation & Upstream

This template was originally forked from the [Substrate Node Template](https://github.com/substrate-developer-hub/substrate-node-template). You can find more information on features of this template there, and more detailed usage on the [Substrate Developer Hub Tutorials](https://docs.substrate.io/tutorials/v3/) that use this heavily.

## Build & Run

To build the chain, execute the following commands from the project root:

```sh
$ cargo build --release
```

To execute the chain, run:

```sh
$ ./target/release/ponpes-chain --dev
```

The node also supports to use manual seal (to produce block manually through RPC). This is also used by the `ts-tests`:

```sh
$ ./target/release/ponpes-chain --dev --sealing=manual
```

The output shows the following logs:

```sh
2024-03-06 10:39:57 Frontier Node    
2024-03-06 10:39:57 ✌️  version 0.0.0-f301825c59d    
2024-03-06 10:39:57 ❤️  by Parity Technologies <admin@parity.io>, 2021-2024    
2024-03-06 10:39:57 📋 Chain specification: Development    
2024-03-06 10:39:57 🏷  Node name: lacking-carriage-4724    
2024-03-06 10:39:57 👤 Role: AUTHORITY    
2024-03-06 10:39:57 💾 Database: RocksDb at /tmp/substrateLf8j5A/chains/dev/db/full    
2024-03-06 10:39:57 🔨 Initializing Genesis block/state (state: 0x6360…7a03, header-hash: 0x9392…cf75)    
2024-03-06 10:39:57 👴 Loading GRANDPA authority set from genesis on what appears to be first startup.    
2024-03-06 10:39:58 Using default protocol ID "sup" because none is configured in the chain specs    
2024-03-06 10:39:58 🏷  Local node identity is: 12D3KooWMVR2r9mktbshMB1FBVU4Pf8eQrnBChUp6AxQYeokysWy    
2024-03-06 10:39:58 💻 Operating system: linux    
2024-03-06 10:39:58 💻 CPU architecture: x86_64    
2024-03-06 10:39:58 💻 Target environment: gnu    
2024-03-06 10:39:58 💻 CPU: AMD Ryzen 7 5700G with Radeon Graphics    
2024-03-06 10:39:58 💻 CPU cores: 8    
2024-03-06 10:39:58 💻 Memory: 63578MB    
2024-03-06 10:39:58 💻 Kernel: 6.5.0-18-generic    
2024-03-06 10:39:58 💻 Linux distribution: Ubuntu 22.04.4 LTS    
2024-03-06 10:39:58 💻 Virtual machine: no    
2024-03-06 10:39:58 📦 Highest known block at #0    
2024-03-06 10:39:58 〽️ Prometheus exporter started at 127.0.0.1:9615    
2024-03-06 10:39:58 Running JSON-RPC server: addr=0.0.0.0:9944, allowed origins=["*"]    
2024-03-06 10:40:00 🙌 Starting consensus session on top of parent 0x939219b0f84644d7a2862f4544af20d571d80250871f7469f634ec52c122cf75    
2024-03-06 10:40:00 🎁 Prepared block for proposing at 1 (0 ms) [hash: 0x148fc7d360aa7f4ad32992e4a6e5e1a140c98b0d13e8da854becc4741e28e2b8; parent_hash: 0x9392…cf75; extrinsics (2): [0x0f84…abb2, 0x549b…7957]    
2024-03-06 10:40:00 🔖 Pre-sealed block for proposal at 1. Hash now 0x782478b32ea46f5607eef9b902ec7d8fc44ebc9ffa8d7be2534028bf8d0c0fce, previously 0x148fc7d360aa7f4ad32992e4a6e5e1a140c98b0d13e8da854becc4741e28e2b8.    
2024-03-06 10:40:00 ✨ Imported #1 (0x7824…0fce)    
2024-03-06 10:40:03 💤 Idle (0 peers), best: #1 (0x7824…0fce), finalized #0 (0x9392…cf75), ⬇ 0 ⬆ 0    
2024-03-06 10:40:06 🙌 Starting consensus session on top of parent 0x782478b32ea46f5607eef9b902ec7d8fc44ebc9ffa8d7be2534028bf8d0c0fce    
2024-03-06 10:40:06 🎁 Prepared block for proposing at 2 (1 ms) [hash: 0xea2b3b5472272a2fc3ab066b6f228aaeba4e209e28bd108308267eb5494b6d94; parent_hash: 0x7824…0fce; extrinsics (2): [0x4d0c…c9c0, 0x549b…7957]    
2024-03-06 10:40:06 🔖 Pre-sealed block for proposal at 2. Hash now 0x9dde0a816c6a21b7761edc930c7527a07208b55998ed0cf65ddbc0a6c06570b3, previously 0xea2b3b5472272a2fc3ab066b6f228aaeba4e209e28bd108308267eb5494b6d94.    
2024-03-06 10:40:06 ✨ Imported #2 (0x9dde…70b3)    
2024-03-06 10:40:08 💤 Idle (0 peers), best: #2 (0x9dde…70b3), finalized #0 (0x9392…cf75), ⬇ 0 ⬆ 0    
2024-03-06 10:40:09 📪 No longer listening on /ip6/fe80::b483:25ff:fe16:5d02/tcp/30333    
2024-03-06 10:40:12 🙌 Starting consensus session on top of parent 0x9dde0a816c6a21b7761edc930c7527a07208b55998ed0cf65ddbc0a6c06570b3    
2024-03-06 10:40:12 🎁 Prepared block for proposing at 3 (0 ms) [hash: 0x1de6d69e3953bb29284a7d5b664a675920db81df3e8a1d828a8facf9ac3c8a21; parent_hash: 0x9dde…70b3; extrinsics (2): [0x4e6e…6257, 0x549b…7957]    
2024-03-06 10:40:12 🔖 Pre-sealed block for proposal at 3. Hash now 0x96af2e23277b4127396d565eccc3c88857c327cb6d360d3ebe3f689f42667fe5, previously 0x1de6d69e3953bb29284a7d5b664a675920db81df3e8a1d828a8facf9ac3c8a21.    
2024-03-06 10:40:12 ✨ Imported #3 (0x96af…7fe5)    
2024-03-06 10:40:13 💤 Idle (0 peers), best: #3 (0x96af…7fe5), finalized #1 (0x7824…0fce), ⬇ 0 ⬆ 0    
2024-03-06 10:40:18 🙌 Starting consensus session on top of parent 0x96af2e23277b4127396d565eccc3c88857c327cb6d360d3ebe3f689f42667fe5    
2024-03-06 10:40:18 🎁 Prepared block for proposing at 4 (0 ms) [hash: 0x0df414ecaab38bcf28e57b3225d9d665f8b29edc557a6d235918067f1fa91a43; parent_hash: 0x96af…7fe5; extrinsics (2): [0x51a6…7b15, 0x549b…7957]    
2024-03-06 10:40:18 🔖 Pre-sealed block for proposal at 4. Hash now 0xf293992d51d1a6943a2ddc37d465ae56e7783fe4d1c704f724910d423e0195d6, previously 0x0df414ecaab38bcf28e57b3225d9d665f8b29edc557a6d235918067f1fa91a43.    
2024-03-06 10:40:18 ✨ Imported #4 (0xf293…95d6)    
2024-03-06 10:40:18 💤 Idle (0 peers), best: #4 (0xf293…95d6), finalized #1 (0x7824…0fce), ⬇ 0 ⬆ 0    
2024-03-06 10:40:21 📪 No longer listening on /ip6/fe80::6065:e5ff:fe84:2a0/tcp/30333    
2024-03-06 10:40:23 💤 Idle (0 peers), best: #4 (0xf293…95d6), finalized #2 (0x9dde…70b3), ⬇ 0 ⬆ 0 
```

## Usage

The default port for the template node is set to `http://127.0.0.1:9944`. Once the node is operational, you can conduct your own tests, including connecting to Ethereum wallets or interacting with smart contracts. Additionally, there are several predefined accounts with test tokens available for immediate use.

- Alith:
    * Public Address: 0xf24FF3a9CF04c71Dbc94D0b566f7A27B94566cac
    * Private Key: 0x5fb92d6e98884f76de468fa3f6278f8807c48bebc13595d45af5bdc4da702133
- Baltathar:
    * Public Address: 0x3Cd0A705a2DC65e5b1E1205896BaA2be8A07c6e0
    * Private Key: 0x8075991ce870b93a8870eca0c0f91913d12f47948ca0fd25b49c6fa7cdbeee8b
- Charleth:
    * Public Address: 0x798d4Ba9baf0064Ec19eB4F0a1a45785ae9D6DFc
    * Private Key: 0x0b6e18cafb6ed99687ec547bd28139cafdd2bffe70e6b688025de6b445aa5c5b
- Dorothy:
    * Public Address: 0x773539d4Ac0e786233D90A233654ccEE26a613D9
    * Private Key: 0x39539ab1876910bbf3a223d84a29e28f1cb4e2e456503e7e91ed39b2e7223d68
- Ethan:
    * Public Address: 0xFf64d3F6efE2317EE2807d223a0Bdc4c0c49dfDB
    * Private Key: 0x7dce9bc8babb68fec1409be38c8e1a52650206a7ed90ff956ae8a6d15eeaaef4
- Faith:
    * Public Address: 0xC0F0f4ab324C46e55D02D0033343B4Be8A55532d
    * Private Key: 0xb9d2ea9a615f3165812e8d44de0d24da9bbd164b65c4f0573e1ce2c8dbd9c8df

## Production chain spec and deployment

Ponpes Chain is a Frontier-based network; the baked-in production spec uses the Frontier template runtime but carries Ponpes-specific ids.

A baked-in production spec is available under `--chain production` (name `Ponpes Chain`, id `ponpes_chain`, EVM chain id `2000625`). Defaults included in the spec:

- Sudo/root: `0x1b1c5b8396aaea5b4f1a50c0c7824f4f71f3c36d`
- Pre-funded: sudo plus `0x4c7d4515757e7662132ad39abc1a0bb2f5e2c4ca` and `0x9b5a6f19a413f30e7cb35c50a6481d948e57843d`
- Aura/GRANDPA authorities: keys derived from seeds `//AuthorityOne` and `//AuthorityTwo`
- Bootnodes: none baked in; keep `bootNodes: []` in your raw spec and pass peers via `--bootnodes` at runtime.
- Block time: ~3s (runtime `MILLISECS_PER_BLOCK = 3000`, `WEIGHT_MILLISECS_PER_BLOCK = 1000`); rebuild and regenerate specs after this change.

Replace these values with your own keys before going live. Suggested rollout:

1. Build the binary

```sh
cargo build --release
```

2. Generate the raw production spec (use this on every node)

```sh
./target/release/ponpes-chain build-spec --chain production > /tmp/ponpes.json
./target/release/ponpes-chain build-spec --chain /tmp/ponpes.json --raw > /tmp/ponpes-raw.json
```

3. Prepare the sudo authority node
- Insert Aura/GRANDPA keys that correspond to one of the seeded authorities:

```sh
./target/release/ponpes-chain key insert --chain /tmp/ponpes-raw.json --base-path /var/lib/ponpes --scheme Sr25519 --suri "//AuthorityOne" --key-type aura
./target/release/ponpes-chain key insert --chain /tmp/ponpes-raw.json --base-path /var/lib/ponpes --scheme Ed25519 --suri "//AuthorityOne" --key-type gran
```

- Also generate node key with:

```sh
./target/release/ponpes-chain key generate-node-key --base-path /var/lib/ponpes
```

- Start the node as a validator (adjust ports/base-path/node name):

```sh
./target/release/ponpes-chain \
  --chain /tmp/ponpes-raw.json \
  --base-path /var/lib/ponpes \
  --name sudo-validator-1 \
  --validator \
  --rpc-cors all \
  --rpc-methods safe
```

4. Bring up a second authority (use `//AuthorityTwo` keys, different base path and ports). Bring both online until finality is steady.

5. Add an archival RPC node (non-validator) so dapps can query full history:

```sh
./target/release/ponpes-chain \
  --chain /tmp/ponpes-raw.json \
  --base-path /var/lib/ponpes-rpc \
  --name archive-rpc-1 \
  --pruning archive \
  --rpc-cors all \
  --rpc-methods unsafe \
  --unsafe-ws-external \
  --unsafe-rpc-external
```

Keep the raw spec identical across every node. If you change the authority seeds or sudo account, rebuild the raw spec and redeploy each node with the updated file.

### Single validator + archival RPC

If you only want one validator (also sudo + bootnode) and one archival RPC node:

- Generate your validator keys (replace `<name>` with a mnemonic or `//AuthorityOne` style phrase):

```sh
## Aura
./target/release/ponpes-chain key inspect --scheme Sr25519 "<name>"
## Gran
./target/release/ponpes-chain key inspect --scheme Ed25519 "<name>"
```

- Put the resulting public keys (SS58) into the chain spec JSON under `aura.authorities` (Sr25519) and `grandpa.authorities` (Ed25519, with weight `1`), then rebuild the raw spec:

```sh
./target/release/ponpes-chain build-spec --chain /tmp/ponpes.json --raw > /tmp/ponpes-raw.json
```

- Start the validator with the matching keys inserted (sudo account lives here). Make it the bootnode by pinning a `--node-key` and capturing its peer ID:

```sh
./target/release/ponpes-chain \
  --chain /tmp/ponpes-raw.json \
  --base-path /var/lib/frontier \
  --name sudo-validator-1 \
  --node-key <hex-node-key> \
  --validator
```

Note the `/ip4/.../tcp/30333/p2p/<peer-id>` line from logs and add it to `bootNodes` in the JSON so other nodes can connect.

- Start the archival RPC node with `--pruning archive`, without `--validator`, and point it at the validator’s bootnode:

```sh
./target/release/ponpes-chain \
  --chain /tmp/ponpes-raw.json \
  --base-path /var/lib/frontier-rpc \
  --name archive-rpc-1 \
  --pruning archive \
  --bootnodes /ip4/<validator-ip>/tcp/30333/p2p/<peer-id> \
  --rpc-cors all \
  --rpc-methods unsafe \
  --unsafe-ws-external \
  --unsafe-rpc-external
```

### Generating Aura/GRANDPA entries for an existing spec JSON

To populate `aura.authorities` and `grandpa.authorities` manually in a JSON spec (e.g. `ponpes-chain.json`):

1. Generate keys:

```sh
subkey generate --scheme Sr25519 --network substrate   # Aura
subkey generate --scheme Ed25519 --network substrate   # GRANDPA
```

2. Copy the SS58 public keys into the spec:

- `aura.authorities`: array of Sr25519 SS58 strings, e.g. `["5F..."]`
- `grandpa.authorities`: array of `[SS58, weight]`, e.g. `[["5C...", 1]]`

3. Rebuild the raw spec from that JSON and distribute it to every node.

### Build a fresh chain spec (host or Docker)

- Host:

```sh
./target/release/ponpes-chain build-spec --chain production > /tmp/ponpes.json
./target/release/ponpes-chain build-spec --chain /tmp/ponpes.json --raw > /tmp/ponpes-raw.json
```

- Docker:

```sh
docker run --rm -v $PWD/template/docker:/out ponpes-chain:latest \
  build-spec --chain production > /out/ponpes.json
docker run --rm -v $PWD/template/docker:/out ponpes-chain:latest \
  build-spec --chain /out/ponpes.json --raw > /out/ponpes-raw.json
```

Use `ponpes-raw.json` as the chain file for all nodes and for the docker-compose example.

## Dockerized workflow

### Build the image

```sh
docker build -t ponpes-chain:latest .
```

### Prepare inputs

- Put your raw chain spec at `template/docker/ponpes-raw.json` (or update the compose bind path).
- Export the bootnode node key (hex) and peer multiaddr:

```sh
# Generate a node key and peer-id
NODE_KEY=$(openssl rand -hex 32)
docker run --rm ponpes-chain:latest key inspect-node-key --file /tmp/nodekey <<<"$NODE_KEY"
```

Use the derived peer-id to form `/ip4/<host-ip>/tcp/30333/p2p/<peer-id>` and set it in `BOOTNODE_MULTIADDR`.

Insert Aura/GRANDPA keys into the bootnode keystore (mounted data dir) if you are not using `//` seeds:

```sh
docker run --rm -v ./template/docker:/data ponpes-chain:latest \
  key insert --keystore-path /data/keystore --scheme Sr25519 --suri "<aura-suri>" --key-type aura

docker run --rm -v ./template/docker:/data ponpes-chain:latest \
  key insert --keystore-path /data/keystore --scheme Ed25519 --suri "<gran-suri>" --key-type gran
```

### Run with docker-compose

An example compose is available at `template/docker-compose.yml` with two services:

- `bootnode`: sudo + authority + bootnode
- `archive_rpc`: archival RPC-only node

From `template/`, run:

```sh
NODE_KEY_HEX=<32-byte-hex> BOOTNODE_MULTIADDR=/ip4/<host-ip>/tcp/30333/p2p/<peer-id> \
docker compose up
```

Exposed ports:
- Bootnode: p2p `30333`, WS/RPC `9944`
- Archive RPC: p2p `30334`, WS/RPC `9946`

Adjust ports, names, and paths as needed. Always share the same raw spec across containers.
