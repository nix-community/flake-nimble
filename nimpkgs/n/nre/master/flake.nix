{
  description = ''A better regular expression library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nre-master.flake = false;
  inputs.src-nre-master.type = "github";
  inputs.src-nre-master.owner = "flaviut";
  inputs.src-nre-master.repo = "nre";
  inputs.src-nre-master.ref = "refs/heads/master";
  inputs.src-nre-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nre-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nre-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nre-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}