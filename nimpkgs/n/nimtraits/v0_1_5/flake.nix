{
  description = ''Trait system for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimtraits-v0_1_5.flake = false;
  inputs.src-nimtraits-v0_1_5.type = "github";
  inputs.src-nimtraits-v0_1_5.owner = "haxscramper";
  inputs.src-nimtraits-v0_1_5.repo = "nimtraits";
  inputs.src-nimtraits-v0_1_5.ref = "refs/tags/v0.1.5";
  inputs.src-nimtraits-v0_1_5.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."hmisc".type = "github";
  # inputs."hmisc".owner = "riinr";
  # inputs."hmisc".repo = "flake-nimble";
  # inputs."hmisc".ref = "flake-pinning";
  # inputs."hmisc".dir = "nimpkgs/h/hmisc";
  # inputs."hmisc".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."hmisc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."hpprint".type = "github";
  # inputs."hpprint".owner = "riinr";
  # inputs."hpprint".repo = "flake-nimble";
  # inputs."hpprint".ref = "flake-pinning";
  # inputs."hpprint".dir = "nimpkgs/h/hpprint";
  # inputs."hpprint".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."hpprint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."hnimast".type = "github";
  # inputs."hnimast".owner = "riinr";
  # inputs."hnimast".repo = "flake-nimble";
  # inputs."hnimast".ref = "flake-pinning";
  # inputs."hnimast".dir = "nimpkgs/h/hnimast";
  # inputs."hnimast".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."hnimast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimtraits-v0_1_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimtraits-v0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimtraits-v0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}