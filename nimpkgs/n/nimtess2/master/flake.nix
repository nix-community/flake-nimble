{
  description = ''Nim wrapper for libtess2'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimtess2-master.flake = false;
  inputs.src-nimtess2-master.type = "github";
  inputs.src-nimtess2-master.owner = "genotrance";
  inputs.src-nimtess2-master.repo = "nimtess2";
  inputs.src-nimtess2-master.ref = "refs/heads/master";
  inputs.src-nimtess2-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimgen".type = "github";
  # inputs."nimgen".owner = "riinr";
  # inputs."nimgen".repo = "flake-nimble";
  # inputs."nimgen".ref = "flake-pinning";
  # inputs."nimgen".dir = "nimpkgs/n/nimgen";
  # inputs."nimgen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimgen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimtess2-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimtess2-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimtess2-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}