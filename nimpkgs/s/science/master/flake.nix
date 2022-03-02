{
  description = ''A library for scientific computations in pure Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-science-master.flake = false;
  inputs.src-science-master.type = "github";
  inputs.src-science-master.owner = "ruivieira";
  inputs.src-science-master.repo = "nim-science";
  inputs.src-science-master.ref = "refs/heads/master";
  inputs.src-science-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-science-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-science-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-science-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}