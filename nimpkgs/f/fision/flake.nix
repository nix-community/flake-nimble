{
  description = ''
    important_packages with 0 dependencies and all unittests passing
  '';
  inputs.src-fision.url = "https://github.com/juancarlospaco/fision";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
