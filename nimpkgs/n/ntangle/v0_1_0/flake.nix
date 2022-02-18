{
  description = ''Command-line utility for Tangling of Org mode documents'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ntangle-v0_1_0.flake = false;
  inputs.src-ntangle-v0_1_0.type = "github";
  inputs.src-ntangle-v0_1_0.owner = "OrgTangle";
  inputs.src-ntangle-v0_1_0.repo = "ntangle";
  inputs.src-ntangle-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ntangle-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ntangle-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ntangle-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}