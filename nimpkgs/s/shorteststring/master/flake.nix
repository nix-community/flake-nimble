{
  description = ''word size strings stored in an integer'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-shorteststring-master.flake = false;
  inputs.src-shorteststring-master.type = "github";
  inputs.src-shorteststring-master.owner = "metagn";
  inputs.src-shorteststring-master.repo = "shorteststring";
  inputs.src-shorteststring-master.ref = "refs/heads/master";
  inputs.src-shorteststring-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-shorteststring-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shorteststring-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-shorteststring-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}