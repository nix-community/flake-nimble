{
  description = ''A lightweight, self-contained, RESTful, searchable, multi-format NoSQL document store'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-litestore-v1_1_0.flake = false;
  inputs.src-litestore-v1_1_0.type = "github";
  inputs.src-litestore-v1_1_0.owner = "h3rald";
  inputs.src-litestore-v1_1_0.repo = "litestore";
  inputs.src-litestore-v1_1_0.ref = "refs/tags/v1.1.0";
  inputs.src-litestore-v1_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimrod".type = "github";
  # inputs."nimrod".owner = "riinr";
  # inputs."nimrod".repo = "flake-nimble";
  # inputs."nimrod".ref = "flake-pinning";
  # inputs."nimrod".dir = "nimpkgs/n/nimrod";
  # inputs."nimrod".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimrod".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-litestore-v1_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-litestore-v1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-litestore-v1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}