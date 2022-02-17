{
  description = ''Nim wrapper for libclipboard'';
  inputs.src-nimclipboard-master.flake = false;
  inputs.src-nimclipboard-master.type = "github";
  inputs.src-nimclipboard-master.owner = "genotrance";
  inputs.src-nimclipboard-master.repo = "nimclipboard";
  inputs.src-nimclipboard-master.ref = "refs/heads/master";
  
  
  inputs."nimgen".type = "github";
  inputs."nimgen".owner = "riinr";
  inputs."nimgen".repo = "flake-nimble";
  inputs."nimgen".ref = "flake-pinning";
  inputs."nimgen".dir = "nimpkgs/n/nimgen";

  outputs = { self, nixpkgs, src-nimclipboard-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimclipboard-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimclipboard-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}