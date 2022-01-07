{
  description = ''
    Libravatar library for Nim, Gravatar alternative. Libravatar is an open source free federated avatar api & service.
  '';
  inputs.src-libravatar.url = "https://github.com/juancarlospaco/nim-libravatar";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
