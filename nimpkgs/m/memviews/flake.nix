{
  description = ''
    Unsafe in-place slicing
  '';
  inputs.src-memviews.url = "https://github.com/ReneSac/memviews";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
