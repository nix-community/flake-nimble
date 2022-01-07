{
  description = ''
    Syslog module.
  '';
  inputs.src-syslog.url = "https://github.com/FedericoCeratto/nim-syslog";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
