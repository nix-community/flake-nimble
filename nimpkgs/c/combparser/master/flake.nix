{
  description = ''A parser combinator library for easy generation of complex parsers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-combparser-master.flake = false;
  inputs.src-combparser-master.type = "github";
  inputs.src-combparser-master.owner = "PMunch";
  inputs.src-combparser-master.repo = "combparser";
  inputs.src-combparser-master.ref = "refs/heads/master";
  inputs.src-combparser-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-combparser-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-combparser-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-combparser-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}