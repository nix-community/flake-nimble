{
  description = ''
    search algorithms
  '';
  inputs.src-nim_searches.url = "https://github.com/nnahito/nim_searched";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
