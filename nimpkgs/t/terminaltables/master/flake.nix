{
  description = ''terminal tables'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-terminaltables-master.flake = false;
  inputs.src-terminaltables-master.type = "github";
  inputs.src-terminaltables-master.owner = "xmonader";
  inputs.src-terminaltables-master.repo = "nim-terminaltables";
  inputs.src-terminaltables-master.ref = "refs/heads/master";
  inputs.src-terminaltables-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-terminaltables-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-terminaltables-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-terminaltables-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}