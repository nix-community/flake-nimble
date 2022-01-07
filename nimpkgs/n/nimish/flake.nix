{
  description = ''
    C macro for Nim.
  '';
  inputs.src-nimish.url = "https://github.com/xflywind/nimish";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
