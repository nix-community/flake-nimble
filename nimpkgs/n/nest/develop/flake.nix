{
  description = ''RESTful URI router'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nest-develop.flake = false;
  inputs.src-nest-develop.type = "github";
  inputs.src-nest-develop.owner = "kedean";
  inputs.src-nest-develop.repo = "nest";
  inputs.src-nest-develop.ref = "refs/heads/develop";
  inputs.src-nest-develop.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nest-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nest-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nest-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}