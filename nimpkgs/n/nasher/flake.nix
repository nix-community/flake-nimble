{
  description = ''
    A build tool for Neverwinter Nights projects
  '';
  inputs.src-nasher.url = "https://github.com/squattingmonk/nasher.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
