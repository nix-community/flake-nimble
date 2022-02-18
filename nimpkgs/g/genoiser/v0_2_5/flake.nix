{
  description = ''functions to tracks for genomics data files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-genoiser-v0_2_5.flake = false;
  inputs.src-genoiser-v0_2_5.type = "github";
  inputs.src-genoiser-v0_2_5.owner = "brentp";
  inputs.src-genoiser-v0_2_5.repo = "genoiser";
  inputs.src-genoiser-v0_2_5.ref = "refs/tags/v0.2.5";
  
  
  inputs."hts".type = "github";
  inputs."hts".owner = "riinr";
  inputs."hts".repo = "flake-nimble";
  inputs."hts".ref = "flake-pinning";
  inputs."hts".dir = "nimpkgs/h/hts";

  
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  
  inputs."kexpr".type = "github";
  inputs."kexpr".owner = "riinr";
  inputs."kexpr".repo = "flake-nimble";
  inputs."kexpr".ref = "flake-pinning";
  inputs."kexpr".dir = "nimpkgs/k/kexpr";

  outputs = { self, nixpkgs, flakeNimbleLib, src-genoiser-v0_2_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-genoiser-v0_2_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-genoiser-v0_2_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}