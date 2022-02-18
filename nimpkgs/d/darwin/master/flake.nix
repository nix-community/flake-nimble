{
  description = ''Bindings to MacOS and iOS frameworks'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-darwin-master.flake = false;
  inputs.src-darwin-master.type = "github";
  inputs.src-darwin-master.owner = "yglukhov";
  inputs.src-darwin-master.repo = "darwin";
  inputs.src-darwin-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-darwin-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-darwin-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-darwin-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}