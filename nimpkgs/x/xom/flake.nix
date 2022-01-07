{
  description = ''
    Transform XML trees into performant JavaScript DOM calls at compile-time.
  '';
  inputs.src-xom.url = "https://github.com/schneiderfelipe/xom";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
