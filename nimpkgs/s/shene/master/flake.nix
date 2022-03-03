{
  description = ''Interface for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-shene-master.flake = false;
  inputs.src-shene-master.type = "github";
  inputs.src-shene-master.owner = "xflywind";
  inputs.src-shene-master.repo = "shene";
  inputs.src-shene-master.ref = "refs/heads/master";
  inputs.src-shene-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-shene-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shene-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-shene-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}