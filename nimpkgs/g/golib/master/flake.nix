{
  description = ''Bindings for golib - a library that (ab)uses gccgo to bring Go's channels and goroutines to the rest of the world'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-golib-master.flake = false;
  inputs.src-golib-master.type = "github";
  inputs.src-golib-master.owner = "stefantalpalaru";
  inputs.src-golib-master.repo = "golib-nim";
  inputs.src-golib-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-golib-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-golib-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-golib-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}