{
  description = ''
    TeaFiles provide fast read/write access to time series data
  '';
  inputs.src-teafiles.url = "git@github.com:andreaferretti/nim-teafiles.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
