{
  description = ''The Nim toolchain installer.'';
  inputs.src-choosenim-v0_7_5-20201029-edc69bd.flake = false;
  inputs.src-choosenim-v0_7_5-20201029-edc69bd.type = "github";
  inputs.src-choosenim-v0_7_5-20201029-edc69bd.owner = "dom96";
  inputs.src-choosenim-v0_7_5-20201029-edc69bd.repo = "choosenim";
  inputs.src-choosenim-v0_7_5-20201029-edc69bd.ref = "refs/tags/v0.7.5-20201029-edc69bd";
  
  
  inputs."nimble".url = "path:../../../n/nimble";
  inputs."nimble".type = "github";
  inputs."nimble".owner = "riinr";
  inputs."nimble".repo = "flake-nimble";
  inputs."nimble".ref = "flake-pinning";
  inputs."nimble".dir = "nimpkgs/n/nimble";

  
  inputs."nimterop".url = "path:../../../n/nimterop";
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  
  inputs."nimarchive".url = "path:../../../n/nimarchive";
  inputs."nimarchive".type = "github";
  inputs."nimarchive".owner = "riinr";
  inputs."nimarchive".repo = "flake-nimble";
  inputs."nimarchive".ref = "flake-pinning";
  inputs."nimarchive".dir = "nimpkgs/n/nimarchive";

  
  inputs."analytics".url = "path:../../../a/analytics";
  inputs."analytics".type = "github";
  inputs."analytics".owner = "riinr";
  inputs."analytics".repo = "flake-nimble";
  inputs."analytics".ref = "flake-pinning";
  inputs."analytics".dir = "nimpkgs/a/analytics";

  
  inputs."osinfo".url = "path:../../../o/osinfo";
  inputs."osinfo".type = "github";
  inputs."osinfo".owner = "riinr";
  inputs."osinfo".repo = "flake-nimble";
  inputs."osinfo".ref = "flake-pinning";
  inputs."osinfo".dir = "nimpkgs/o/osinfo";

  outputs = { self, nixpkgs, src-choosenim-v0_7_5-20201029-edc69bd, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-choosenim-v0_7_5-20201029-edc69bd;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-choosenim-v0_7_5-20201029-edc69bd"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}