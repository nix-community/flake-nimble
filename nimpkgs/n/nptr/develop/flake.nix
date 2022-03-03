{
  description = ''Nim lang smart pointers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nptr-develop.flake = false;
  inputs.src-nptr-develop.type = "github";
  inputs.src-nptr-develop.owner = "henryas";
  inputs.src-nptr-develop.repo = "nptr";
  inputs.src-nptr-develop.ref = "refs/heads/develop";
  inputs.src-nptr-develop.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nptr-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nptr-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nptr-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}