{
  description = ''
    A brainfuck interpreter & compiler implemented in nim
  '';
  inputs.src-nimfcuk.url = "https://github.com/2KAbhishek/nimfcuk";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
