{
  description = ''Text parsing utilities'';
  inputs.src-hparse-v0_2_4.flake = false;
  inputs.src-hparse-v0_2_4.type = "github";
  inputs.src-hparse-v0_2_4.owner = "haxscramper";
  inputs.src-hparse-v0_2_4.repo = "hparse";
  inputs.src-hparse-v0_2_4.ref = "refs/tags/v0.2.4";
  
  
  inputs."regex".url = "path:../../../r/regex";
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  
  inputs."hmisc".url = "path:../../../h/hmisc";
  inputs."hmisc".type = "github";
  inputs."hmisc".owner = "riinr";
  inputs."hmisc".repo = "flake-nimble";
  inputs."hmisc".ref = "flake-pinning";
  inputs."hmisc".dir = "nimpkgs/h/hmisc";

  
  inputs."hasts".url = "path:../../../h/hasts";
  inputs."hasts".type = "github";
  inputs."hasts".owner = "riinr";
  inputs."hasts".repo = "flake-nimble";
  inputs."hasts".ref = "flake-pinning";
  inputs."hasts".dir = "nimpkgs/h/hasts";

  
  inputs."hpprint".url = "path:../../../h/hpprint";
  inputs."hpprint".type = "github";
  inputs."hpprint".owner = "riinr";
  inputs."hpprint".repo = "flake-nimble";
  inputs."hpprint".ref = "flake-pinning";
  inputs."hpprint".dir = "nimpkgs/h/hpprint";

  outputs = { self, nixpkgs, src-hparse-v0_2_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hparse-v0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hparse-v0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}