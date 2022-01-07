{
  description = ''
    A small but powerful static site generator powered by HastyScribe and min
  '';
  inputs.src-hastysite.url = "https://github.com/h3rald/hastysite";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
