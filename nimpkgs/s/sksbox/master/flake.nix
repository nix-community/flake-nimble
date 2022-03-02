{
  description = ''A native-nim implementaton of the sBOX generic container format.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-sksbox-master.flake = false;
  inputs.src-sksbox-master.type = "github";
  inputs.src-sksbox-master.owner = "Skrylar";
  inputs.src-sksbox-master.repo = "sksbox";
  inputs.src-sksbox-master.ref = "refs/heads/master";
  inputs.src-sksbox-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sksbox-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sksbox-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sksbox-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}