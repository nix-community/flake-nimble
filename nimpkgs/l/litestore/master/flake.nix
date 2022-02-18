{
  description = ''A lightweight, self-contained, RESTful, searchable, multi-format NoSQL document store'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-litestore-master.flake = false;
  inputs.src-litestore-master.type = "github";
  inputs.src-litestore-master.owner = "h3rald";
  inputs.src-litestore-master.repo = "litestore";
  inputs.src-litestore-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-litestore-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-litestore-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-litestore-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}