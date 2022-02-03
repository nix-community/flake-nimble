{
  description = ''zbar wrapper for Nim'';
  inputs.src-nimzbar-master.flake = false;
  inputs.src-nimzbar-master.type = "github";
  inputs.src-nimzbar-master.owner = "genotrance";
  inputs.src-nimzbar-master.repo = "nimzbar";
  inputs.src-nimzbar-master.ref = "refs/heads/master";
  
  
  inputs."nimgen".url = "path:../../../n/nimgen";
  inputs."nimgen".type = "github";
  inputs."nimgen".owner = "riinr";
  inputs."nimgen".repo = "flake-nimble";
  inputs."nimgen".ref = "flake-pinning";
  inputs."nimgen".dir = "nimpkgs/n/nimgen";

  outputs = { self, nixpkgs, src-nimzbar-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimzbar-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimzbar-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}