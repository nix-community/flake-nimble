{
  description = ''Nim library for One Time Password verification and generation.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nauthy-master.flake = false;
  inputs.src-nauthy-master.type = "github";
  inputs.src-nauthy-master.owner = "lzoz";
  inputs.src-nauthy-master.repo = "nauthy";
  inputs.src-nauthy-master.ref = "refs/heads/master";
  inputs.src-nauthy-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."nimsha2".type = "github";
  inputs."nimsha2".owner = "riinr";
  inputs."nimsha2".repo = "flake-nimble";
  inputs."nimsha2".ref = "flake-pinning";
  inputs."nimsha2".dir = "nimpkgs/n/nimsha2";
  inputs."nimsha2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsha2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nauthy-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nauthy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nauthy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}