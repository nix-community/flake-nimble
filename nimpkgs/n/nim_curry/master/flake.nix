{
  description = ''Provides a macro to curry function'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nim_curry-master.flake = false;
  inputs.src-nim_curry-master.type = "github";
  inputs.src-nim_curry-master.owner = "zer0-star";
  inputs.src-nim_curry-master.repo = "nim-curry";
  inputs.src-nim_curry-master.ref = "refs/heads/master";
  inputs.src-nim_curry-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nim_curry-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nim_curry-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nim_curry-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}