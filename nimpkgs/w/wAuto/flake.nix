{
  description = ''
    Windows automation module
  '';
  inputs.src-wAuto.url = "https://github.com/khchen/wAuto";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
