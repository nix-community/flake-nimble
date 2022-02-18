{
  description = ''typeclasses for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-classy-v0_0_4.flake = false;
  inputs.src-classy-v0_0_4.type = "github";
  inputs.src-classy-v0_0_4.owner = "nigredo-tori";
  inputs.src-classy-v0_0_4.repo = "classy";
  inputs.src-classy-v0_0_4.ref = "refs/tags/v0.0.4";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-classy-v0_0_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-classy-v0_0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-classy-v0_0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}