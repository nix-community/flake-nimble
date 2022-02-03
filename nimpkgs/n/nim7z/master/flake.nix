{
  description = ''7z extraction for Nim'';
  inputs.src-nim7z-master.flake = false;
  inputs.src-nim7z-master.type = "github";
  inputs.src-nim7z-master.owner = "genotrance";
  inputs.src-nim7z-master.repo = "nim7z";
  inputs.src-nim7z-master.ref = "refs/heads/master";
  
  
  inputs."nimgen".url = "path:../../../n/nimgen";
  inputs."nimgen".type = "github";
  inputs."nimgen".owner = "riinr";
  inputs."nimgen".repo = "flake-nimble";
  inputs."nimgen".ref = "flake-pinning";
  inputs."nimgen".dir = "nimpkgs/n/nimgen";

  outputs = { self, nixpkgs, src-nim7z-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nim7z-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nim7z-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}