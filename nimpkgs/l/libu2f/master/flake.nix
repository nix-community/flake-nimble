{
  description = ''A wrapper for libu2f, a library for FIDO/U2F'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-libu2f-master.flake = false;
  inputs.src-libu2f-master.type = "github";
  inputs.src-libu2f-master.owner = "FedericoCeratto";
  inputs.src-libu2f-master.repo = "nim-libu2f";
  inputs.src-libu2f-master.ref = "refs/heads/master";
  inputs.src-libu2f-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libu2f-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libu2f-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libu2f-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}