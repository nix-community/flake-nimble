{
  description = ''A rudimentary Nim REPL'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nrpl-master.flake = false;
  inputs.src-nrpl-master.type = "github";
  inputs.src-nrpl-master.owner = "vegansk";
  inputs.src-nrpl-master.repo = "nrpl";
  inputs.src-nrpl-master.ref = "refs/heads/master";
  inputs.src-nrpl-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nrpl-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nrpl-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nrpl-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}