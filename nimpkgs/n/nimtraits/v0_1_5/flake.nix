{
  description = ''Trait system for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimtraits-v0_1_5.flake = false;
  inputs.src-nimtraits-v0_1_5.type = "github";
  inputs.src-nimtraits-v0_1_5.owner = "haxscramper";
  inputs.src-nimtraits-v0_1_5.repo = "nimtraits";
  inputs.src-nimtraits-v0_1_5.ref = "refs/tags/v0.1.5";
  
  
  inputs."hmisc".type = "github";
  inputs."hmisc".owner = "riinr";
  inputs."hmisc".repo = "flake-nimble";
  inputs."hmisc".ref = "flake-pinning";
  inputs."hmisc".dir = "nimpkgs/h/hmisc";

  
  inputs."hpprint".type = "github";
  inputs."hpprint".owner = "riinr";
  inputs."hpprint".repo = "flake-nimble";
  inputs."hpprint".ref = "flake-pinning";
  inputs."hpprint".dir = "nimpkgs/h/hpprint";

  
  inputs."hnimast".type = "github";
  inputs."hnimast".owner = "riinr";
  inputs."hnimast".repo = "flake-nimble";
  inputs."hnimast".ref = "flake-pinning";
  inputs."hnimast".dir = "nimpkgs/h/hnimast";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimtraits-v0_1_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimtraits-v0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimtraits-v0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}