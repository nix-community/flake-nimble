{
  description = ''
    The SHIORI DLL interface
  '';
  inputs.src-shioridll.url = "https://github.com/Narazaka/shioridll-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
