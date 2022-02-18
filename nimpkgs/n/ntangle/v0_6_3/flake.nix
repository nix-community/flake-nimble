{
  description = ''Command-line utility for Tangling of Org mode documents'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ntangle-v0_6_3.flake = false;
  inputs.src-ntangle-v0_6_3.type = "github";
  inputs.src-ntangle-v0_6_3.owner = "OrgTangle";
  inputs.src-ntangle-v0_6_3.repo = "ntangle";
  inputs.src-ntangle-v0_6_3.ref = "refs/tags/v0.6.3";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, flakeNimbleLib, src-ntangle-v0_6_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ntangle-v0_6_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ntangle-v0_6_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}