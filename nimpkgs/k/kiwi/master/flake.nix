{
  description = ''Cassowary constraint solving'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-kiwi-master.flake = false;
  inputs.src-kiwi-master.type = "github";
  inputs.src-kiwi-master.owner = "yglukhov";
  inputs.src-kiwi-master.repo = "kiwi";
  inputs.src-kiwi-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-kiwi-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-kiwi-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-kiwi-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}