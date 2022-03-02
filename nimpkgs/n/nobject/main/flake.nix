{
  description = ''A partially compile and runtime evaluated object, inspired from .net object'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nobject-main.flake = false;
  inputs.src-nobject-main.type = "github";
  inputs.src-nobject-main.owner = "Carpall";
  inputs.src-nobject-main.repo = "nobject";
  inputs.src-nobject-main.ref = "refs/heads/main";
  inputs.src-nobject-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nobject-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nobject-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nobject-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}