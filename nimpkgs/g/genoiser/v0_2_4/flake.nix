{
  description = ''functions to tracks for genomics data files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-genoiser-v0_2_4.flake = false;
  inputs.src-genoiser-v0_2_4.type = "github";
  inputs.src-genoiser-v0_2_4.owner = "brentp";
  inputs.src-genoiser-v0_2_4.repo = "genoiser";
  inputs.src-genoiser-v0_2_4.ref = "refs/tags/v0.2.4";
  inputs.src-genoiser-v0_2_4.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."hts".type = "github";
  inputs."hts".owner = "riinr";
  inputs."hts".repo = "flake-nimble";
  inputs."hts".ref = "flake-pinning";
  inputs."hts".dir = "nimpkgs/h/hts";
  inputs."hts".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";
  inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."kexpr".type = "github";
  inputs."kexpr".owner = "riinr";
  inputs."kexpr".repo = "flake-nimble";
  inputs."kexpr".ref = "flake-pinning";
  inputs."kexpr".dir = "nimpkgs/k/kexpr";
  inputs."kexpr".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kexpr".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-genoiser-v0_2_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-genoiser-v0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-genoiser-v0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}