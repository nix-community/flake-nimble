{
  description = ''Trait system for nim'';
  inputs.src-nimtraits-master.flake = false;
  inputs.src-nimtraits-master.type = "github";
  inputs.src-nimtraits-master.owner = "haxscramper";
  inputs.src-nimtraits-master.repo = "nimtraits";
  inputs.src-nimtraits-master.ref = "refs/heads/master";
  
  
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

  outputs = { self, nixpkgs, src-nimtraits-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimtraits-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimtraits-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}