{
  description = ''
    OwO text convewtew fow Nim
  '';
  inputs.src-owo.url = "https://github.com/lmariscal/owo";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
