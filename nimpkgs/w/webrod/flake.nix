{
  description = ''
    webrod
  '';
  inputs.src-webrod.url = "https://github.com/j-a-s-d/webrod";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
