{
  description = ''Utils to work with javascript'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-jsutils-v0_2_3.flake = false;
  inputs.src-jsutils-v0_2_3.type = "github";
  inputs.src-jsutils-v0_2_3.owner = "kidandcat";
  inputs.src-jsutils-v0_2_3.repo = "jsutils";
  inputs.src-jsutils-v0_2_3.ref = "refs/tags/v0.2.3";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-jsutils-v0_2_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jsutils-v0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jsutils-v0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}