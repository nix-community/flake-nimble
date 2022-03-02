{
  description = ''A wrapper for libu2f, a library for FIDO/U2F'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-libu2f-0_1_1.flake = false;
  inputs.src-libu2f-0_1_1.type = "github";
  inputs.src-libu2f-0_1_1.owner = "FedericoCeratto";
  inputs.src-libu2f-0_1_1.repo = "nim-libu2f";
  inputs.src-libu2f-0_1_1.ref = "refs/tags/0.1.1";
  inputs.src-libu2f-0_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libu2f-0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libu2f-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libu2f-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}