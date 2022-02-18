{
  description = ''Nim-based DSL allowing to generate SVG files and GIF animations.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimsvg-master.flake = false;
  inputs.src-nimsvg-master.type = "github";
  inputs.src-nimsvg-master.owner = "bluenote10";
  inputs.src-nimsvg-master.repo = "NimSvg";
  inputs.src-nimsvg-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimsvg-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimsvg-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimsvg-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}