{
  description = ''Bencode serialization/deserialization library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-bencode-master.flake = false;
  inputs.src-bencode-master.type = "github";
  inputs.src-bencode-master.owner = "FedericoCeratto";
  inputs.src-bencode-master.repo = "nim-bencode";
  inputs.src-bencode-master.ref = "refs/heads/master";
  inputs.src-bencode-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-bencode-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bencode-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bencode-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}