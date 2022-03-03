{
  description = ''Wrapper for the DevIL image library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-DevIL-master.flake = false;
  inputs.src-DevIL-master.type = "github";
  inputs.src-DevIL-master.owner = "Varriount";
  inputs.src-DevIL-master.repo = "DevIL";
  inputs.src-DevIL-master.ref = "refs/heads/master";
  inputs.src-DevIL-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-DevIL-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-DevIL-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-DevIL-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}