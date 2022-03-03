{
  description = ''A collection of reusable modules and wrappers.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-fowltek-master.flake = false;
  inputs.src-fowltek-master.type = "github";
  inputs.src-fowltek-master.owner = "fowlmouth";
  inputs.src-fowltek-master.repo = "nimlibs";
  inputs.src-fowltek-master.ref = "refs/heads/master";
  inputs.src-fowltek-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-fowltek-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fowltek-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fowltek-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}