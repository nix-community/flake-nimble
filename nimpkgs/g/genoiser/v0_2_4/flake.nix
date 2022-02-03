{
  description = ''functions to tracks for genomics data files'';
  inputs.src-genoiser-v0_2_4.flake = false;
  inputs.src-genoiser-v0_2_4.type = "github";
  inputs.src-genoiser-v0_2_4.owner = "brentp";
  inputs.src-genoiser-v0_2_4.repo = "genoiser";
  inputs.src-genoiser-v0_2_4.ref = "refs/tags/v0.2.4";
  
  
  inputs."hts".url = "path:../../../h/hts";
  inputs."hts".type = "github";
  inputs."hts".owner = "riinr";
  inputs."hts".repo = "flake-nimble";
  inputs."hts".ref = "flake-pinning";
  inputs."hts".dir = "nimpkgs/h/hts";

  
  inputs."docopt".url = "path:../../../d/docopt";
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  
  inputs."kexpr".url = "path:../../../k/kexpr";
  inputs."kexpr".type = "github";
  inputs."kexpr".owner = "riinr";
  inputs."kexpr".repo = "flake-nimble";
  inputs."kexpr".ref = "flake-pinning";
  inputs."kexpr".dir = "nimpkgs/k/kexpr";

  outputs = { self, nixpkgs, src-genoiser-v0_2_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-genoiser-v0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-genoiser-v0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}