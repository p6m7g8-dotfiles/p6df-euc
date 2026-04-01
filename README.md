# P6's POSIX.2: p6df-euc

## Table of Contents

- [Badges](#badges)
- [Summary](#summary)
- [Contributing](#contributing)
- [Code of Conduct](#code-of-conduct)
- [Usage](#usage)
  - [Functions](#functions)
- [Hierarchy](#hierarchy)
- [Author](#author)

## Badges

[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)

## Summary

TODO: Add a short summary of this module.

## Contributing

- [How to Contribute](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CONTRIBUTING.md>)

## Code of Conduct

- [Code of Conduct](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CODE_OF_CONDUCT.md>)

## Usage

### Functions

#### p6df-euc

##### p6df-euc/init.zsh

- `p6df::modules::euc::deps()`
- `words euc $EUC_HOST = p6df::modules::euc::profile::mod()`

#### svc

##### p6df-euc/lib/svc/chime.sh

- `p6df::modules::euc::chime::accounts::list()`
- `p6df::modules::euc::chime::users::list(account_id)`
  - Args:
    - account_id
- `p6df::modules::euc::role::chime::accounts::list(role_arn, session_name)`
  - Args:
    - role_arn
    - session_name

##### p6df-euc/lib/svc/connect.sh

- `p6df::modules::euc::connect::instances::list()`
- `p6df::modules::euc::connect::queues::list(instance_id)`
  - Args:
    - instance_id
- `p6df::modules::euc::connect::users::list(instance_id)`
  - Args:
    - instance_id
- `p6df::modules::euc::role::connect::instances::list(role_arn, session_name)`
  - Args:
    - role_arn
    - session_name

##### p6df-euc/lib/svc/wickr.sh

- `p6df::modules::euc::role::wickr::networks::list(role_arn, session_name)`
  - Args:
    - role_arn
    - session_name
- `p6df::modules::euc::wickr::networks::list()`

##### p6df-euc/lib/svc/workdocs.sh

- `p6df::modules::euc::role::workdocs::users::list(role_arn, session_name)`
  - Args:
    - role_arn
    - session_name
- `p6df::modules::euc::workdocs::document::versions::list(document_id)`
  - Args:
    - document_id
- `p6df::modules::euc::workdocs::folder::contents::list(folder_id)`
  - Args:
    - folder_id
- `p6df::modules::euc::workdocs::users::list()`

##### p6df-euc/lib/svc/workmail.sh

- `p6df::modules::euc::role::workmail::organizations::list(role_arn, session_name)`
  - Args:
    - role_arn
    - session_name
- `p6df::modules::euc::role::workmail::users::list(role_arn, session_name, organization_id)`
  - Args:
    - role_arn
    - session_name
    - organization_id
- `p6df::modules::euc::workmail::groups::list(organization_id)`
  - Args:
    - organization_id
- `p6df::modules::euc::workmail::organizations::list()`
- `p6df::modules::euc::workmail::resources::list(organization_id)`
  - Args:
    - organization_id
- `p6df::modules::euc::workmail::users::list(organization_id)`
  - Args:
    - organization_id

##### p6df-euc/lib/svc/workspaces.sh

- `p6df::modules::euc::role::workspaces::list(role_arn, session_name)`
  - Args:
    - role_arn
    - session_name
- `p6df::modules::euc::workspaces::bundles::list()`
- `p6df::modules::euc::workspaces::directories::list()`
- `p6df::modules::euc::workspaces::list()`

## Hierarchy

```text
.
├── init.zsh
├── lib
│   └── svc
│       ├── chime.sh
│       ├── connect.sh
│       ├── wickr.sh
│       ├── workdocs.sh
│       ├── workmail.sh
│       └── workspaces.sh
└── README.md

3 directories, 8 files
```

## Author

Philip M. Gollucci <pgollucci@p6m7g8.com>
