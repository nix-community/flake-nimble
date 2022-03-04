{
  description = ''A port of libnx to Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-libnx-0_2_1.flake = false;
  inputs.src-libnx-0_2_1.type = "github";
  inputs.src-libnx-0_2_1.owner = "jyapayne";
  inputs.src-libnx-0_2_1.repo = "nim-libnx";
  inputs.src-libnx-0_2_1.ref = "refs/tags/0.2.1";
  inputs.src-libnx-0_2_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."nimgen".type = "github";
  inputs."nimgen".owner = "riinr";
  inputs."nimgen".repo = "flake-nimble";
  inputs."nimgen".ref = "flake-pinning";
  inputs."nimgen".dir = "nimpkgs/n/nimgen";
  inputs."nimgen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."switch_build".type = "github";
  inputs."switch_build".owner = "riinr";
  inputs."switch_build".repo = "flake-nimble";
  inputs."switch_build".ref = "flake-pinning";
  inputs."switch_build".dir = "nimpkgs/s/switch_build";
  inputs."switch_build".inputs.nixpkgs.follows = "nixpkgs";
  inputs."switch_build".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-libnx-0_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libnx-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libnx-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}