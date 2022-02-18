{
  description = ''Bindings and a high-level interface for MongoDB'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-mongo-master.flake = false;
  inputs.src-mongo-master.type = "github";
  inputs.src-mongo-master.owner = "nim-lang";
  inputs.src-mongo-master.repo = "mongo";
  inputs.src-mongo-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mongo-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mongo-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mongo-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}