# Foundry Template BUT minimalistic

[![Github Actions][gha-badge]][gha] [![Foundry][foundry-badge]][foundry] [![License: MIT][license-badge]][license]

A minimalistic Solidity development template powered by Foundry. No bloat, just the essentials.

---

## Quick Start

**Use this template:**
```sh
forge init --template touchmeangel/foundry-template my-project
cd my-project
```

Or click [`Use this template`](https://github.com/touchmeangel/foundry-template/generate) on GitHub.

**First time with Foundry?** → [Installation guide](https://github.com/foundry-rs/foundry#installation)

---

## Stack

- **[Forge](https://github.com/foundry-rs/foundry/blob/master/forge)** - compile, test, fuzz, format, deploy
- **[Forge Std](https://github.com/foundry-rs/forge-std)** - testing utilities & helpers
- **[Solhint](https://github.com/protofire/solhint)** - Solidity linting

---

## Commands

### Development
```sh
forge build          # Compile contracts
forge test           # Run tests
forge test -vvv      # Run tests (verbose)
forge fmt            # Format code
forge clean          # Clean artifacts
```

### Analysis
```sh
forge coverage       # Coverage report
forge test --gas-report  # Gas usage report
```

### Deployment
```sh
forge script script/Deploy.s.sol --broadcast --fork-url http://localhost:8545 --browser
```
*Starts server at localhost:9545 with wallet connection prompt*

📖 [Solidity Scripting Tutorial](https://book.getfoundry.sh/tutorials/solidity-scripting.html) for testnet/mainnet deployment

---

## Configuration Files

Pre-configured sensible defaults:

```text
.editorconfig      # Editor settings
.gitignore         # Git exclusions
.prettierignore    # Prettier exclusions
.prettierrc.yml    # Code formatting
.solhint.json      # Solidity linting
foundry.toml       # Foundry config
remappings.txt     # Dependency mappings
```

---

## Dependencies

Bringing back submodules as not all repos have node_modules up to date and since this repo is minimal we dont need bun here

**Install a dependency:**
```sh
forge install dependency-name
```

**Add remapping** in `remappings.txt`:
```text
dependency-name=lib/dependency-name
```

*Example: OpenZeppelin Contracts comes pre-installed*

---

## Testing

Import `Test` from `forge-std` and inherit in your test contracts:

```solidity
import { Test } from "forge-std/Test.sol";

contract MyTest is Test {
    // vm.* cheatcodes available
    // console.log() for debugging
}
```

📝 See example: [tests/Foo.t.sol](./tests/Foo.t.sol)  
📖 Learn more: [Writing Tests](https://book.getfoundry.sh/forge/writing-tests.html)

---

## CI/CD

GitHub Actions auto-configured:
- Runs on every push/PR to `main`
- Lints & tests your contracts
- Edit workflow: [.github/workflows/ci.yml](./.github/workflows/ci.yml)

---

## Editor Setup

**VSCode users:** Install [Solidity extension](https://marketplace.visualstudio.com/items?itemName=NomicFoundation.hardhat-solidity)

📖 [VSCode integration guide](https://book.getfoundry.sh/config/vscode)

*Template works with any IDE*

---

## Resources

**Learn Foundry:**
- [Foundry Book](https://book.getfoundry.sh)
- [Writing Tests](https://book.getfoundry.sh/forge/writing-tests.html)
- [Cheatcodes Reference](https://book.getfoundry.sh/cheatcodes/)

**Similar Templates:**
- [PaulRBerg/foundry-template](https://github.com/PaulRBerg/foundry-template)
- [foundry-rs/forge-template](https://github.com/foundry-rs/forge-template)
- [abigger87/femplate](https://github.com/abigger87/femplate)
- [cleanunicorn/ethereum-smartcontract-template](https://github.com/cleanunicorn/ethereum-smartcontract-template)
- [FrankieIsLost/forge-template](https://github.com/FrankieIsLost/forge-template)

---

## License

MIT

---

[gha]: https://github.com/touchmeangel/foundry-template/actions
[gha-badge]: https://github.com/touchmeangel/foundry-template/actions/workflows/ci.yml/badge.svg
[foundry]: https://getfoundry.sh/
[foundry-badge]: https://img.shields.io/badge/Built%20with-Foundry-FFDB1C.svg
[license]: https://opensource.org/licenses/MIT
[license-badge]: https://img.shields.io/badge/License-MIT-blue.svg
