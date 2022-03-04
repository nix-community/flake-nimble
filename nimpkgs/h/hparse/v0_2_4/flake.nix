{
  description = ''Text parsing utilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-hparse-v0_2_4.flake = false;
  inputs.src-hparse-v0_2_4.type = "github";
  inputs.src-hparse-v0_2_4.owner = "haxscramper";
  inputs.src-hparse-v0_2_4.repo = "hparse";
  inputs.src-hparse-v0_2_4.ref = "refs/tags/v0.2.4";
  inputs.src-hparse-v0_2_4.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";
  inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."hmisc".type = "github";
  inputs."hmisc".owner = "riinr";
  inputs."hmisc".repo = "flake-nimble";
  inputs."hmisc".ref = "flake-pinning";
  inputs."hmisc".dir = "nimpkgs/h/hmisc";
  inputs."hmisc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."hasts".type = "github";
  inputs."hasts".owner = "riinr";
  inputs."hasts".repo = "flake-nimble";
  inputs."hasts".ref = "flake-pinning";
  inputs."hasts".dir = "nimpkgs/h/hasts";
  inputs."hasts".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hasts".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."hpprint".type = "github";
  inputs."hpprint".owner = "riinr";
  inputs."hpprint".repo = "flake-nimble";
  inputs."hpprint".ref = "flake-pinning";
  inputs."hpprint".dir = "nimpkgs/h/hpprint";
  inputs."hpprint".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-hparse-v0_2_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hparse-v0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hparse-v0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}