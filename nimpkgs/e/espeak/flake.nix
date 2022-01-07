{
  description = ''
    Nim Espeak NG wrapper, for super easy Voice and Text-To-Speech
  '';
  inputs.src-espeak.url = "https://github.com/juancarlospaco/nim-espeak";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
