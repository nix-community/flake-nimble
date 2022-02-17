{
  description = ''Text parsing utilities'';
  inputs.src-hparse-v0_2_6.flake = false;
  inputs.src-hparse-v0_2_6.type = "github";
  inputs.src-hparse-v0_2_6.owner = "haxscramper";
  inputs.src-hparse-v0_2_6.repo = "hparse";
  inputs.src-hparse-v0_2_6.ref = "refs/tags/v0.2.6";
  
  
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  
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

  outputs = { self, nixpkgs, src-hparse-v0_2_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hparse-v0_2_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hparse-v0_2_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}