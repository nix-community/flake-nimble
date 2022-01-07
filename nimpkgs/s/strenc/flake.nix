{
  description = ''
    A library to automatically encrypt all string constants in your programs
  '';
  inputs.src-strenc.url = "https://github.com/Yardanico/nim-strenc";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
