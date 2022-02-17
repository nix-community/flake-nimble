{
  description = ''Command-line utility for Tangling of Org mode documents'';
  inputs.src-ntangle-v0_3_0.flake = false;
  inputs.src-ntangle-v0_3_0.type = "github";
  inputs.src-ntangle-v0_3_0.owner = "OrgTangle";
  inputs.src-ntangle-v0_3_0.repo = "ntangle";
  inputs.src-ntangle-v0_3_0.ref = "refs/tags/v0.3.0";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-ntangle-v0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ntangle-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ntangle-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}