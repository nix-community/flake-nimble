{
  description = ''Text parsing utilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-hparse-master.flake = false;
  inputs.src-hparse-master.type = "github";
  inputs.src-hparse-master.owner = "haxscramper";
  inputs.src-hparse-master.repo = "hparse";
  inputs.src-hparse-master.ref = "refs/heads/master";
  inputs.src-hparse-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."regex".type = "github";
  # inputs."regex".owner = "riinr";
  # inputs."regex".repo = "flake-nimble";
  # inputs."regex".ref = "flake-pinning";
  # inputs."regex".dir = "nimpkgs/r/regex";
  # inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-hparse-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hparse-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hparse-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}