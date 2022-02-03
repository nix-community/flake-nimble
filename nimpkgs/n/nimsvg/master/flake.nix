{
  description = ''Nim-based DSL allowing to generate SVG files and GIF animations.'';
  inputs.src-nimsvg-master.flake = false;
  inputs.src-nimsvg-master.type = "github";
  inputs.src-nimsvg-master.owner = "bluenote10";
  inputs.src-nimsvg-master.repo = "NimSvg";
  inputs.src-nimsvg-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimsvg-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimsvg-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimsvg-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}