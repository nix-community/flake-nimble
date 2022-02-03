{
  description = ''Nim cryptographic library'';
  inputs.src-nimcrypto-master.flake = false;
  inputs.src-nimcrypto-master.type = "github";
  inputs.src-nimcrypto-master.owner = "cheatfate";
  inputs.src-nimcrypto-master.repo = "nimcrypto";
  inputs.src-nimcrypto-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimcrypto-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcrypto-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimcrypto-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}