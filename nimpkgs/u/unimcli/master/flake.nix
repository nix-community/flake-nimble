{
  description = ''User-friendly nimcli.'';
  inputs.src-unimcli-master.flake = false;
  inputs.src-unimcli-master.type = "github";
  inputs.src-unimcli-master.owner = "unimorg";
  inputs.src-unimcli-master.repo = "unimcli";
  inputs.src-unimcli-master.ref = "refs/heads/master";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."nimble".type = "github";
  inputs."nimble".owner = "riinr";
  inputs."nimble".repo = "flake-nimble";
  inputs."nimble".ref = "flake-pinning";
  inputs."nimble".dir = "nimpkgs/n/nimble";

  outputs = { self, nixpkgs, src-unimcli-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unimcli-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-unimcli-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}