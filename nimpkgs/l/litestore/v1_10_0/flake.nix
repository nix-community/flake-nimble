{
  description = ''A lightweight, self-contained, RESTful, searchable, multi-format NoSQL document store'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-litestore-v1_10_0.flake = false;
  inputs.src-litestore-v1_10_0.type = "github";
  inputs.src-litestore-v1_10_0.owner = "h3rald";
  inputs.src-litestore-v1_10_0.repo = "litestore";
  inputs.src-litestore-v1_10_0.ref = "refs/tags/v1.10.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-litestore-v1_10_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-litestore-v1_10_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-litestore-v1_10_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}