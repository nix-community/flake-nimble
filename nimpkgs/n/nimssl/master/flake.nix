{
  description = ''OpenSSL wrapper for Nim'';
  inputs.src-nimssl-master.flake = false;
  inputs.src-nimssl-master.type = "github";
  inputs.src-nimssl-master.owner = "genotrance";
  inputs.src-nimssl-master.repo = "nimssl";
  inputs.src-nimssl-master.ref = "refs/heads/master";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-nimssl-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimssl-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimssl-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}