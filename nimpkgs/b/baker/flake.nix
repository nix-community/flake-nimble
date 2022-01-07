{
  description = ''
    Static website generation
  '';
  inputs.src-baker.url = "https://github.com/jasonrbriggs/baker";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
