{
  description = ''Trait system for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimtraits-master.flake = false;
  inputs.src-nimtraits-master.type = "github";
  inputs.src-nimtraits-master.owner = "haxscramper";
  inputs.src-nimtraits-master.repo = "nimtraits";
  inputs.src-nimtraits-master.ref = "refs/heads/master";
  inputs.src-nimtraits-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimtraits-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimtraits-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimtraits-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}