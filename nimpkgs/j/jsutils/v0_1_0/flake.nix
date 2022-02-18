{
  description = ''Utils to work with javascript'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-jsutils-v0_1_0.flake = false;
  inputs.src-jsutils-v0_1_0.type = "github";
  inputs.src-jsutils-v0_1_0.owner = "kidandcat";
  inputs.src-jsutils-v0_1_0.repo = "jsutils";
  inputs.src-jsutils-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-jsutils-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jsutils-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jsutils-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}