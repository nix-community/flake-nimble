{
  description = ''typeclasses for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-classy-v0_0_3.flake = false;
  inputs.src-classy-v0_0_3.type = "github";
  inputs.src-classy-v0_0_3.owner = "nigredo-tori";
  inputs.src-classy-v0_0_3.repo = "classy";
  inputs.src-classy-v0_0_3.ref = "refs/tags/v0.0.3";
  inputs.src-classy-v0_0_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-classy-v0_0_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-classy-v0_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-classy-v0_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}