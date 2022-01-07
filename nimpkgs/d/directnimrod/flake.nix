{
  description = ''
    Wrapper for microsoft's DirectX libraries
  '';
  inputs.src-directnimrod.url = "https://bitbucket.org/barcharcraz/directnimrod";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
