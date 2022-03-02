{
  description = ''Nim's Windows API and COM Library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-winim-3_6_0.flake = false;
  inputs.src-winim-3_6_0.type = "github";
  inputs.src-winim-3_6_0.owner = "khchen";
  inputs.src-winim-3_6_0.repo = "winim";
  inputs.src-winim-3_6_0.ref = "refs/tags/3.6.0";
  inputs.src-winim-3_6_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-winim-3_6_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-winim-3_6_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-winim-3_6_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}