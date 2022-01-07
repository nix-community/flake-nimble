{
  description = ''
    An efficient library for asynchronous programming
  '';
  inputs.src-chronos.url = "https://github.com/status-im/nim-chronos";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
