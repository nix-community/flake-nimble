{
  description = ''Consistent Overhead Byte Stuffing for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-cobs-master.flake = false;
  inputs.src-cobs-master.type = "github";
  inputs.src-cobs-master.owner = "keyme";
  inputs.src-cobs-master.repo = "nim_cobs";
  inputs.src-cobs-master.ref = "refs/heads/master";
  inputs.src-cobs-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cobs-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cobs-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cobs-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}