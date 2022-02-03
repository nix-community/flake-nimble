{
  description = ''monocypher wrapper for Nim'';
  inputs.src-nimmonocypher-master.flake = false;
  inputs.src-nimmonocypher-master.type = "github";
  inputs.src-nimmonocypher-master.owner = "genotrance";
  inputs.src-nimmonocypher-master.repo = "nimmonocypher";
  inputs.src-nimmonocypher-master.ref = "refs/heads/master";
  
  
  inputs."nimgen".url = "path:../../../n/nimgen";
  inputs."nimgen".type = "github";
  inputs."nimgen".owner = "riinr";
  inputs."nimgen".repo = "flake-nimble";
  inputs."nimgen".ref = "flake-pinning";
  inputs."nimgen".dir = "nimpkgs/n/nimgen";

  outputs = { self, nixpkgs, src-nimmonocypher-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimmonocypher-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimmonocypher-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}