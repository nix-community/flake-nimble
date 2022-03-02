{
  description = ''Bindings to the Keystone Assembler.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-keystone-master.flake = false;
  inputs.src-keystone-master.type = "github";
  inputs.src-keystone-master.owner = "6A";
  inputs.src-keystone-master.repo = "Keystone.nim";
  inputs.src-keystone-master.ref = "refs/heads/master";
  inputs.src-keystone-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-keystone-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-keystone-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-keystone-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}