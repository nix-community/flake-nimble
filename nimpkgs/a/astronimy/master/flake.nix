{
  description = ''Astronomical library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-AstroNimy-master.flake = false;
  inputs.src-AstroNimy-master.type = "github";
  inputs.src-AstroNimy-master.owner = "super-massive-black-holes";
  inputs.src-AstroNimy-master.repo = "AstroNimy";
  inputs.src-AstroNimy-master.ref = "refs/heads/master";
  inputs.src-AstroNimy-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-AstroNimy-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-AstroNimy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-AstroNimy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}