{
  description = ''
    Brainly data extractor
  '';
  inputs.src-brainlyextractor.url = "https://gitlab.com/lurlo/brainlyextractor";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
