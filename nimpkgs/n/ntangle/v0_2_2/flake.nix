{
  description = ''Command-line utility for Tangling of Org mode documents'';
  inputs.src-ntangle-v0_2_2.flake = false;
  inputs.src-ntangle-v0_2_2.type = "github";
  inputs.src-ntangle-v0_2_2.owner = "OrgTangle";
  inputs.src-ntangle-v0_2_2.repo = "ntangle";
  inputs.src-ntangle-v0_2_2.ref = "refs/tags/v0.2.2";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-ntangle-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ntangle-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ntangle-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}