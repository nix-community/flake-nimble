{
  description = ''Simple method of obtaining secure random numbers from the OS'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-urand-master.flake = false;
  inputs.src-urand-master.type = "github";
  inputs.src-urand-master.owner = "Matceporial";
  inputs.src-urand-master.repo = "nim-urand";
  inputs.src-urand-master.ref = "refs/heads/master";
  inputs.src-urand-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-urand-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-urand-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-urand-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}