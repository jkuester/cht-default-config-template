# cht-default-config-template

This repository provides a starting point for developing a CHT application.  It is pre-populated with the default configuration.

## Usage

### Quick start with GitHub Codespaces

#### Deploying

To immediately start developing your CHT application using this template, click the "Use this template" button above, and select "Open in codespace".  This will open a new Codespace populated from this template.

This Codespace will be running a full development environment with everything necessary to build and test you CHT application. 

#### Accessing the CHT test instance

A CHT test instance will be automatically deployed when you start the Codespace. The first time the Codespace is started it will take some time to initialize the CHT instance.

(You can monitor the startup progress by running `docker logs -f cht-cht-upgrade-service-1` in the terminal.)

Once it is running, you can access it via the forwarded port `CHT App (443)`.  To get the forwarding address: 

- Open the "Ports" tab in the Codespace pane by entering _Ctrl+Shift+P_ or _Cmd+Shift+P_ and selecting `Ports: Focus on Ports View`.
- Right-click on the `CHT App (443)` row and select "Copy Local Address".
- Paste this link into the address bar of a new browser tab to open your CHT app.

##### User credentials

- Username: `medic`
- Password: `password`

#### Building your configuration

The Codespace comes preloaded with Node and NPM. To build your configuration, open the terminal in the Codespace pane (_Ctrl+Shift+\`_ or _Cmd+Shift+\`_) and run `npm install`.  To execute the automated tests, run `npm test`.

#### Deploying config updates to the CHT test instance

After making updates to your config, you can deploy these changes to your test instance using the preloaded `cht-conf` utility.  To deploy your config, open the terminal in the Codespace pane (_Ctrl+Shift+\`_ or _Cmd+Shift+\`_) and run: 

```shell
cht --accept-self-signed-certs --url=https://medic:password@localhost
```
