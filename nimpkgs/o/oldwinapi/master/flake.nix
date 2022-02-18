{
  description = ''Old Win API library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-oldwinapi-master.flake = false;
  inputs.src-oldwinapi-master.type = "github";
  inputs.src-oldwinapi-master.owner = "nim-lang";
  inputs.src-oldwinapi-master.repo = "oldwinapi";
  inputs.src-oldwinapi-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-oldwinapi-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-oldwinapi-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-oldwinapi-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}