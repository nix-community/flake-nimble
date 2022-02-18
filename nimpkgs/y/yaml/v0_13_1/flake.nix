{
  description = ''YAML 1.2 implementation for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-yaml-v0_13_1.flake = false;
  inputs.src-yaml-v0_13_1.type = "github";
  inputs.src-yaml-v0_13_1.owner = "flyx";
  inputs.src-yaml-v0_13_1.repo = "NimYAML";
  inputs.src-yaml-v0_13_1.ref = "refs/tags/v0.13.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-yaml-v0_13_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-yaml-v0_13_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-yaml-v0_13_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}