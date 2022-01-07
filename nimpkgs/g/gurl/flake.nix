{
  description = ''
    A little lib for generating URL with args.
  '';
  inputs.src-gurl.url = "https://github.com/MaxUNof/gurl";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
