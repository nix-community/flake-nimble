{
  description = ''
    curl statistics made simple 
  '';
  inputs.src-httpstat.url = "https://github.com/ucpr/httpstat";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
