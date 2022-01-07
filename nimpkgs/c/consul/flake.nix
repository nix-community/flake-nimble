{
  description = ''
    A simple interface to a running Consul agent.
  '';
  inputs.src-consul.url = "https://github.com/makingspace/nim_consul";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
