{
  description = ''Time ago in words in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-ago-master.flake = false;
  inputs.src-ago-master.type = "github";
  inputs.src-ago-master.owner = "daehee";
  inputs.src-ago-master.repo = "ago";
  inputs.src-ago-master.ref = "refs/heads/master";
  inputs.src-ago-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ago-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ago-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ago-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}