{
  description = ''
    Simple, modern and portable interpreted programming language for efficient scripting
  '';
  inputs.src-arturo.url = "https://github.com/arturo-lang/arturo";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
