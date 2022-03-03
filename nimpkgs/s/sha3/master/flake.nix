{
  description = ''sha3 - cryptographic hash function'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-sha3-master.flake = false;
  inputs.src-sha3-master.type = "github";
  inputs.src-sha3-master.owner = "narimiran";
  inputs.src-sha3-master.repo = "sha3";
  inputs.src-sha3-master.ref = "refs/heads/master";
  inputs.src-sha3-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sha3-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sha3-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sha3-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}