{
  description = ''Package for packing and unpacking byte data'';
  inputs.src-binio-master.flake = false;
  inputs.src-binio-master.type = "github";
  inputs.src-binio-master.owner = "Riderfighter";
  inputs.src-binio-master.repo = "binio";
  inputs.src-binio-master.ref = "refs/heads/master";
  
  
  inputs."struct".url = "path:../../../s/struct";
  inputs."struct".type = "github";
  inputs."struct".owner = "riinr";
  inputs."struct".repo = "flake-nimble";
  inputs."struct".ref = "flake-pinning";
  inputs."struct".dir = "nimpkgs/s/struct";

  outputs = { self, nixpkgs, src-binio-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-binio-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-binio-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}