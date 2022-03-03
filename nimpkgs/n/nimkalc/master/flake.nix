{
  description = ''An advanced parsing library for mathematical expressions and equations'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimkalc-master.flake = false;
  inputs.src-nimkalc-master.type = "github";
  inputs.src-nimkalc-master.owner = "nocturn9x";
  inputs.src-nimkalc-master.repo = "nimkalc";
  inputs.src-nimkalc-master.ref = "refs/heads/master";
  inputs.src-nimkalc-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimkalc-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimkalc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimkalc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}