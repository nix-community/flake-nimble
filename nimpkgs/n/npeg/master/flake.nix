{
  description = ''PEG (Parsing Expression Grammars) string matching library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-npeg-master.flake = false;
  inputs.src-npeg-master.type = "github";
  inputs.src-npeg-master.owner = "zevv";
  inputs.src-npeg-master.repo = "npeg";
  inputs.src-npeg-master.ref = "refs/heads/master";
  inputs.src-npeg-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-npeg-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-npeg-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-npeg-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}