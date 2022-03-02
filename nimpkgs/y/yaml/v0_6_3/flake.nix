{
  description = ''YAML 1.2 implementation for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-yaml-v0_6_3.flake = false;
  inputs.src-yaml-v0_6_3.type = "github";
  inputs.src-yaml-v0_6_3.owner = "flyx";
  inputs.src-yaml-v0_6_3.repo = "NimYAML";
  inputs.src-yaml-v0_6_3.ref = "refs/tags/v0.6.3";
  inputs.src-yaml-v0_6_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-yaml-v0_6_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-yaml-v0_6_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-yaml-v0_6_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}