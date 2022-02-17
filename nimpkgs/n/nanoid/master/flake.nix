{
  description = ''The Nim implementation of NanoID'';
  inputs.src-nanoid-master.flake = false;
  inputs.src-nanoid-master.type = "github";
  inputs.src-nanoid-master.owner = "icyphox";
  inputs.src-nanoid-master.repo = "nanoid.nim";
  inputs.src-nanoid-master.ref = "refs/heads/master";
  
  
  inputs."random".type = "github";
  inputs."random".owner = "riinr";
  inputs."random".repo = "flake-nimble";
  inputs."random".ref = "flake-pinning";
  inputs."random".dir = "nimpkgs/r/random";

  outputs = { self, nixpkgs, src-nanoid-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nanoid-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nanoid-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}