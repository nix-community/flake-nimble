{
  description = ''Implementation of the Fletcher checksum algorithm.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-fletcher-master.flake = false;
  inputs.src-fletcher-master.type = "github";
  inputs.src-fletcher-master.owner = "Akito13";
  inputs.src-fletcher-master.repo = "nim-fletcher";
  inputs.src-fletcher-master.ref = "refs/heads/master";
  inputs.src-fletcher-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-fletcher-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fletcher-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fletcher-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}