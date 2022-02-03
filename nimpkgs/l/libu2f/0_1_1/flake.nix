{
  description = ''A wrapper for libu2f, a library for FIDO/U2F'';
  inputs.src-libu2f-0_1_1.flake = false;
  inputs.src-libu2f-0_1_1.type = "github";
  inputs.src-libu2f-0_1_1.owner = "FedericoCeratto";
  inputs.src-libu2f-0_1_1.repo = "nim-libu2f";
  inputs.src-libu2f-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-libu2f-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libu2f-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libu2f-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}