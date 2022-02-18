{
  description = ''A go routine like nim implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimroutine-develop.flake = false;
  inputs.src-nimroutine-develop.type = "github";
  inputs.src-nimroutine-develop.owner = "rogercloud";
  inputs.src-nimroutine-develop.repo = "nim-routine";
  inputs.src-nimroutine-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimroutine-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimroutine-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimroutine-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}