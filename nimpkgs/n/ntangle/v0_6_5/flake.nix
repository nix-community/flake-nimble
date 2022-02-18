{
  description = ''Command-line utility for Tangling of Org mode documents'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ntangle-v0_6_5.flake = false;
  inputs.src-ntangle-v0_6_5.type = "github";
  inputs.src-ntangle-v0_6_5.owner = "OrgTangle";
  inputs.src-ntangle-v0_6_5.repo = "ntangle";
  inputs.src-ntangle-v0_6_5.ref = "refs/tags/v0.6.5";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, flakeNimbleLib, src-ntangle-v0_6_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ntangle-v0_6_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ntangle-v0_6_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}