{
  description = ''Command-line utility for Tangling of Org mode documents'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ntangle-v0_6_4.flake = false;
  inputs.src-ntangle-v0_6_4.type = "github";
  inputs.src-ntangle-v0_6_4.owner = "OrgTangle";
  inputs.src-ntangle-v0_6_4.repo = "ntangle";
  inputs.src-ntangle-v0_6_4.ref = "refs/tags/v0.6.4";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, flakeNimbleLib, src-ntangle-v0_6_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ntangle-v0_6_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ntangle-v0_6_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}