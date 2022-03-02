{
  description = ''Functions for string validation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-validator-master.flake = false;
  inputs.src-validator-master.type = "github";
  inputs.src-validator-master.owner = "Adeohluwa";
  inputs.src-validator-master.repo = "validator";
  inputs.src-validator-master.ref = "refs/heads/master";
  inputs.src-validator-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-validator-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-validator-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-validator-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}