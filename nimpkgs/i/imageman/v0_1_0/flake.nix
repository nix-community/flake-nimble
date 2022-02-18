{
  description = ''Image manipulation library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-imageman-v0_1_0.flake = false;
  inputs.src-imageman-v0_1_0.type = "github";
  inputs.src-imageman-v0_1_0.owner = "SolitudeSF";
  inputs.src-imageman-v0_1_0.repo = "imageman";
  inputs.src-imageman-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."nimpng".type = "github";
  inputs."nimpng".owner = "riinr";
  inputs."nimpng".repo = "flake-nimble";
  inputs."nimpng".ref = "flake-pinning";
  inputs."nimpng".dir = "nimpkgs/n/nimpng";

  outputs = { self, nixpkgs, flakeNimbleLib, src-imageman-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-imageman-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-imageman-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}