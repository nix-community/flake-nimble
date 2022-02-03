{
  description = ''Trait system for nim'';
  inputs.src-nimtraits-v0_1_4.flake = false;
  inputs.src-nimtraits-v0_1_4.type = "github";
  inputs.src-nimtraits-v0_1_4.owner = "haxscramper";
  inputs.src-nimtraits-v0_1_4.repo = "nimtraits";
  inputs.src-nimtraits-v0_1_4.ref = "refs/tags/v0.1.4";
  
  
  inputs."hmisc".url = "path:../../../h/hmisc";
  inputs."hmisc".type = "github";
  inputs."hmisc".owner = "riinr";
  inputs."hmisc".repo = "flake-nimble";
  inputs."hmisc".ref = "flake-pinning";
  inputs."hmisc".dir = "nimpkgs/h/hmisc";

  
  inputs."hpprint".url = "path:../../../h/hpprint";
  inputs."hpprint".type = "github";
  inputs."hpprint".owner = "riinr";
  inputs."hpprint".repo = "flake-nimble";
  inputs."hpprint".ref = "flake-pinning";
  inputs."hpprint".dir = "nimpkgs/h/hpprint";

  
  inputs."hnimast".url = "path:../../../h/hnimast";
  inputs."hnimast".type = "github";
  inputs."hnimast".owner = "riinr";
  inputs."hnimast".repo = "flake-nimble";
  inputs."hnimast".ref = "flake-pinning";
  inputs."hnimast".dir = "nimpkgs/h/hnimast";

  outputs = { self, nixpkgs, src-nimtraits-v0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimtraits-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimtraits-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}