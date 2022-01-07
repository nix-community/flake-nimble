{
  description = ''
    Directory listing tool
  '';
  inputs.src-lq.url = "https://github.com/madprops/lq";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
