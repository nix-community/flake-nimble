{
  description = ''High-level nim wrapper for C/C++ parsing'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-hcparse-v0_1_2.flake = false;
  inputs.src-hcparse-v0_1_2.type = "github";
  inputs.src-hcparse-v0_1_2.owner = "haxscramper";
  inputs.src-hcparse-v0_1_2.repo = "hcparse";
  inputs.src-hcparse-v0_1_2.ref = "refs/tags/v0.1.2";
  
  
  inputs."hnimast".type = "github";
  inputs."hnimast".owner = "riinr";
  inputs."hnimast".repo = "flake-nimble";
  inputs."hnimast".ref = "flake-pinning";
  inputs."hnimast".dir = "nimpkgs/h/hnimast";

  
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

  
  inputs."nimtraits".type = "github";
  inputs."nimtraits".owner = "riinr";
  inputs."nimtraits".repo = "flake-nimble";
  inputs."nimtraits".ref = "flake-pinning";
  inputs."nimtraits".dir = "nimpkgs/n/nimtraits";

  outputs = { self, nixpkgs, flakeNimbleLib, src-hcparse-v0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hcparse-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hcparse-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}