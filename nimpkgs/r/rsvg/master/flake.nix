{
  description = ''Wrapper for librsvg, a Scalable Vector Graphics (SVG) rendering library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-rsvg-master.flake = false;
  inputs.src-rsvg-master.type = "github";
  inputs.src-rsvg-master.owner = "def-";
  inputs.src-rsvg-master.repo = "rsvg";
  inputs.src-rsvg-master.ref = "refs/heads/master";
  inputs.src-rsvg-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-rsvg-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rsvg-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rsvg-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}