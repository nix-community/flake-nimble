{
  description = ''SPHINCS⁺ stateless hash-based signature scheme'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-sphincs-master.flake = false;
  inputs.src-sphincs-master.type = "other";
  inputs.src-sphincs-master.owner = "~ehmry";
  inputs.src-sphincs-master.repo = "nim_sphincs";
  inputs.src-sphincs-master.ref = "refs/heads/master";
  inputs.src-sphincs-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sphincs-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sphincs-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sphincs-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}