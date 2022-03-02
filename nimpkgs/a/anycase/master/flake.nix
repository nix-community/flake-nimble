{
  description = ''Convert strings to any case'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-anycase-master.flake = false;
  inputs.src-anycase-master.type = "github";
  inputs.src-anycase-master.owner = "lamartire";
  inputs.src-anycase-master.repo = "anycase";
  inputs.src-anycase-master.ref = "refs/heads/master";
  inputs.src-anycase-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-anycase-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-anycase-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-anycase-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}